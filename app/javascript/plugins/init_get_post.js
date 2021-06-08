var POST_URL = "my post url"
var APP_ID = "my app ID"
var CLIENT_TOKEN = "my client token"
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