package com.unam.poo.controllers.auth;

import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/register")
@Controller
public class RegisterController {
    /**
        * @param model
        * @return
        */

    //esto es lo mismo que usar el @Autowired pero de forma manual y deja de dar la advertencia
    final
    UsuarioService usuarioService;

    public RegisterController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @GetMapping ("/authRegister")
    public String registerload(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "authRegister";
    }

    @PostMapping("/newRegister")
    public String register(@Validated @ModelAttribute("usuario") Usuario usuario, BindingResult result) {
        if (result.hasErrors()) {
            //aca deberia ir una pagina de error o algo xd
            return "authRegister";
        }
        usuarioService.saveUsuario(usuario);
        return "authRegister";
    }

}
