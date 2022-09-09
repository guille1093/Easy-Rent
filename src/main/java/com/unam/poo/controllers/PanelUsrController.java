package com.unam.poo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PanelUsrController {
    @GetMapping("/panelusr")
    public String panelUsr() {
        return "panelusr";
    }
}
