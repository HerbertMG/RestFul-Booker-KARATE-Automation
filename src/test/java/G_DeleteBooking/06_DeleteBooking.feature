Feature: Eliminar una reserva
  Como cliente
  Quiero quiero eliminar mi reserva agendada
  Para poder cancelar la reservación en cualquier momento

  Rule: Para eliminar la información de la reserva, el cliente debe estar autenticado.

    @Integracion
    Scenario Outline: [TEST-007] - Validar la eliminación de una reserva actual
      Given call read('classpath:B_AuthTest/01_Auth.feature'
      * url 'https://restful-booker.herokuapp.com/booking/'+ <id>
      When method delete
      Then status 201
      Then print response

      Examples:
        | id   |
        | 4444 |