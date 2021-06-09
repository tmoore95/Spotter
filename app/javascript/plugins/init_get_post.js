const URL = document.getElementById("tag_url");
const post = document.querySelector(".post");

const initGetPost = () => {
  const urls = document.querySelectorAll(".urlbb");
  urls.forEach((url) => {
   getPost(url)
  })
}

let getPost = async function (url) {
  var response = await fetch(
    `http://iframe.ly/api/iframely?url=${url.textContent}&api_key=a46dd56ea19aba4efa5511`)
  var data = await response.json()
  console.log(data)
  var myPostHtml = data.html
  url.nextElementSibling.innerHTML = myPostHtml
}

export { initGetPost };