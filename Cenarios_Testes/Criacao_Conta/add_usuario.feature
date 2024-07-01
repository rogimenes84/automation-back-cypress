#language: pt

Funcionalidade: Validar a criação de uma conta no e-commerce

Contexto:
    Dado com esteja na tela home do ecommerce

Cenário: CT - 001 - Devo conseguir criar a conta sem dificuldades
    E aciono o botao de user
    E sou direcionado para tela de adicionar conta
    Quando preencho o campo <username>
    E preencho o campo <password>
    E aciono o botao Sing in
    Entao o sistema devera informar que conta criada com sucesso <mensagem>

Cenário: CT - 002 - O sistema não deverá criar conta desta forma
    E aciono o botao de user
    E sou direcionado para tela de adicionar conta
    Quando preencho o campo <username>
    E preencho o campo <password>
    E aciono o botao Sing in
    Entao o sistema devera informar que conta criada com sucesso <mensagem>

Exemplos:
    | username | password  |        mensagem            |
    |   test1  | logar@123 | Usuário criado com sucesso |  
    |   %$#@&  |   123433  | Dados invalidos para criação da conta |  
