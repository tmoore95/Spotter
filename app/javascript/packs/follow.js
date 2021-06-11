
let followbtn = document.querySelector(".follow-btn")
let followingCount = document.querySelector(".following-count")
let followerCount = document.querySelector(".follower-count")

if (followbtn) {
  followbtn.addEventListener("click", changeText);

  function changeText() {
    if (followbtn.textContent === "Follow") {
      followbtn.textContent = 'Unfollow'
      followerCount.textContent = parseInt(followerCount.textContent) + 1;
    } else {
      followbtn.textContent = 'Follow'
      followerCount.textContent = parseInt(followerCount.textContent) - 1;
    }
  }
}