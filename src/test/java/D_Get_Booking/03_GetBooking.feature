Feature: Realizar una consulta de reserva por id
  Como usuario
  Quiero consultar la información de una reserva
  Para validar que la reservación se realizó correctamente

  Rule: Los parámetros de búsqueda permitidos son: idBooking, firstname & lastname, Checkin to Checkout.

    Background:
      * def tramaValidate = read('classpath:D_Get_Booking/GetJson/ValidateGetBooking.json')

    @Integracion
    Scenario Outline: [TEST-004] - Validar que se pueda consultar una reserva por su BookingId
      Given url 'https://restful-booker.herokuapp.com/booking/'+ <id>
      When method GET
      Then status 200
      Then match response == tramaValidate
      Then print response

      Examples:
        | id   |
        | 4444 |

