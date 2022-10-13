# Trabajo en equipo
El lider de la primera iteracion sera: Ariel Cristaldo

La division de las Historias de Usuario sera la siguiente:
- Dar de baja una propiedad
    - **Encargados**: Marcela Stigelmeier y Matias Fernandez

- Consultar propiedad(exclusivo para propietarios)
    - **Encargados**: Emiliano Blazco y Ariel Cristaldo

- Ver detalles del alquiler(exclusivo para inquilinos)
    - **Encargados**: Marcela Stigelmeier, Matias Fernandez, Emiliano Blazco, Ariel Cristaldo, Guillermo Quintana, Marcelo Kachuk 

- Consultar alquileres obtenidos
    - **Encargados**: Guillermo Quintana, Marcelo Kachuk 

# Diseño OO

![](link-a-imagen)

# Wireframe y caso de uso

## Wireframe Dar de baja una propiedad

![](link-a-imagen)  

<br><br>
**Caso de uso**: Dar de baja una propiedad

**Descripción**: EL propietario ingresa en una propiedad propia publicada y busca la opción para desactivarla, presione sobre la opción y la publicación es ocultada de la vista principal de publicaciones  

**Precondición**: Que el usuario se encuentre con la sesión iniciada. que la propiedad se encuentre registrada. que la publicación se encuentre activa. que el usuario se encuentre dentro de la publicacion. Que no se encuentre ningun inquilino asociado a la propiedad.

**Postcondición**:  Se dio de baja la publicación  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el propietario una vez <br> dentro de la publicación selecciona el boton con <br> la etiqueta "Dar de baja"
    <td></td>
  </tr> 
  <tr>
    <td></td>
    <td><b>2</b>. El sistema verifica que no se encuentre osociado a ningun inquilino <br>a la propiedad y avisa al propietario que su publicación <br> fue dada de baja de manera exitosa
  </tr>
</table>

<u>**Flujo Alternativo de Eventos**.</u>  
**Paso 2:** El sistema detecta que hay un inquilino asociado a la propiedad. Entonces avisa al propietario de esto y no se desactiva la publicación.

## Wireframe Consultar propiedad(exclusivo para propietarios)

![](link-a-imagen)  

<br><br>
**Caso de uso**: Consultar propiedad

**Descripción**: El propietario ingresa en una propiedad propia publicada y el sistema despliega toda la informacion asociada a la publicacion con las respectivas acciones de desactivacion y modificacion asociada a la publicacion. <br>

**Precondición**: Que el usuario se encuentre con su sesión iniciada. Que la propiedad se encuentre registrada. <br>

**Postcondición**: --

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el propietario ingresa en <br>la publicación deseada presionando sobre el nombre de la publicación
    <td></td>
  </tr> 
  <tr>
    <td></td>
    <td><b>2</b>. El sistema despliegue la información asociada a la publicación como ser:<br> 
            - Foto asociada a la Propiedad <br>
            - Nombre de la publicacion <br>
            - Descripcion de publicacion<br>
            - Servicios y comodidades brindados por la propiedad <br>
            - Precio de la propiedad <br>
            - Ubicaion de la propiedad <br>
            - Mapa asociado a la publicacion<br>
   <tr>
    <td><b>3</b>. El propietario recorre la informacion asociada a la publicacion <br> scroleando con la rueda del mouse y una vez finazlizado <br> vuelve a la pagina principal
    <td></td>
  </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso**:El sistema no logra cargar la publicación. Entonces pide al usuario que recargue la página

<br><br>

## Wireframe Ver detalles del alquiler(exclusivo para inquilinos)
<br><br>
**Caso de uso**: Ver detalles del Alquiler  
**Descripción**: El inquilino navega por la pantalla de la propiedad seleccionada donde podrá ver la descripción de tal propiedad con sus respectivas características <br>
**Precondición**: Que el usuario se encuentre con su sesión iniciada. Haber seleccionado una publicación <br>
**Postcondición**:--

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el propietario ingresa en <br>la publicación deseada presionando sobre el nombre de la publicación
    <td></td>
  </tr> 
  <tr>
    <td></td>
    <td><b>2</b>. El sistema despliegue la información asociada a la publicación como ser:<br> 
            - Foto asociada a la Propiedad <br>
            - Nombre de la publicacion <br>
            - Descripcion de publicacion<br>
            - Servicios y comodidades brindados por la propiedad <br>
            - Precio de la propiedad <br>
            - Ubicaion de la propiedad <br>
            - Mapa asociado a la publicacion<br>
   <tr>
    <td><b>3</b>. El propietario recorre la informacion asociada a la publicacion <br> scroleando con la rueda del mouse y una vez finazlizado <br> vuelve a la pagina principal
    <td></td>
  </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso**: El sistema no logra cargar la publicación. Entonces pide al usuario que recargue la página


<br></br>

## Wireframe Consultar alquileres obtenidos

![](link-a-imagen)  

<br><br>

**Caso de uso**:  Consultar alquileres obtenidos.

**Descripción**: El usuario en su perfil puede ver los alquileres asociados a su cuenta.

**Precondición**:   Haber ingresado al sistema.
  
**Postcondición**: --
  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el usuario ingresa al apartado <br>“Mis Alquileres”.
    <td></td>
  </tr> 
  <tr>
    <td></td>
    <td><b>2</b>. El sistema muestra los alquileres asociados a ese usuario
   <tr>
    <td><b>3</b>. El usuario selecciona una publicación (alquiler).
    <td></td>
  </tr>
    <tr>
    <td></td>
    <td><b>4</b>. El sistema muestra la publicación (alquiler) en su contexto <br> (presentación como publicación).
  </tr>   
</table>

<u>**Flujo Alternativo de Eventos**.</u>  

**Paso** 2:  El sistema da aviso al usuario de que no tiene alquileres asociados y termina el caso de uso.




# Backlog de iteraciones
**Iteracion 2**
- Dar de baja una propiedad
- Consultar propiedad(exclusivo para propietarios)
- Ver detalles del alquiler(exclusivo para inquilinos)
- Consultar alquileres obtenidos


# Tareas

<br><br>

## **Tareas para Dar de baja una propiedad**

**Como** propietario <br/>
**Quiero** dar de baja una propiedad <br/>
**Para** ocultar una publicacion realizada <br/>

<u>Criterios de aceptación</u>

   - El propietario debe ingresar al sistema con su usuario.
   - La publicacion debe existir
   - La publicacion debe estar activa y no debe estar asociada a ningun inquilino

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
         - incorporacion de botón con la funcionalidad de dar de baja y la etiqueta "Dar de baja la publicación.
- Descripción del Uso del wireframe (Caso de Uso real)
- Establecer el cambio de estado en el atributo asociado a la publicación

<u>Criterios de aceptación</u>

   - El propietario debe ingresar al sistema con su usuario.
   - El sistema da aviso al usuario de que no tiene alquileres asociados y termina el caso de uso.

## **Tareas para Consultar propiedad (Exclusivo para propietarios)**

**Como** propietario <br/>
**Quiero** consultar una propiedad <br/>
**Para** ver los detalles de la misma <br/>
    
<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - Etiqueta que contenga el título de la publicación
        - Etiqueta que contenga la descripción de la publicación
        - Etiqueta que contenga el precio de la publicación
        - Sección donde se muestre las comodidades y servicios asociados a la propiedad
        - Complemento de mapa para ver la ubicación de la propiedad
        - Botón con la Etiqueta “Contactar”
        - Botón con la Etiqueta “Agregar a Favoritos”
        - Cuadro de Imagen para ver las imágenes asociadas a la publicación
        - Botón con la Etiqueta “Dar de Baja”
        - Botón con la Etiqueta “Modificar” 
- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Validación de campos con sus respectivas alertas
    
<br><br>

## **Tareas para Ver detalles del alquiler(exclusivo para inquilinos)**

**Como** inquilino <br/>
**Quiero** ver detalles de alquiler  <br/>
**Para** ver informacoin de la misma<br/>

<u>Criterios de aceptación</u>

- La publicacion debe estar activa

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - Etiqueta que contenga el título de la publicación
        - Etiqueta que contenga la descripción de la publicación
        - Etiqueta que contenga el precio de la publicación
        - Sección donde se muestre las comodidades y servicios asociados a la propiedad
        - Complemento de mapa para ver la ubicación de la propiedad
        - Botón con la Etiqueta “Contactar”
        - Botón con la Etiqueta “Agregar a Favoritos”
        - Cuadro de Imagen para ver las imágenes asociadas a la publicación
        - Botón con la Etiqueta “Dar de Baja”
        - Botón con la Etiqueta “Modificar” 
- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Validación de campos con sus respectivas alertas

<br><br>

## **Tareas para Consultar alquileres obtenidos**

**Como** usuario (propietario/inquilino)<br/>
**Quiero**  consultar mis alquileres obtenidos <br/>
**Para**  poder ver los alquileres que tengo asociado <br/>

<u>Criterios de aceptación</u>

- El usuario debe tener alquileres asociados(si no, se da aviso de tal circunstancia).

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
- Descripción del Uso del wireframe (Caso de Uso real)



# Retrospectiva de la Iteracion 1

Teniendo en cuenta lo realizado en la release 1 podemos decir que hubo un gran aporte por parte de todos los integrantes del grupo
cada uno cumpliendo con sus tareas asignadas y trabajando de manera correcta con el repositorio de github.
Por otra parte se realizo 3 actividades (Crear un nuevo usuario, Ingresar usuario, Registrar propiedad) totalmente funcionales de las 4 planteadas 
de las cuales 1(Modificar propiedad) solo se realizo la documentacion y se establecio entre los integrantes del equipo en moverla
a alguna iteracion futura(Iteracion 4), ya que nos dimos cuenta que iba a ser complicado integrar la funcionalidad en esta altura
del desarrollo por no poseer el registro de propiedades de manera totalmente funcional (Ya que no se posee integrado el manejo de imagenes y la integracion de la ubicacion)
Ademas de esto se establecio el una forma de trabajo de a pares, siguiendo con esta metodologia para las siguientes iteraciones.

Cambios en otros documentos realizados
- Se realizo una actualizacion de la Hoja de ruta que se encuentra en la Iteracion 0
    - Moviendo de iteracion la Historia de Usuario "Modificar propiedad"
