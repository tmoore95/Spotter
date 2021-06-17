import Rails from "@rails/ujs"

const refresh = () => {
  
//   setInterval(function () {
//     Rails.ajax({
//       url: '/feed?ajax=1', type: "get", success: function (data) {
//         let updatedFeed = data.querySelector(".feed").innerHTML;
//         const feed = document.querySelector(".feed")
//         if (feed) {
//           feed.innerHTML = updatedFeed;
//         }
//         const count = updatedFeed.split("feed-card").length - 1
//         const seen = parseInt(document.cookie.split("=")[1])
//         const notif = document.getElementById("notif")
//         console.log(count)
//         console.log(seen)
//         console.log(document.cookie)
//         if (count > seen) {
//           notif.classList.remove("d-none")
//           const total = count - seen
//           notif.innerHTML = total
//         }
//       }
//     });
//   }, 5000);
// };
//    --- WORK IN PROGRESS FOR FOLLOWER NOTIFICATIONS AS WELL ---

  setInterval(function () {
    Rails.ajax({ url: '/feed?ajax=1', type: "get", success: function(data) { 
      let updatedFeed = data.querySelector(".feed").innerHTML;
      const feed = document.querySelector(".feed")
      if (feed) {
        feed.innerHTML = updatedFeed;
      }
      const count = updatedFeed.split("feed-card").length - 1
      let seen = document.cookie.split(";");
      let seenFollowers = 0;
      let seenFeed = 0;
      if (seen.length === 2) {
        seen = [seen[0].trim(), seen[1].trim()]
      }
      if (seen[0] === "") {
        seen = ["followers=0", "activity=0", true];
      }
      if (seen.length === 1 && seen[0].charAt(0) === "f") {
        seenFollowers = seen[0].split("=")[1];
      }
      if (seen.length === 1 && seen[0].charAt(0) === "a") {
        seenFeed = seen[0].split("=")[1];
      }
      if (seen.length === 2 && seen[0].charAt(0) === "f") {       
        seenFollowers = seen[0].split("=")[1];
        seenFeed = seen[1].split("=")[1];
      }
      if (seen.length === 2 && seen[0].charAt(0) === "a") {
        seenFollowers = seen[1].split("=")[1];
        seenFeed = seen[0].split("=")[1];
      }
      console.log(seen )
      console.log(`seen followers = ${seenFollowers}`)
      console.log(`seen feed = ${seenFeed}`)
      console.log(`updated feed count = ${count}`)

      const notif = document.getElementById("notif")
      if (count > seenFeed) {
        notif.classList.remove("d-none")
        const total = count - seenFeed
        notif.innerHTML = total
      }
      const skaterId = document.querySelector(".navbar").getAttribute("data-id");
      console.log(skaterId)
      Rails.ajax({ url: `/skaters/${skaterId}?ajax=1`, type: 'get', success: function(data) {
        const nodeList = data.querySelectorAll(".follower_username");
        let followers_array = Array.prototype.slice.call(nodeList);
        followers_array = followers_array.map(element => element.innerHTML);
        const new_follower = followers_array[followers_array.length - 1];
        let updatedFollowers = data.querySelector(".followers").innerHTML;
        const followers = document.querySelector(".followers");
        if (followers) {
          followers.innerHTML = updatedFollowers;
        }
        const followerCount = updatedFollowers.split("follow-user").length - 1
        console.log(`follower count${followerCount}`)
        const follower_notif = document.querySelector(".follower_notif")
        console.log(seen[3])
        if (seen[3] === undefined || seen[3] === null) {
          if (followerCount > seenFollowers) {
            follower_notif.innerHTML = `🔔 ${new_follower} started following you!`
            follower_notif.classList.remove("d-none")
            setTimeout(() => follower_notif.remove(), 5000)
          }
        }
      }
    })
    }});
  }, 5000);
};

export { refresh };