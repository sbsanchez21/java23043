
// agregar un alumno a la tabla con datos ejemplo
let contador=1
function addAlumno() {
    console.log(contador)
    contador++

    let tbody=document.getElementById("tbody")

    let tr=document.createElement("tr")
    tr.setAttribute("id",contador)

    let tdId=document.createElement("td")
    tdId.innerHTML=contador
    tr.appendChild(tdId)

    let tdNom=document.createElement("td")
    tdNom.innerHTML="Nombre"
    tr.appendChild(tdNom)

    let tdApe=document.createElement("td")
    tdApe.innerHTML="Apellido"
    tr.appendChild(tdApe       )

    let tdMail=document.createElement("td")
    tdMail.innerHTML="email@gmail.com"
    tr.appendChild(tdMail)

    let tdOpe=document.createElement("td")
    let a=document.createElement("a")
    a.setAttribute("href","#")
    a.innerHTML=`<i class="bi bi-trash3-fill" onclick="delAlumno('${contador}')"></i>`
    tdOpe.appendChild(a)
    tr.appendChild(tdOpe)

    tbody.appendChild(tr)
}

function delAlumno(idTr) {
    document.querySelector("#tbody")
    document.querySelector(".table")
    let tbody=document.getElementById("tbody")
    let tr=document.getElementById(idTr)

    tbody.removeChild(tr)
    
}