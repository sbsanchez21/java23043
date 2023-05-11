
function validarUser() {
    console.log("ingreso a validarUser")

    // DOM: documento object model
    // console.log(document)
    // console.log(document.body)
    // console.log(document.body.children)

    // // funciones js para buscar en dom
    // console.log(document.getElementById("user"))
    // console.log(document.getElementsByClassName("btn"))
    // console.log(document.getElementsByTagName("div"))   
    
    let user=document.getElementById("user").value 
    console.log(`user= ${user}`)

    console.log(user.includes("@"))

    if (!user.includes("@")) {
        console.log("El usuario debe contener un @")
        document.getElementById("mensaje").innerHTML="El usuario debe contener un @"
        document.getElementById("mensaje").className="text-danger fw-bold m-1 p-1 border rounded "
    } else {
        
    }

}