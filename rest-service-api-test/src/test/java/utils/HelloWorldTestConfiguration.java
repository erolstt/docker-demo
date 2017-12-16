package utils;

import io.restassured.RestAssured;
import org.junit.Before;

public class HelloWorldTestConfiguration {

    protected static String BASE_URL = System.getProperty("BASE_URL", "http://localhost:8080/");
    protected static String ROOT_PATH_GREETING = "greeting";

    @Before
    public void setup(){
        RestAssured.baseURI = BASE_URL;
    }

}

