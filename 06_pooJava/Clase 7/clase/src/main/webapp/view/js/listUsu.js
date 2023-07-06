//trae el modal con su id delModal
const delModal = document.getElementById('delModal')

//revisa si delModal no es null
if (delModal) {
	//agrega un evento, ejecuta lo siguiente cuando el modal se muestra
  delModal.addEventListener('show.bs.modal', event => {
	
    //trae el elemento que ejecutó el modal
    const a = event.relatedTarget
    
    //trae el atributo idUsuario del link a
    const idUsuario = a.getAttribute('idUsuario')
    console.log(idUsuario)
    const user=a.getAttribute("user")

	const inputIdUser=delModal.querySelector("#idUser")
	console.log(inputIdUser)
	inputIdUser.value=idUsuario
    
    const divDataUser = delModal.querySelector('#dataUser')
    divDataUser.innerHTML = user
  })
}