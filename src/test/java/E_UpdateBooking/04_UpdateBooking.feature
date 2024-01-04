Feature: Actualizar una reserva
  Como cliente
  Quiero quiero actualizar la informacion de mi reserva
  Para poder actulizar y eliminar reservas

  Rule:  Para actualizar la información de la reserva, el cliente debe estar autenticado.

    Background:
      * def tramaValidate = read('classpath:E_UpdateBooking/dataUpdate/ValidateUpdate.json')
      * def requestBody = read('classpath:E_UpdateBooking/dataUpdate/UpdateData.json')


    @Integracion
    Scenario Outline: [TEST-005] - Validar la actualizacion de una reserva
      Given call read('classpath:B_AuthTest/01_Auth.feature'
      * url 'https://restful-booker.herokuapp.com/booking/'+ <id>
      And request requestBody
      * print 'valores:', requestBody
      When method put
      Then status 200
      Then match response == tramaValidate
      Then print response

      Examples:
        | id   |
        | 4444 |
