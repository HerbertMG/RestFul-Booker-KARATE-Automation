# AUTOMATIZACIÓN WEB SERVICES - RESTFUL - BOOKER

### 📄 Contexto:
RestFul Booker, es una API que puede utilizar para obtener más información sobre API Testing o probar
herramientas de API Testing. RestFul-Booker contiene end-points que permiten Crear, Leer, Actualizar y
Eliminar reservas. El API REST viene con funciones de autenticación y errores para que pueda explorar.
La API viene precargada con 10 registros para que pueda trabajar y se restablece cada 10 minutos a ese
estado predeterminado.

### 🚩 Problemática:
Actualmente en la aplicación de reservas RESTFUL - BOOKER se están detectando diferentes errores
funcionales a nivel de la GUI, pero al detectarlos en este nivel no se puede dar feedback temprano a los
desarrolladores. Por lo que se requiere que se automaticen pruebas a nivel de integración, por eso se
requiere implementar pruebas automatizadas a los servicios web.

### 💡 Solución:
Se plantea un set de pruebas Automatizadas y Manuales para detectar los diferentes errores a nivel de la GUI de la aplicacion
, con el fin de que se pueda probar la API de forma regular, y poder identificar la mayoría de los errores
en la fase de desarrollo

***
# ✅ PLAN DE PRUEBAS FUNCIONAL
(NIVEL API TESTING)

### RESUMEN
Este plan de pruebas muestra el detalle y organización de las pruebas de integración de la feature:

> **FEATURE TEST PLAN**: Restful-Booker | Booking | Crear, modificar, actualizar y eliminar reservas del sistema.
>
>*Como usuario de booking logueado,  
Quiero crear, consultar, actualizar y eliminar reservas  
Para agendar mis próximos viajes*

* Este Plan se llevará a cabo a nivel de **Pruebas de integración**.
* Este Plan se llevará a cabo en **Postman** de manera automatizada por medio de una collection.
* Este Plan se llevará a cabo con **KARATE FRAMEWORK** de manera automatizada.
* Este Plan se realizará para determinar **qué pruebas se harán** y **cómo se realizarán las pruebas.**

### OBJETIVO 🎯
Validar las funcionalidades básicas que puede realizar un usuario con una reserva (Auth, Booking y Ping), usando Serenity BDD en integración con Rest Assured para automatizar el proceso.

### SUPUESTOS
* La api se encuentra siempre en funcionamiento.
* Acceso a la página web donde está la documentación de la API.
* Herramientas de pruebas como IDE (Intellij Idea, Visual Studio Code, etc) y Postman correctamente instalados y configurados.
* Conocimientos en API Testing.

### ALCANCE 👈
* Capacidad de alcanzar las funcionalidades de Auth, Booking y Ping.
* Seguir las reglas de negocio sobre la creación, consulta, actualización y eliminación de las reservas.
* Contemplar mínimo un **_HAPPY PATH_** y **_UNHAPPY PATH_** por método HTTP (GET,POST,PUT,DELETE).
* No se validarán los escenarios que no fueron contemplados en los flujos a probar.

### RIESGOS 🔥
| Riesgo                                                  | Mitigación                                                                                                  |
|:--------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| No conocer el funcionamiento o arquitectura de la API   | Ir a la documentación oficial de [RESTFUL - BOOKER](https://restful-booker.herokuapp.com/apidoc/index.html) |
| QA Environment está caído                               | Usar el recurso **/ping** para validar cuando la api esté UP.                                               |
***
### RECURSOS
* **Postman**: como herramienta de apoyo para hacer pruebas de los recursos de la API.
* **Karate Framework**: Framework principal para realizar la automatización de los scripts de pruebas.
* **Plan de pruebas**: Documento para la planificación de las pruebas.
* **Documentación API**: Página web de [RESTFUL - BOOKER](https://restful-booker.herokuapp.com/apidoc/index.html)

### CONFIGURACIÓN DEL AMBIENTE
* Las pruebas serán ejecutadas en el ambiente de **QA**.
* Las pruebas serán ejecutadas con la API de **RESTFUL - BOOKER**.
* Las pruebas serán ejecutas en la versión **v1.0.0** de **RESTFUL - BOOKER**.
* El endpoint de pruebas será: `https://restful-booker.herokuapp.com`

#### 🔗 API Endpoints
| HTTP Verbs | Endpoints    | Acción                                                                                           |
|------------|--------------|--------------------------------------------------------------------------------------------------|
| POST       | /auth        | Crea un nuevo token de autenticación para acceder a PUT y DELETE                                 |
| GET        | /booking     | Devuelve los id de todas las reservas que existen dentro de la API.                              |
| GET        | /booking/:id | Devuelve una reserva específica basada en la identificación de la reserva proporcionada          |
| POST       | /booking     | Crea una nueva reserva en la API                                                                 |
| GET        | /booking/:id | Actualiza una reserva actual                                                                     |
| PATCH      | /booking/:id | Actualiza una reserva actual con una carga útil parcial                                          |
| DELETE     | /booking/:id | Elimina una reserva actual en la API                                                             |
| GET        | /ping        | Un punto final de verificación de estado simple para confirmar si la API está en funcionamiento. |
***
### NIVELES Y TIPOS DE PRUEBA
**Niveles de pruebas:**
* Pruebas de integración

**Tipos de pruebas:**
* Pruebas funcionales: En este tipo de pruebas vamos a validar los códigos de estado y funcionalidades descritas en la documnetación.
* Pruebas de integración: Para validar la integración de todos los recursos de la API.

### CONSIDERACIONES DE LAS PRUEBAS
- [ ] Crear una colección en postman que permita realizar pruebas manuales a los servicios web.
- [ ] Automatizar las funcionalidades de: Auth, Booking y Ping.
- [ ] Considerar en la automatización de pruebas los métodos http: POST, GET, PUT, PATCH,
  DELETE.
- [ ] Considerar la creación de escenarios Happy Paths y UnHappy Paths.
- [ ] Considerar en la automatización todas las aserciones posibles.


### FLUJOS A PROBAR (dentro de alcance)

😃 Test diseñados para validar los escenarios **Happy Paths** 
***
> **✨ FEATURE**: Booking | Confirmar funcionamiento de la api
> - [x] [TEST-001] - Confirmar si la api está disponible
>
> **✨ FEATURE**: Booking | Generar token de autenticación
> - [x] [TEST-002] - Validar la creacion de token
>
> **✨ FEATURE**: Booking | Crear una reserva
> - [x] [TEST-003] - Validar la creación de una nueva reserva
>
> **✨ FEATURE**: Booking | Consultar una reserva
> - [x] [TEST-004] - Validar que se pueda consultar una reserva por su BookingId
>
> **✨ FEATURE**: Booking | Actualizar una reserva
> - [x] [TEST-005] - Validar la actualizacion de una reserva
> - [x] [TEST-006] - Validar la actualizacion parcial de una reserva
>
> **✨ FEATURE**: Booking | Eliminar una reserva
> - [x] [TEST-007] - Validar la eliminación de una reserva actual
***
😢 Test diseñados para validar los escenarios **UNHappy Paths** 

> **✨ FEATURE**: UnHappy Paths | Validar que no se puedan crear/consultar/actualizar/eliminar reservas
> - [x] [TEST-008] - Validar la creacion de token
> - [x] [TEST-009] - Validar que no se pueda consultar una reserva eliminada

***

### CRITERIOS DE SALIDA
> ✅ Las pruebas han terminado y no hay defectos funcionales  
> ✅ Todos los defectos restantes tienen una severidad baja

### ENTEGRABLES DE PRUEBAS
> ☑️ Colección en postman, la ruta de su ubicación es: `Deliverables/booker-restful-collection.postman_collection.json`  
> ☑️ El plan de pruebas actual, la ruta de su ubicación es: `Deliverables/PLAN_DE_PRUEBAS_RESTFUL_BOOKER.markdown`  
> ☑️ El informe del resultado de pruebas, la ruta de su ubicación es: `target/karate-reports/karate-summary.html`   
> ☑️ El repositorio en GitHub con los scripts desarrollados: [RestFul-Booker-KARATE-Automation](https://github.com/HerbertMG/RestFul-Booker-KARATE-Automation)
***

### ❗ INFORMACIÓN ADICIONAL
>*Toda la información relacionada a la estructura del proyecto se especifica en el archivo README.md*
> *Las validaciones de la trama(response) se valida correctamente
***