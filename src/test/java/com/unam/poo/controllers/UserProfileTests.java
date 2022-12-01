package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;

import org.junit.jupiter.api.Test;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class UserProfileTests {
    
    static OkHttpClient cliente = OkHttpSingleton.getInstance().getClient();
    
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
