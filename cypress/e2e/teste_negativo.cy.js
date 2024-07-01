describe('API - Validar erro no cenario', () => {
  it('fails with 401 (Unauthorized) status code when access token is missing', () => {
    cy.request({
      method: 'GET',
      url: 'https://api.typeform.com/me',
      failOnStatusCode: false,
    }).should(({ status, body }) => {
      expect(status).to.equal(401)
      expect(body).includes('AUTHENTICATION_FAILED')
      expect(body)
        .includes("Authentication credentials not found on the Request Headers")
      // Or
      const bodyObj = JSON.parse(body)
      const { code, description } = bodyObj
      expect(code).to.equal('AUTHENTICATION_FAILED')
      expect(description)
        .to.equal('Authentication credentials not found on the Request Headers')
    })
  })

  it('Falha na geração do token', () => {
    cy.request({
      method: 'GET',
      url: 'https://api.typeform.com/me',
      headers: { authorization: 'Bearer 0123456789abcdefghijklmnopqrsvwxyz' },
      failOnStatusCode: false,
    }).should(({ status, body }) => {
      expect(status).to.equal(403)
      expect(body).includes('AUTHENTICATION_FAILED')
      expect(body).includes('Authentication failed')
      // Or
      const bodyObj = JSON.parse(body)
      const { code, description } = bodyObj
      expect(code).to.equal('AUTHENTICATION_FAILED')
      expect(description).to.equal('Authentication failed')
    })
  })

  it('Falha com status code', () => {
    cy.request({
      method: 'GET',
      url: 'https://walmyr.dev/invalid-123',
      failOnStatusCode: false,
    }).should(({ status, statusText }) => {
      expect(status).to.equal(404)
      expect(statusText).to.equal('Not Found')
    })
  })
})
