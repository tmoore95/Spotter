var POST_URL = document.querySelector("form-control string url required")
var post = document.querySelector(".post")

async function getPost() {
  var response = await fetch(
    "https://graph.facebook.com/v8.0/instagram_oembed?url=" +
    POST_URL + "&omitscript=true&access_token=" + APP_ID + "|" +
    CLIENT_TOKEN)
  var data = await response.json()
  var myPostHtml = data.html
  post.innerHTML = myPostHtml
  instgrm.Embeds.process()
}

export { getPost };

/* <div class="post"></div> */