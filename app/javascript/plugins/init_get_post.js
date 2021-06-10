const URL = document.getElementById("tag_url");
const post = document.querySelector(".post");


const initGetPost = () => {
  const urls = document.querySelectorAll(".urlbb");
  urls.forEach((url) => {
   getPost(url)
    console.log(url.textContent)
  })
}

let getPost = async function (url) {
  var response = await fetch(
    `http://iframe.ly/api/iframely?url=${url.textContent}&api_key=` + process.env.["FRAMELY_API_KEY"])
  var data = await response.json()
  var myPostHtml = data.html
  url.nextElementSibling.innerHTML = myPostHtml
}

export { initGetPost };