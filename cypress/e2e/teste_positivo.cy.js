describe('API - Validar API com sucesso', () => {
  it('Validar retorno 200', () => {
    cy.request({
      method: 'GET',
      url: 'https://www.typeform.com/developers/responses/',
      failOnStatusCode: false,
    }).should(({ status, body }) => {
      expect(status).to.equal(200)
      expect(body).includes("200")
    })
  })
})