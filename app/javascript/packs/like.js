const heart = document.querySelector(".fa-heart")
const count = document.querySelector(".favorite-count")


heart.addEventListener("click", changeColour);

function changeColour() {
  console.log(heart.style.color)
  if (heart.style.color === "white") {
    heart.style.color = "red";
    count.textContent = parseInt(count.textContent) + 1;
  } else {
    heart.style.color = "white";
    count.textContent = parseInt(count.textContent) - 1;
  }
}
