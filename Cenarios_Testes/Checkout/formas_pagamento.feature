#language: pt

Funcionalidade: Validar as formas de pagamento

Contexto:
    Dado que esteja com os produtos desejados no carrinho

Cenário: CT - 007 - Validar pagamento com cartao de credito
    E clico no botao pagamento
    Quando seleciono a forma de pagamento com cartao de credito
    Entao o sistema devera habilitar os campos para preenchimento

Cenário: CT - 008 - Validar pagamento com boletos
    Quando seleciono a forma de pagamento com boletos
    Entao o sistema devera apresentar os campos de preenchimento das informacoes do cliente

Cenário: CT - 009 - Validar pagamento com PIX
    Quando seleciono a forma de pagamento com pix
    Entao o sistema devera direcionar o usuario para tela de geracao da chave do pix