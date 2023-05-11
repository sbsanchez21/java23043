// alert("hola js")

// variables, operadores comparación, operadores lógicos
var nombreMascota="Puppy"
let a
a=3
console.log(a)

a=5
console.log(a)
a="Kevin"

let usuario
// usuario=prompt("Ingrese su nombre usuario")
console.log(usuario)
usuario="jperez@gmail.com"
console.log(usuario)

let nombre="Pedro"
let apellido="Suarez"

// operaciones con varibles
let resultado
let x=4
let y=5
resultado=x+y
console.log(resultado)

resultado=x-y
console.log(resultado)

resultado=nombre + " " + apellido
console.log("Bienvenido " + resultado + " a nuestra página web")
console.log(`Bienvendido ${nombre} ${apellido} a nuestra página ${x+y}`)


// nombre=prompt("Ingrese su nombre")
// apellido=prompt("ingrese su apellido")
//dom ya lo veremos
document.getElementById("mensaje").innerHTML="Bienvenido " + nombre + " " + apellido + " a nuestra página web"
document.getElementById("mensaje").innerHTML=`Bienvenido ${nombre} ${apellido} a nuestro sitio ${x+y}`

let haceFrio=true

// Operadores de comparación
a=3
let b=4
let c=3
let d=5
resultado = (a == b);
console.log( `a == b: ${resultado}`);

resultado = (a != b);
console.log( `a != b: ${resultado}`);

resultado = (a > b);
console.log( `a > b: ${resultado}`);

resultado = (a < b);
console.log( `a < b: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a >= d);
console.log( `a >= d: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a <= c);
console.log( `a <= c: ${resultado}`);

// aplicación comparadores
let edad
// edad=prompt("ingrese su edad")
if (edad>=18) {
    console.log("Puede ingresar a nuestro sitio web")
} else {
    console.log("NO Puede ingresar a nuestro sitio web")
}

let extracion
let saldo=15000
// extracion=prompt("Cuanto dinero desea extraer?")
if (extracion>saldo) {
    console.log("Fondos insuficientes")
} else {
    console.log("Sacando dinero")
    
}

// Operadores lógicos
a=3
b=4
 c=3
 d=5
resultado = (a > b) && (b > c);
console.log( `(a > b) && (b > c): ${resultado}`);

resultado = (a > b) && (c > b);
console.log( `(a > b) && (c > b): ${resultado}`);

resultado = (a > b) || (b > c);
console.log( `(a > b) ||  (b > c): ${resultado}`);

resultado = (b > a) || (b > c);
console.log( `(b > a) ||  (b > c): ${resultado}`);

resultado = !((b > a) || (b > c));
console.log( `!((b > a) || (b > c)): ${resultado}`);

let user
let pass
// user=prompt("usuario")
// pass=prompt("pass")

if (user=="psuarez@gmail.com" && pass=="1234") {
    console.log("User y pass correctos, bienvenido a la página")
} else {
    console.log("User y pass Incorrectos, No puede ingresar a la página")
}

let hoyLlueve
let hayPronosticoLluvia
// hoyLlueve=prompt("llueve?")
// hayPronosticoLluvia=prompt("hay pronóstico lluvia")

if (hoyLlueve=="si" || hayPronosticoLluvia=="si") {
    console.log("llevar paragüas")
} else {
    console.log("NO llevar paragüas")
    
}


// estrcuturas de control
if (true) {
    // si true
}

if (true) {
    // true
} else {
    // false
}


edad=12
// edad=prompt("ingrese su edad")
if (edad>=18) {
    console.log("Puede ingresar a nuestro sitio web")
} else {
    console.log("NO Puede ingresar a nuestro sitio web")
}


// switch
let nroMes = 10
switch (nroMes) {
    case 1:
        console.log("Enero")
        break;
    case 2:
        console.log("Febrero")
        break;

    case 3:
        console.log("Marzo")
        break;
    
    
    default:
        console.log("No existe el mes")
        break;
}

// iterador
for (let i = 0; //inicializa i=0
    i < 4; //corta cuando esto da false
    i++) //incrementa 1
    {

    //ejecuta esta instrucción una cant de veces predefinidas 
    console.log(i)
}

for (let i = 0; i < 4; i++) {
    console.log(`Bienvenido Cliente ${i}`)
}

user=""
while (user!="psuarez@gmail.com") {
    user=prompt("usuario")
}
console.log("salí del while")
