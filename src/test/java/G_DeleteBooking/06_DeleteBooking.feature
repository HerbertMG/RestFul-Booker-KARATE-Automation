Feature: Eliminar una reserva
  Como cliente
  Quiero quiero eliminar mi reserva agendada
  Para poder cancelar la reservación en cualquier momento

  Rule: Para eliminar la información de la reserva, el cliente debe estar autenticado.

    Background:
      ##Cabeceras
      * header Content-Type = 'application/json'
      ##Generacion de Token
      * def createTokenReponse = call read('classpath:B_AuthTest/01_Auth.feature')
      * def accessToken = createTokenReponse.response.token
      ##Creacion de Reserva que se actualizará
      * def createBookingResponse = call read('classpath:C_CreateBooking/02_CreateBooking.feature')
      * def idReserva = createBookingResponse.response.bookingid

    @Integracion
    Scenario: [TEST-007] - Validar la eliminación de una reserva actual
      Given url host
      * path '/booking/'+ idReserva
      * cookie token = accessToken
      When method DELETE
      Then status 201
      Then print response
