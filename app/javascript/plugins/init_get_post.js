const POST_URL = document.getElementById("tag_url")
const APP_ID = "517239189416893"
const CLIENT_TOKEN = "82dfc1d6a7fb3105b7f341b6629fe36a"

async function initGetPost() {
  const response = await fetch(
    "https://graph.facebook.com/v8.0/instagram_oembed?url=" +
    POST_URL + "&omitscript=true&access_token=" + APP_ID + "|" +
    CLIENT_TOKEN)
  const data = await response.json()
  console.log(data)
  const myPostHtml = data.html
}

export { initGetPost };