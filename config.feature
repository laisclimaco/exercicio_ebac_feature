#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto 
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção obrigatória de cor, tamanho e quantidade
Dado que eu acesse a página da EBAC-SHOP
Quando eu selecionar o produto 
Então o sistema irá direcionar obrigatoriamente para escolher cor, tamanho e quantidade do produto 

-

Contexto: deve permitir apenas 10 produtos por venda
Dado que eu acesse a página da EBAC-SHOP

Cenário: compra de até 10 produtos
Quando eu adicionar até 10 produtos ao carrinho 
Então o sistema deve permitir a conclusão da compra

Cenário: compra de mais de 10 produtos por venda
Quando eu adicionar mais de 10 produtos ao carrinho 
Então o sistema deve exibir uma mensagem de alerta "Só é permitida a compra de até 10 itens" 
E não permitir a conclusão da compra

-

Cenário: Limpar o carrinho de compras
Quando eu clicar no botão "Limpar"
Então o sistema deve voltar ao estado original