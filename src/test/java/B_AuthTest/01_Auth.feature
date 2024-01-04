Feature: Generar token de autenticacion
  Como cliente
  Quiero autenticarme en el sistema
  Para utilizar las caracteristicas del servicio

  Rule: El token expira cada 10 minutos

    Background:
      * def requestToSend = read('classpath:B_AuthTest/AuthJson/Auth.json')
      * def tramaValidate = read('classpath:B_AuthTest/AuthJson/ValidateAuth.json')

    @Integracion
    Scenario: [TEST-002] - Validar la creacion de token
      Given url 'https://restful-booker.herokuapp.com'
      And path '/auth'
      And request requestToSend.Auth
      When method POST
      Then status 200
      Then match response == tramaValidate
      * def authToken = response.token
      Then print response
      Then print authToken
