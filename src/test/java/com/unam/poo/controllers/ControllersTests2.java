package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.sql.SQLException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.web.bind.annotation.RequestAttribute;

import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class ControllersTests2 {
    static OkHttpClient cliente;
     

    

    @BeforeAll
    public static void beforeClassTests() throws SQLException {
      cliente = new OkHttpClient();
    }
    
    @Test
    public void testMain() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }
    
    @Test
    public void testCrearPublicacion() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/publicacion/crearPublicacion")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());

       /* /nuevaPublicacion */ 
        
    }

    @Test
    public void testConsultarPublicacion() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/publicacion/consultarPublicacion")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testVerPublicaciones() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/publicacion/verPublicaciones")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testConsultarAlquiler() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/publicacion/consultarAlquiler")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testPanelUsr() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/panel/panelusr")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    @Test
    public void testForgotPsw() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/forgotpsw/")
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

    @Test
    public void testRegister() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/register/authRegister")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }


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
    public void testNewRegister() throws IOException{
        
        RequestBody formBody = new FormBody.Builder()
        .add("nombre", "test")
        .add("apellido", "test")
        .add("dni", "123458989")
        .add("correo", "correo@test.com")
        .add("telefono", "123456")
        .add("ciudad", "1")
        .add("contraseña", "123456789")
        .add("floatingPassword2", "123456789")
        .build();
        
        Request request = new Request.Builder()
        .url("http://localhost:8080/register/newRegister")
        .post(formBody)
        .build();
            
        Call call = cliente.newCall(request);
        Response response = call.execute();

        assertEquals(200, response.code());
    } 

    //No funciona
    //Necesario inyectar atributos de sesion "userID" 
    //O intentar que los tests corran en una misma sesion
    @Test
    public void testUserProfile() throws IOException{
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/user/profile")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }

    
}
        

