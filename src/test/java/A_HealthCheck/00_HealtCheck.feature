Feature: Confirmar funcionamiento de la api
  Como Tester
  Quiero hacer una verificación de estado simple
  Para confirmar si la api restful-booker se encuentra en funcionamiento

  @Integracion
  Scenario: [TEST-001] - Confirmar si la api está disponible
    Given url host
    And path '/ping'
    When method GET
    Then status 201
    Then print response