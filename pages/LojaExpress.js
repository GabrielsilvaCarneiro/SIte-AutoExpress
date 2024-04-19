const itensCarrinho = {};

function addCarrinho(itemNome, itemPreco) {
    if (itensCarrinho[itemNome]) {
        itensCarrinho[itemNome].quantidade++;
        itensCarrinho[itemNome].precoTotal += itemPreco;

        itensCarrinho[itemNome].liitem.querySelector(".quantidade").innerHTML = itensCarrinho[itemNome].quantidade;
        itensCarrinho[itemNome].liitem.querySelector(".preco-total").innerHTML = "R$" + itensCarrinho[itemNome].precoTotal.toFixed(2);

    } else {
        const liitem = document.createElement("li");
        liitem.innerHTML = `<div class="item">
        <span>${itemNome}</span>
        <button class="remove" onclick="removeCarrinho('${itemNome}', ${itemPreco})"></button>
        <span class="quantidade">1</span>
        <button class="add" onclick="addCarrinho('${itemNome}', ${itemPreco})"></button>
        <span class="preco-total">R$${itemPreco.toFixed(2)}</span>
    </div>`;
        document.getElementById("itens-lista").appendChild(liitem);

        itensCarrinho[itemNome] = {
            quantidade: 1,
            precoTotal: itemPreco,
            liitem: liitem
        };
    }

    document.getElementById("preco-total").innerHTML = "Total: R$" + itensCarrinho[itemNome].precoTotal.toFixed(2);
}

function removeCarrinho(itemNome, itemPreco) {
    if (itensCarrinho[itemNome]) {
        if (itensCarrinho[itemNome].quantidade > 1) {
            itensCarrinho[itemNome].quantidade--;
            itensCarrinho[itemNome].precoTotal -= itemPreco;

            itensCarrinho[itemNome].liitem.querySelector('.quantidade').innerHTML = "R$" + itensCarrinho[itemNome].precoTotal.toFixed(2);
        } else {
            document.getElementById("itens-lista").removeChild(itensCarrinho[itemNome].liitem);
            delete itensCarrinho[itemNome];
        }
        document.getElementById("preco-total").innerHTML = "Total: R$" + itensCarrinho[itemNome].precoTotal.toFixed(2);
        updateCarrinho();
    }
}

function updateCarrinho() {
    let cont = 0;
    for (let item in itensCarrinho) {
        cont += itensCarrinho[item].quantidade;
    }
    document.getElementById("cont-carrinho").innerHTML = cont
}

function limparCarrinho() {
    
    document.getElementById("itens-lista").innerHTML = ""
    document.getElementById("preco-total").innerHTML = "Total: R$ 0.00"
    for(let itemNome in itensCarrinho){
        delete itensCarrinho[itemNome]
    }
    updateCarrinho()
}

function toggleCarrinho(){
    const itensCarrinhoDiv = document.getElementById("carrinho-itens")
    if(itensCarrinhoDiv.style.display === "none"){
        itensCarrinhoDiv.style.display = "block"
    } else {
        itensCarrinhoDiv.style.display = "none"
    }
}

function buscarProduto() {
    const buscarInput = document.getElementById("buscar-input");
    const produtos = document.getElementsByClassName("produto");

    for (let i = 0; i < produtos.length; i++) {
        const produtoNome = produtos[i].querySelector("h3").innerText.toLowerCase();

        if (produtoNome.includes(buscarInput.value.toLowerCase())) {
            produtos[i].style.display = "block";
        } else {
            produtos[i].style.display = "none";
        }
    }
}

