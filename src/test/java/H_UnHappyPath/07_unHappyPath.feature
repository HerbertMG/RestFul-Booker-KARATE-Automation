Feature: Validar que no se genere token con credenciales incorrectas y no se realize consultas
  Como tester
  Quiero validar funcionalidad fuera del flujo correcto
  Para confirmar que el funcionamiento del servicio corresponde al esperado por negocio

  Background:
    * def requestToSend = read('classpath:H_UnHappyPath/excepciones/excAuth.json')
    * def tramaValidate = read('classpath:H_UnHappyPath/excepciones/excValidateAuth.json')

  @Integracion
  Scenario: [TEST-008] - Validar la creacion de token
    Given url 'https://restful-booker.herokuapp.com'
    And path '/auth'
    And request requestToSend.Auth
    When method POST
    Then status 200
    Then match response == tramaValidate
    * def authToken = response.token
    Then print response
    Then print authToken


  @Integracion
  Scenario Outline: [TEST-009] - Validar que no se pueda consultar una reserva eliminada
    Given url 'https://restful-booker.herokuapp.com/booking/'+ <id>
    When method GET
    Then status 404
    Then match response == 'Not Found'
    Then print response

    Examples:
      | id   |
      | 5555 |
