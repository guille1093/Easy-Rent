package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;

import org.junit.jupiter.api.Test;

import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class RegisterControllerTests {
    
    static OkHttpClient cliente = OkHttpSingleton.getInstance().getClient();

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

    @Test
    public void testRegister() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/register/authRegister")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }
}
