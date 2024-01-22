            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir o meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Cadastro de campos obrigatórios
            Quando eu digitar os campos obrigatórios como <nome> <sobrenome> <pais> <endereco> <cidade> <CEP> <telefone> <email>
            Então o sistema validará o cadastro

            Cenário: Não permitir cadastro de email com formato inválido
            Quando eu inserir o email "maria@hotmail"
            Então o sistema deve exibir mensagem de alerta "email com formato inválido"

            Esquema do Cenário: Cadastro com campo obrigatório não preenchido
            Quando eu não inserir os dados num campo obrigatório como <nome> <sobrenome> <pais> <endereco> <cidade> <CEP> <telefone> <email>
            Então o sistema irá exibir mensagem de alerta "há campo obrigatório não preenchido"

            Exemplos:

            | Nome       | Sobrenome  | País     | Endereço                 | Cidade      | CEP         | Telefone      | Email               | Mensagem                              |
            | "Maria"    | "Silva"    | "Brasil" | "Rua da Vista, n 159"    | "São Paulo" | ""          | "11985964785" | "maria@hotmail.com" | "há campo obrigatório não preenchido" |
            | "João"     | ""         | "Brasil" | "Rua 13 de Maio, n 896"  | "Macapá"    | "50896-524" | "17985647896" | "joao@gmail.com"    | "há campo obrigatório não preenchido" |
            | "Fernanda" | "Santos"   | "Brasil" | "Rua da Conquista, n 18" | "São Paulo" | "58741-335" | ""            | "flima@gmail.com"   | "há campo obrigatório não preenchido" |
            | "José"     | "Ferreira" | "Brasil" | "Rua da Feira, 85"       | "Bahia"     | "59676-114" | "12978964123" | ""                  | "há campo obrigatório não preenchido" |
