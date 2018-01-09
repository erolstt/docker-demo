package com.demo.apitests;

import io.restassured.http.ContentType;
import org.apache.http.HttpStatus;
import org.junit.Test;
import utils.HelloWorldTestConfiguration;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.equalTo;

public class HelloWorldTests extends HelloWorldTestConfiguration {

    @Test()
    public void testGetHelloWorld() {
        given().
                contentType(ContentType.JSON).
        when().
                get(ROOT_PATH_GREETING).
        then().
                statusCode(HttpStatus.SC_OK).
                body("content", equalTo("Hello, World!"));
    }

    @Test
    public void testHelloParam(){
        given().
                contentType(ContentType.JSON).
                param("name", "Dublin").
        when().
                get(ROOT_PATH_GREETING).
        then().
                statusCode(HttpStatus.SC_OK).
                body("content", equalTo("Hello, Dublin!"));
    }

    @Test
    public void testHelloParamNoValue(){
        given().
                contentType(ContentType.JSON).
                param("name", "").
        when().
                get(ROOT_PATH_GREETING).
        then().
                statusCode(HttpStatus.SC_OK).
                body("content", equalTo("Hello, World!"));
    }

}
