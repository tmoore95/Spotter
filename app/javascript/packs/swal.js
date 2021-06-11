import Swal from 'sweetalert2'

const name = document.querySelector('.spot-name').textContent
const notif = function () {
  Swal.fire(
    `You've dropped in to ${name}!`
  )
}
const drop = document.querySelector('.spot-dropin')
if (!drop) {
  notif();
}
