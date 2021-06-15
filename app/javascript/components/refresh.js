import Rails from "@rails/ujs"

const refresh = () => {
  
  
  setInterval(function () {
    Rails.ajax({ url: '/feed?ajax=1', type: "get", success: function(data) { 
      let updatedFeed = data.querySelector(".feed").innerHTML;
      const feed = document.querySelector(".feed")
      if (feed) {
        feed.innerHTML = updatedFeed;
      }
      const count = updatedFeed.split("feed-card").length - 1
      const seen = parseInt(document.cookie.split("=")[1])
      const notif = document.getElementById("notif")
      if (count > seen) {
        notif.classList.remove("d-none")
        const total = count - seen
        notif.innerHTML = total
      }
    }});
  }, 5000);
};

export { refresh };