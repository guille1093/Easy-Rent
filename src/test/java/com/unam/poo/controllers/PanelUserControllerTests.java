package com.unam.poo.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;

import org.junit.jupiter.api.Test;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class PanelUserControllerTests {
    static OkHttpClient cliente = new OkHttpClient();

    @Test
    public void testPanelUsr() throws IOException {
        Request requerimiento = new Request.Builder()
        .url("http://localhost:8080/panel/panelusr")
        .build();
        Response respuesta = cliente.newCall(requerimiento).execute();
        assertEquals(200, respuesta.code());
    }
}
