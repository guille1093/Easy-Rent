package com.unam.poo.controllers.auth;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.unam.poo.controllers.PanelUsrController;
import com.unam.poo.dto.LoginDto;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
 
@Controller
public class LoginController { 

    @Autowired
    UsuarioService usuarioService; 
    
    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    PanelUsrController panelUsrController;

    @GetMapping("/login")
    public String loginload() {
        return "authLogin";
    } 

//    public String loginredirect () {
//        Model m
//        return panelUsrController.panelUsr();}

    @PostMapping("/login")
    public String login(@Validated @ModelAttribute("LoginDto") LoginDto loginDto, HttpServletRequest request, BindingResult result) {
        if (result.hasErrors()) { 
          return "Error";
        }  
        try { 
            Usuario user = usuarioService.getUsuarioByCorreo(loginDto.getCorreo().toString()); 
            if (user != null){  
                if (passwordEncoder.matches(loginDto.getContraseña(), user.getContraseña())){
                    //Coinciden entonces:
                    System.out.println("AUTENTICADO: Redireccionando...");
                    HttpSession httpSession = request.getSession(true);
                    httpSession.setAttribute("usuario", user); 

                    /*C1: Ejemplo de como mapear la variable de Session Storage para su uso */

                    System.out.println("HTTP SESSION USER (Objeto): " + httpSession.getAttribute("usuario"));

                    System.out.println("Para mapear como un objeto Usuario de nuestro modelo:");
                    ObjectMapper mapper = new ObjectMapper();

                    System.out.println("Se transforma el objeto generico de la session storage en Json");
                    String usuarioJson = mapper.writeValueAsString(httpSession.getAttribute("usuario"));

                    System.out.println("Se transforma el Json en un objeto Usuario de nuestro modelo");
                    Usuario userMapped = mapper.readValue(usuarioJson, Usuario.class);

                    System.out.println("Se realiza el mapping con exito, los datos son: ");
                    System.out.println("ID: " + userMapped.getId());
                    System.out.println("Nombre: " + userMapped.getNombre());
                    System.out.println("Apellido: " + userMapped.getApellido());
                    System.out.println("DNI: " + userMapped.getDni());
                    System.out.println("Correo: " + userMapped.getCorreo());  

                    System.out.println("Mediante controladores podemos usar el dato de ID de este usuario para obtener publicaciones, etc.");
                    
                    /* Todo lo de arriba hasta el comentario C1 es opcional y se puede eliminar o comentar a gusto */
                    
                    /* cambiar para redireccionar a panel de usuario -> */
                    return "welcome";
                }else{
                    System.out.println("ERROR: Contraseña incorrecta");
                    return "authLogin";
                }
            }else{
                System.out.println("ERROR: Usuario no registrado");
                return "ERROR: Usuario no registrado";
            } 
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return "ERROR: " + e.getMessage();
        }


    }
}