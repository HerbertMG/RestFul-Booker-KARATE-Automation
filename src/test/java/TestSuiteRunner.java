import com.intuit.karate.junit5.Karate;
import io.restassured.RestAssured;
import io.restassured.response.Response;

public class TestSuiteRunner {

    @Karate.Test
    Karate testSuit(){
        return Karate.run()
                .tags("@Integracion")
                .karateEnv("uat")
                .relativeTo(getClass());
    }

    public Response performRestAssuredRequest() {
        return RestAssured.given()
                .baseUri("https://restful-booker.herokuapp.com")
                .get("/endpoint");
    }
}