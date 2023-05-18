// valida que el usuario tenga un @ y tenga el dominio codoACodo.edu.ar
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
    
    
    //obtendo lo que ingreso el usuario en el input luego lo pongo en la variable user
    let user=document.getElementById("user").value 
    console.log(`user= ${user}`)

    // console.log(user.includes("@"))
    user.includes("")

    if (!user.includes("@")) {
        // console.log("El usuario debe contener un @")
        document.getElementById("mensaje").innerHTML="El usuario debe contener un @"
        document.getElementById("mensaje").className="bg-danger  m-1 p-1 border rounded "
    } else if(!user.toLowerCase().includes("codoacodo.edu.ar")){    
        document.getElementById("mensaje").innerHTML="El usuario debe contener dominio codoACodo.edu.ar"
        document.getElementById("mensaje").className="bg-danger  m-1 p-1 border rounded "

    } else {
        document.getElementById("mensaje").innerHTML=""
        document.getElementById("mensaje").className=""
        
    }

}


// muestra la fortaleza de seguridad de las pass
function mostrarFortCant() {
    console.log("mostrarfor")
    let pass=document.getElementById("pass").value

    if (pass.length<=4) {
        document.getElementById("mensaje").innerHTML="Fortaleza Baja"
        document.getElementById("mensaje").className="bg-danger  m-1 p-1 border rounded text-center "        
    } else if(pass.length<=8) {
        document.getElementById("mensaje").innerHTML="Fortaleza Media"
        document.getElementById("mensaje").className="bg-info m-1 p-1 border rounded text-center "        
    } else {
        document.getElementById("mensaje").innerHTML="Fortaleza Alta"
        document.getElementById("mensaje").className="bg-success m-1 p-1 border rounded text-center "        

    }
}

function validarPass() {
    let pass=document.getElementById("pass").value

    let regExp=new RegExp("(?=.*[a-z])(?=.*[A-Z]).{8,}")
    
    if (!regExp.test(pass)) {
        document.getElementById("mensaje").innerHTML="La contraseña debe tener una minúscula, una mayúscula y ser mayor a 8 caracteres"
        document.getElementById("mensaje").className="bg-danger m-1 p-1 border rounded text-center "        
        
    } else {
        document.getElementById("mensaje").innerHTML=""
        document.getElementById("mensaje").className=""        
        
    }
    
}


function validarPassDiscriminada() {
    let pass=document.getElementById("pass").value

    let regExpMin=new RegExp("(?=.*[a-z])")
    let regExpMay=new RegExp("(?=.*[A-Z])")
    let regExpCantChar=new RegExp(".{8,}")
    
    if (!regExpMin.test(pass)) {
        document.getElementById("mensaje").innerHTML="La contraseña debe tener minúsculas"
        document.getElementById("mensaje").className="bg-danger m-1 p-1 border rounded text-center "        
        
    } else if (!regExpMay.test(pass)) {
        document.getElementById("mensaje").innerHTML="La contraseña debe tener mayúsculas"
        document.getElementById("mensaje").className="bg-danger m-1 p-1 border rounded text-center "        
            
    } else if (!regExpCantChar.test(pass)) {
        document.getElementById("mensaje").innerHTML="La contraseña debe tener más de 8 caracteres"
        document.getElementById("mensaje").className="bg-danger m-1 p-1 border rounded text-center "        
    } else {
        document.getElementById("mensaje").innerHTML=""
        document.getElementById("mensaje").className=""        
        
    }
    
}

function mostrarPass() {
    document.getElementById("pass").setAttribute("type","text")
    document.getElementById("icono").setAttribute("class", "bi bi-eye-fill")
    document.getElementById("icono").setAttribute("onclick","ocultarPass()")
}

function ocultarPass() {
    document.getElementById("pass").setAttribute("type","password")
    document.getElementById("icono").setAttribute("class", "bi bi-eye-slash-fill")
    document.getElementById("icono").setAttribute("onclick","mostrarPass()")
}

//todo: verificar que las pass sean iguales