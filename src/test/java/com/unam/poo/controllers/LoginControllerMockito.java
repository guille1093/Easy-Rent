package com.unam.poo.controllers;

import java.util.HashMap;

import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.unam.poo.controllers.auth.LoginController;


@WebMvcTest(LoginController.class)
public class LoginControllerMockito {
    
    @Autowired
    private MockMvc mockMvc;
    private WebApplicationContext webApplicationContext;

    // @BeforeAll
    //    public void setUp() {
    //     this.mockMvc = MockMvcBuilders
    //     .webAppContextSetup(this.webApplicationContext)
    //     .apply(sharedHttpSession()) // use this session across requests
    //     .build();
    // }

    @Test
    public void userProfileTest() throws Exception{
        
        HashMap<String, Object> sessionattr = new HashMap<String, Object>();
        sessionattr.put("userId", 1);

        mockMvc.perform(MockMvcRequestBuilders.get("/").sessionAttrs(sessionattr).param("userId", 1)
        .andExpect(MockMvcResultMatchers.status().isOk()));
    }
}
