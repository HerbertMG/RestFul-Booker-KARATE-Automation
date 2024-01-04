Feature: Actualizar una reserva solo con nombre y apellido
  Como cliente
  Quiero quiero actualizar la informacion de mi nombre y apellido de mi reserva
  Para poder corregir un error de tipeo

  Rule:  Para actualizar la información de la reserva, el cliente debe estar autenticado.

    Background:
      * def tramaValidate = read('classpath:F_PartialUpdate/dataPartial/ValidatePartialUpdate.json')
      * def requestBody = read('classpath:F_PartialUpdate/dataPartial/partialUpdate.json')


    @Integracion
    Scenario Outline: [TEST-006] - Validar la actualizacion parcial de una reserva
      Given call read('classpath:B_AuthTest/01_Auth.feature'
      * url 'https://restful-booker.herokuapp.com/booking/'+ <id>
      And request requestBody
      * print 'valores:', requestBody
      When method patch
      Then status 200
      Then match response == tramaValidate
      Then print response

      Examples:
        | id   |
        | 4444 |