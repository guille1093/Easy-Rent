package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.sql.SQLException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;


import okhttp3.OkHttpClient;
import okhttp3.Request;
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

    // @Test
    // public void testCrearPublicacion() throws IOException {
    //     Request requerimiento = new Request.Builder()
    //     .url("http://localhost:8080/publicacion/verPublicaciones")
    //     .build();
    //     Response respuesta = cliente.newCall(requerimiento).execute();
    //     assertEquals(200, respuesta.code());
    

    
    
}
        

