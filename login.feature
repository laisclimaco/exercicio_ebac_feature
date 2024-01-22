#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Direcionamento para tela de checkout
Dado que eu acesse a página de login da EBAC-SHOP
Quando inserir o usuario "maria@ebacshop.com"
E a senha "123456"
Então será direcionado para a tela de checkout

-

Cenário: Um dos campos inválidos
Dado que eu acesse a página de login da EBAC-SHOP
Quando inserir o usuario "maria@ebacshop.com"
E a senha "12345678"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

