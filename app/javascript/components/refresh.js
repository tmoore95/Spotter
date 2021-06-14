import Rails from "@rails/ujs"

const refresh = () => {
  const feed = document.querySelector(".feed")
  
  if (feed) {
    setInterval(function () {
      Rails.ajax({ url: '/feed', type: "get", success: function(data) { 
        let updatedFeed = data.querySelector(".feed").innerHTML;
        feed.innerHTML = updatedFeed;
      }});
    }, 5000);
  }
};

export { refresh };