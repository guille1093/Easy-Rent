package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;

import org.junit.jupiter.api.Test;

import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class LoginControllerTests {
    static OkHttpClient cliente = OkHttpSingleton.getInstance().getClient();  

    @Test
    public void testLogin() throws IOException {
        RequestBody formBody = new FormBody.Builder()
        .add("correo", "javier@test.com")
        .add("contraseña", "123456789")
        .build();

        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/login")
        .post(formBody)
        .build();
        
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testLogout() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/logout")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testLoginPage() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/loginPage")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }
}
