Feature: Actualizar una reserva solo con nombre y apellido
  Como cliente
  Quiero quiero actualizar la informacion de mi nombre y apellido de mi reserva
  Para poder corregir un error de tipeo

  Rule:  Para actualizar la información de la reserva, el cliente debe estar autenticado.

    Background:
      ##Trama a enviar con datos actualizados
      * def tramaValidate = read('classpath:F_PartialUpdate/dataPartial/json/ValidatePartialUpdate.json')
      * def requestBody = read('classpath:F_PartialUpdate/dataPartial/json/partialUpdate.json')
      ##Cabeceras
      * header Content-Type = 'application/json'
      * header Accept = 'application/json'
      ##Generacion de Token
      * def createTokenReponse = call read('classpath:B_AuthTest/01_Auth.feature')
      * def accessToken = createTokenReponse.response.token
      ##Creacion de Reserva que se actualizará
      * def createBookingResponse = call read('classpath:C_CreateBooking/02_CreateBooking.feature')
      * def idReserva = createBookingResponse.response.bookingid


    @Integracion
    Scenario: [TEST-006] - Validar la actualizacion parcial de una reserva
      Given url host
      * path '/booking/'+ idReserva
      * print createBookingResponse
      * cookie token = accessToken
      And request requestBody
      * print 'valores:', requestBody
      When method PATCH
      Then status 200
      Then match response == tramaValidate
      Then print response