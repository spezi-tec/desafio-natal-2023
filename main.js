const proximoJogador = document.querySelector(".proximoJogador");

let selecionado;
let jogador = "x";

let posicoes = [

	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9],
	[1, 4, 7],
	[2, 5, 8],
	[3, 6, 9],
	[1, 5, 9],
	[3, 5, 7],
	];

function init(){
	selecionado = [];

	proximoJogador.innerHTML = `JOGADOR DA VEZ: ${jogador}`;

	document.querySelectorAll(".game button").forEach((item) => {
		item.innerHTML = "";
		item.addEventListener("click", newMove);
	});
}

init();

function newMove(e) {
	const index = e.target.getAttribute("data-i");
	e.target.innerHTML = jogador;
	e.target.removeEventListener("click", newMove);
	selecionado[index] = jogador;

	setTimeout(() => {
		check();
	}, [100]);


	jogador = jogador === "x" ? "o" : "x";
	proximoJogador.innerHTML = `JOGADOR DA VEZ: ${jogador}`;
}

function check(){
	let ultimoJogador = jogador === "x" ? "o" : "x";

	const items = selecionado
		.map((item, i) => [item, i])
		.filter((item) => item[0] === ultimoJogador)
		.map((item) => item[1]);

	for (pos of posicoes) {
		if (pos.every((item) => items.includes(item))) {
			alert("O JOGADOR '" + ultimoJogador + "' GANHOU!");
			init();
			return;
		}
	}

	if (selecionado.filter((item) => item).length === 9){
		alert("DEU EMPATE!");
		init();
		return;
	}
}


