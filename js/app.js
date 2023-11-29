function sortear() {
   //pegar o toal de resultados
    const TotalResultados = Number(document.querySelector('#totalResultadoInput').value)
    


   //pegar o menor valor
   const menorValor = Number(document.querySelector('#menorValorInput').value)
   

   //pegar o maior valor
   const maiorValor =Number(document.querySelector('#maiorValorInput').value)
   

   //gerar resultado aleatorio

   const resultado = Math.floor(Math.random() *(maiorValor - menorValor+ 1)) + menorValor
   console.log(resultado)

   //exibir no html

    const elementoHTMLdoResultado = document.createElement('div')
    elementoHTMLdoResultado.classList.add('result-value')
    elementoHTMLdoResultado.innerText = resultado

    //adicionar o elemento criado dentro do HTML existente
    const elementoHTMLResultValues = document.querySelector('.results-values')
    elementoHTMLResultValues.append(elementoHTMLdoResultado)
}