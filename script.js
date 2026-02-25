let form = document.getElementById("formulario");
let input = document.getElementById("correo");
let table = document.getElementById("tareas");

input.addEventListener("input",function1);

async function function1(){
    table.innerHTML="";

    let enviar=new FormData(form);


    try{
        if(input.value){

        let respuesta=await  fetch("recibir.php",{
            method : "POST",
            body : enviar
        });
        let datos = await respuesta.json();
        console.log(datos);

        pintarDatos(datos);

    }}
    catch (error){
        console.log("error:"+error);
    }
}

function pintarDatos(datos){
    for(let i=0;i<datos.length;i++){
    let tr = document.createElement("tr");
    let td=document.createElement("td");
    let td2=document.createElement("td");
    let td3=document.createElement("td");

    td.innerHTML=datos[i].nombre;
    td2.innerHTML=datos[i].apellidos;
    td3.innerHTML=datos[i].email;

    td.style.border="solid 1px";
    td2.style.border="solid 1px";
    td3.style.border="solid 1px";


    tr.appendChild(td);
    tr.appendChild(td2);
    tr.appendChild(td3);
    table.appendChild(tr);

    table.style.border="solid 1px";



    }}