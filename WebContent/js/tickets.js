function calcular() {

    let cantidad = document.getElementById("inputCantidad").value

    let categoria = document.getElementById("inputCategoria").value

    if (categoria == 1) { pagar = 0.2 }
    if (categoria == 2) { pagar = 0.5 }
    if (categoria == 3) { pagar = 0.85 }

    let total = 200 * cantidad * pagar

    document.getElementById("total").value = "Total a Pagar: $" + total
    

}

