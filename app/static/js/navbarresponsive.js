/*RESPONDIVE DE MENÚ TABULAR*/
const navToggle = document.querySelector(".toggle");
const navMenu = document.querySelector(".container-links-button");

navToggle.addEventListener("click", () => {
    navMenu.classList.toggle("container-links-button_active");
});


/*RESPONSIVE DE SUBIR FOTO DEL PROYECTO*/

const file = document.querySelector("#imagen");

imagen.addEventListener('change', () => {
    document.querySelector('.label-description').innerHTML =
    imagen.files[0].name;
});
