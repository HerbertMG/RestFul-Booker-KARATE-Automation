Feature: Crear una reserva
  Como cliente
  Quiero hacer una nueva reserva
  Para programar mi proximo viaje

  Rule:  Los campos firstname, lastname, totalprice, depositPaid, checkIn, checkOut, additionalNeeds,
  son obligatorios para crear una reserva

    Background:

      * def tramaValidate = read('classpath:C_CreateBooking/CreateJson/ValidateCreate.json')


    @Integracion
    Scenario: [TEST-003] - Validar la creación de una nueva reserva
      Given url 'https://restful-booker.herokuapp.com/'
      And path '/booking'
      * def requestBody = read('classpath:C_CreateBooking/CreateJson/Create.json')
      And request requestBody
      * print 'valores:', requestBody
      When method POST
      Then status 200
      ##Then match response == tramaValidate
      * def idUser = response.bookingid
      Then print response
      Then print idUser

      ##Examples:
       ## | nombre     | apellido  | preciototal | deposito | checkin    | checkout   | needs     |
       ## | Herbert    | Melendez  | 4444        | true     | 2024-02-14 | 2024-02-28 | Breakfast |
       ##| Juan       | Perez     | 2345        | true     | 2024-02-03 | 2024-02-10 | Breakfast |
       ##| Gianfranco | Rodriguez | 3564        | true     | 2024-02-10 | 2024-02-14 | Breakfast |
