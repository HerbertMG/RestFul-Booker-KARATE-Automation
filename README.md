# AUTOMATIZACIÓN DE PRUEBAS A RESTFUL-BOOKING API - Karate Framework

Este es un proyecto de Automatización que utiliza KARATE Framework
para la creación de un script de automatización que permita probar la
API [RESTFUL - BOOKER](https://restful-booker.herokuapp.com/apidoc/index.html)

Este proyecto ha sido desarrollado por [Herbert Melendez](https://www.linkedin.com/in/herb-me-ga/) para mejorar en el
desarrollo en pruebas avanzadas de api automation.

Plan de pruebas y consultas en postman en la ruta 
> src/test/Deliverables/booker-restful-collection.postman_collection.json
> 
> src/test/Deliverables/PLAN_DE_PRUEBAS_RESTFUL_BOOKER.markdown
***

## Detalles del Tester

* Name: `Herbert Melendez`
* Country: `Paru`
* City: `Lima`
* LinkedIn: [https://www.linkedin.com/in/herb-me-ga/](https://www.linkedin.com/in/herb-me-ga/)

***

##  Lenguajes & Frameworks

Este proyecto utiliza los siguientes lenguajes y frameworks:

* [KARATE](https://serenity-bdd.github.io/theserenitybook/latest/index.html) como framework de pruebas
  automatizadas.
* [Cucumber](https://cucumber.io/) como software de testing BDD que permite elaborar pruebas a partir de AC.
* [Java 11](https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html) como lenguaje de
  programación.
* [MAVEN](https://maven.apache.org/download.cgi?.) como herramienta de compilación.

***

##  Pre-requisitos: 

1. Descargar la última versión estable de Java
   JDK [aquí](https://www.oracle.com/co/java/technologies/javase/jdk11-archive-downloads.html)
2. Instalar git desde [aquí](https://git-scm.com)
3. Instalar MAVEN Tool desde [aquí](https://gradle.org/install/)

**🗒️ Nota**: `pom.xml` tiene toda la configuración del proyecto instalada

👀 Adicional en su **IDE** de preferencia deberá tener instalados los siguientes plugins:

1. [x] *JUnit*
2. [x] *Cucumber for Java*
3. [x] *Gherkin*
4. [x] *Lombok*

***

### 🚀 Pruebas de Integración continua

> Con GitHub Actions, puedes crear flujos de trabajo de integración continua (IC) directamente en tu repositorio de
> GitHub.

Para este proyecto se hace uso de GitHUb Actions como herramienta para la integración continua del framework de
automatización desarrollado.

La ruta del pipeline se encuentra en: `.github/workflows/Restful-Booker-Automation.yml`

**⏱️ Ejecución automatizada**:   
El pipepile se ejecutará periódicamente de forma automática por medio la siguiente 'cron schedule expression':

```yml
on:
   schedule:
    - cron: "00 00 * * THU"
```

**📄️ Generando los reportes de prueba en KARATE**:  
Con la ejecución de la tarea `report:` del pipepile se generará el reporte en la ruta `html:target/karate-html-report` donde se encontrará el archivo `.html`
con los escenarios de prueba ejecutados.

***

### 🧪 Casos de prueba contemplados

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

## 🏗️ Estructura del proyecto

El proyecto tiene scripts de compilación para Maven y sigue la  siguiente estructura:

```Gherkin
src
+ main                                      | Source main
  + test 
      +	Deliverables                        | Test PLAN and manual cases from Postman
      + java                                | Test runners and supporting code
        + A_HealthCheck			    | Contains(features and assertion)
        + B_AuthTest			    | Contains(features and assertion)
	+ C_CreateBookin		    | Contains(features and assertion)
        + D_Get_Booking			    | Contains(features and assertion)
	+ E_UpdateBooking		    | Contains(features and assertion)
        + F_PartialUpdate                   | Contains(features and assertion)
	+ G_DeleteBooking	            | Contains(features and assertion)
        + H_UnHappyPath
	+ HELPER			    |Methods that provide help
        + logback-test.xml                  | Config logs file
        + karate-config.js                  | General properties of Karate
```

***

## ▶️ Ejecución del proyecto:

1. Descarga el proyecto desde GitHub
    * **Opción 1** (HTTPS): `https://github.com/HerbertMG/RestFul-Booker-KARATE-Automation.git`
    * **Opción 2:** Descárgalo como archivo Zip y extráelo

***

2. **CD** en la carpeta `RestFul-Booker-KARATE-Automation`.
3. Configurar MAVEN
    * Ejecute el siguiente comando en el terminal:`mvn clean install`.

***

4. Ejecutar las pruebas en el proyecto

* Ir a las clase de la carpeta **TestSuiteRunner.java** `src/test/java/TestSuiteRunner.java` y ejecutar
  el Runner.

***

## 📄 Generación de informes

El informe al detalle con los pasos y resultados de las pruebas se registrará después de la ejecución en la ruta:
`Restful-Booker-Automation/target/karate-reports/karate-summary.html`.

***