#language: pt

Funcionalidade: Validar a adionamento dos produtos no carrinho


Contexto:
    Dado que esteja logado no ecommerce

Cenário: CT - 003 - Devo selecionar na lista de produtos
    Quando clico no produto desejado
    Entao o sistema devera adionar o produto no carrinho

Cenário: CT - 004 - Validar adicionar mais produtos no carrinho
    Quando aciono o botao de adicionar mais produtos no carrinho
    E sou direcionado para lista de produtos
    Quando aciono o botao de comprar no produto desejado
    Entao o sistema devera informar que o produto foi adicionado com sucesso

Cenário: CT - 005 - Validar adicionar produtos indisponivel no carrinho
    Quando aciono o botao de adicionar produtos indisponivel no carrinho
    Entao o sistema devera informar que produto nao esta disponivel
