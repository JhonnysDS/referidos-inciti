
/*----------------------------------ALERTA DE ELIMINAR USUARIO REFERIDO --------------*/
const btnDelete = document.querySelectorAll('.btn-delete')
if (btnDelete){
    const btnArray = Array.from(btnDelete);
    btnArray.forEach((btn) => {
        btn.addEventListener('click', (e) => {
          if(!confirm('¿Estás seguro de que quieres eliminar este usuario referido? \n Una vez eliminado NO SE PODRÁ RECUPERAR')) {
            e.preventDefault();
          }
        });
    });
}

/* --------------------------------- ALERTA DE ELIMINAR PROYECTO -------------------------*/
const btnDeleteProject = document.querySelectorAll('.delete-project-btn')
if (btnDeleteProject){
    const btnArray = Array.from(btnDeleteProject);
    btnArray.forEach((btn) => {
        btn.addEventListener('click', (e) => {
          if(!confirm('¿Estás seguro de que quieres eliminar este proyecto? \n Una vez eliminado NO SE PODRÁ RECUPERAR')) {
            e.preventDefault();
          }
        });
    });
}