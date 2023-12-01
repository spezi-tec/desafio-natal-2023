namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    puts "Cadastrando iformaçoes..."
    # Populando o banco de dados
     infos = [
              {
              url_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_z-3JfmIA-77TTTGeqz2YTj0KBpgY--zh_A&usqp=CAU",
              kind: "O que é o Natal:",
              description: "Natal ou Dia de Natal é um feriado e festival religioso cristão comemorado anualmente em 25 de dezembro. A data é o centro das festas de fim de ano e da temporada de férias, sendo, no cristianismo, o marco inicial do Ciclo do Natal, que dura doze dias."
              },
              {
              url_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtekfMDTLT2cbl2iRtOXz_SDMKrq2Em5y0IA&usqp=CAU",
              kind: "Árvore de natal:",
              description: "A “Árvore de Natal” é um símbolo natalino que representa agradecimento pela vinda de nosso Senhor Jesus Cristo. O costume de preparar este belo complemento do presépio foi passando de vizinhança em vizinhança, alcançando hoje até países onde a neve é um fenômeno desconhecido."
              },
              {
              url_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_z-3JfmIA-77TTTGeqz2YTj0KBpgY--zh_A&usqp=CAU",
              kind: "Quando Acontece o natal:",
              description: "O Natal acontece todos os anos no dia 25 de Dezembro."
              }
          ]
      infos.each do |info|
        2.times do |t|
        Info.create!(info)
      end
   end
   
    puts "Informações cadastradas!" 
     
    puts "Cadastrando comentarios..."
    opines = [ 
      {
      user_name: "Samuel da Silva",
      comment: 'Muito bom!',
    },
    { user_name: "Maria Clara",
       comment: 'Feliz natal!!'
       }
       ]
      opines.each do |opine|
      Opine.create!(opine)
    end

     puts "Comentários cadastrados!"

    end
end