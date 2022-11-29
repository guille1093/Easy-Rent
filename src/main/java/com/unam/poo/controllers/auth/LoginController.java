package com.unam.poo.controllers.auth;
import com.unam.poo.controllers.PanelUsrController;
import com.unam.poo.dto.LoginDto;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse; 

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
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

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException { 
        request.getSession().removeAttribute("usuario"); 
        request.getSession().removeAttribute("autenticado"); 
        response.sendRedirect(request.getContextPath() + "/");
        return "welcome";
    }

    @GetMapping("/loginPage")
    public String loginload() {
        return "authLogin";
    } 

//    public String loginredirect () {
//        Model m
//        return panelUsrController.panelUsr();}

    @PostMapping("/login")
    public String login(@Validated @ModelAttribute("LoginDto") LoginDto loginDto, HttpServletRequest request, HttpServletResponse response, BindingResult result) {
        if (result.hasErrors()) { 
          return "Error";
        }  
        try { 
            Usuario user = usuarioService.getUsuarioByCorreo(loginDto.getCorreo().toString()); 
            if (user != null){  
                if (passwordEncoder.matches(loginDto.getContraseña(), user.getContraseña())){
                    //Coinciden entonces:
                    System.out.println("AUTENTICADO: Redireccionando...");
                   
                    
                    request.getSession().setAttribute("userId", user.getId()); 
                    request.getSession().setAttribute("autenticado", "true"); 
                    
                    /*C1: Ejemplo de como mapear la variable de Session Storage para su uso

                    HttpSession httpSession = request.getSession();
                    request.getSession().setAttribute("usuario", user); 

                    System.out.println("HTTP SESSION USER (Objeto): " + httpSession.getAttribute("usuario"));

                    System.out.println("Para mapear como un objeto Usuario de nuestro modelo:");
                    ObjectMapper mapper = new ObjectMapper();

                    System.out.println("Se transforma el objeto generico de la session storage en Json");
                    String usuarioJson = mapper.writeValueAsString(httpSession.getAttribute("usuario"));
                    request.getSession().removeAttribute("usuario"); 

                    System.out.println("Se transforma el Json en un objeto Usuario de nuestro modelo");
                    Usuario userMapped = mapper.readValue(usuarioJson, Usuario.class);
                    
                    System.out.println("Se realiza el mapping con exito, los datos son: ");
                    System.out.println("ID: " + userMapped.getId());
                    System.out.println("Nombre: " + userMapped.getNombre());
                    System.out.println("Apellido: " + userMapped.getApellido());
                    System.out.println("DNI: " + userMapped.getDni());
                    System.out.println("Correo: " + userMapped.getCorreo());  

                    System.out.println("Mediante controladores podemos usar el dato de ID de este usuario para obtener publicaciones, etc.");
                    
                    Todo lo de arriba hasta el comentario C1 es opcional y se puede eliminar o comentar a gusto */
                    
                    /* cambiar para redireccionar a panel de usuario -> */ 
                    
                    // response.sendRedirect(request.getContextPath() + "/");
                    return "redirect:/user/profile";
                    /* Alternativa: response.sendRedirect() */
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