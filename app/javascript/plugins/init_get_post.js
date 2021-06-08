const URL = document.getElementById("tag_url");
const post = document.querySelector(".post");

async function initGetPost() {
  var response = await fetch(
    `http://iframe.ly/api/iframely?url=${URL.value}&api_key=a46dd56ea19aba4efa5511`)
  var data = await response.json()
  console.log(data)
  var myPostHtml = data.html
  post.innerHTML = myPostHtml
}

export { initGetPost };