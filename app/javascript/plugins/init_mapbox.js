import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const data_center_var = document.getElementById("map").dataset.center

    let full = [];
    let map = {};

    // DATA FROM THE SIMPLE FORM CHECK IF EXISTS
    if (data_center_var != "") {
      full.push(data_center_var.split(",")[0]);
      full.push(data_center_var.split(",")[1]);
    }
    // console.log(full);

    if (full.length === 0){

      // NEED TO REMOVE / CHANGE FIT MAP TO MARKERS!

      if (sessionStorage["location"]){

        map = new mapboxgl.Map({
          container: 'map',
          //OTHER STYLE
          // style: 'mapbox://styles/programming835/ckpz8ljri030918qv3hbxg486',
          style: 'mapbox://styles/mapbox/streets-v10',
          center: [sessionStorage["location"].split(",")[0], sessionStorage["location"].split(",")[1]],
          zoom: 10

        });

        const markers = JSON.parse(mapElement.dataset.markers);



        markers.forEach((marker) => {
          const popup = new mapboxgl.Popup().setHTML(marker.info_window);

          // LAT AND LNG HERE!
          // console.log(marker.lat);
          // console.log(marker.lng);

          // TO CHANGE THE MARKER COLORS
          // new mapboxgl.Marker({ "color": "#7ac5ff" })

          new mapboxgl.Marker()
            .setLngLat([marker.lng, marker.lat])
            .setPopup(popup)
            .addTo(map);
        });


        // THIS IS THE ELSE FOR IF NO LOCAL STORAGE EXISTS
      
      } else {

        map = new mapboxgl.Map({
          container: 'map',
          //OTHER STYLE
          // style: 'mapbox://styles/programming835/ckpz8ljri030918qv3hbxg486',
          style: 'mapbox://styles/mapbox/streets-v10',
        
        });
      

      const markers = JSON.parse(mapElement.dataset.markers);

      

      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);

        // LAT AND LNG HERE!
        // console.log(marker.lat);
        // console.log(marker.lng);

        // TO CHANGE THE MARKER COLORS
        // new mapboxgl.Marker({ "color": "#7ac5ff" })

        new mapboxgl.Marker()
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });


      const fitMapToMarkers = (map, markers) => {
        const bounds = new mapboxgl.LngLatBounds();
        markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
        map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
      };


      fitMapToMarkers(map, markers);

      }



    } else {

      map = new mapboxgl.Map({
        container: 'map',
        //OTHER STYLE
        // style: 'mapbox://styles/programming835/ckpz8ljri030918qv3hbxg486',
        style: 'mapbox://styles/mapbox/streets-v10',


        center: full,
        // ADD A MARKER HERE?
        zoom: 11
      })

      // THIS IS THE MARKER THAT SHOWS AS LOCATION ON FILTER 
      // var marker = new mapboxgl.Marker({
      //   "color": "#4668F2"
      // }) // Initialize a new marker
      //   .setLngLat(full) // Marker [lng, lat] coordinates
      //   .addTo(map); // Add the marker to the map

      const markers = JSON.parse(mapElement.dataset.markers);

      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);

        // TO CHANGE THE MARKER COLORS
        // new mapboxgl.Marker({ "color": "#7ac5ff" })

        new mapboxgl.Marker()
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });

      // CHANGE THIS IF THE ZOOM IS SORTED! GIVE IT AN IF STATEMENT

      // const fitMapToMarkers = (map, markers) => {
      //   const bounds = new mapboxgl.LngLatBounds();
      //   markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
      //   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
      // };

    }

    map.addControl(new mapboxgl.NavigationControl());

    // MAP SEARCH FOR INDEX PAGE
    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl,
      // LIMITS THE SEARCH TO GB
      // countries: 'gb',
      placeholder: 'Find a spot',
      marker: false
      // marker: {
      //   // CAN CHANGE SEARCH COLOR HERE
      //   color: '#fff'
      //   // draggable: true
      // }
    });

    
    geocoder.on('result', e => {
      // console.log(e);
      // get the lat and the long:
      const location = e.result.center;
      sessionStorage["location"] = location;
      // THIS IS THE CENTER FOR THE FILTER FORM
      document.getElementById("hidden-center").value = location;
    })


    const searchBar = document.getElementById('geocoder')
    searchBar.appendChild(geocoder.onAdd(map));

    
  

  map.scrollZoom.disable();

  }
};

export { initMapbox };



