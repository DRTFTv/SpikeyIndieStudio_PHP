function confirming() {
    var name = prompt("Digite seu nome: ");

    if (name == null || name == "") {
        alert("Nome não informado");
    } else {
        window.location.href = `https://api.whatsapp.com/send?phone=5513988785490&text=Eu%20${name}%20confirmo%20minha%20presen%C3%A7a%20na%20Halloween%20Party!`;
    }
}