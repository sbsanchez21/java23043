let a=3
let b=4
console.log(`a+b= ${a+b}`)


function validarUsuYpass() {
    console.log("ingreso a validar")
    let user=prompt("user")
    let pass=prompt("pass")
    
    console.log(document.getElementById("mensajes"))
    if (user=="psuarez@gmail.com" && pass=="1234") {
        console.log("válido")
        document.getElementById("mensajes").innerHTML="Usuario y password correctos"
        document.getElementById("mensajes").className="bg-info border rounded p-3 w-25"
    } else {
        console.log("Inválido")
        document.getElementById("mensajes").innerHTML="Usuario o password Inválidos"
        document.getElementById("mensajes").className="bg-danger border rounded p-3 w-25"
    }
}

// para ejecutar una función hay que invocarla
// validarUsuYpass()