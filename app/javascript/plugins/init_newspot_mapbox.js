import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { Modal } from 'bootstrap';

const initNewspotMapbox = () => {
  const mapElement = document.getElementById('spot_map');
//   NEW id

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'spot_map',
      style: 'mapbox://styles/mapbox/streets-v10',
      // ADDED this. THINK IT IS FINE
      center: [1.31222, 51.1275],
      zoom: 3
    });

    // RESIZES THE MAP FOR THE MODAL. IS A BODGE BECAUSE IT IS STUPID BROKEN
    const canvas = document.querySelector(".mapboxgl-canvas")

    if (canvas.style.height == "300px"){
      window.location.reload();
    }
       


    const geocoder = new MapboxGeocoder({
      mapboxgl: mapboxgl,
      accessToken: mapboxgl.accessToken,
      marker: false,
      // LIMITS THE SEARCH TO GB
      countries: 'gb',
      flyTo: {
        speed: 2,
      }
    })

    // SEARCH CONTROL
    map.addControl(geocoder)

    geocoder.on('result', e => {
      const marker = new mapboxgl.Marker({
        draggable: true
      })
      .setLngLat(e.result.center)
      .addTo(map)
      marker.on('dragend', e => {
        const coordinates = e.target._lngLat;
        fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${coordinates.lng},${coordinates.lat}.json?access_token=${mapboxgl.accessToken}`)
        .then(response => response.json())
        .then((data) => {
          const location = data.features[0].place_name;
          document.getElementById("spot_location").value = location;
        }
      )})
    })

    // ZOOM BUTTONS
    map.addControl(new mapboxgl.NavigationControl());

    

  }
}

export { initNewspotMapbox }