# Trabajo en equipo
El lider de la primera iteracion sera: Matias Fernandez

La division de las Historias de Usuario sera la siguiente:
- Crear un nuevo usuario
    - Encargados: Marcela Stigelmeier y Matias Fernandez

- Ingresar usuario
    - Encargados: Emiliano Blazco y Ariel Cristaldo

- Registrar propiedad
    - Encargados: Marcela Stigelmeier, Matias Fernandez, Emiliano Blazco, Ariel Cristaldo, Guillermo Quintana, Marcelo Kachuk 

- Modificar propiedad
    - Encargados: Guillermo Quintana, Marcelo Kachuk 

# Diseño OO


# Wireframe y caso de uso

## Wireframe Ingresar Usuario

![](link-a-imagen)  

<br><br>
**Caso de uso**: Ingresar Usuario  
**Descripción**: El usuario quiere ingresar a su cuenta ya creada en la plataforma, se dirige al apartado de Inicio de Sesión e ingresa los datos de su cuenta.  
**Precondición**:
- Tener una cuenta registrada   

**Postcondición**: ---  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando <br>el usuario se dirige al apartado de <br>“Inicio de  Sesion”</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b>. El sistema despliega un formulario de <br>Identificación con dos campos los <br>cuales tienen asociado la etiqueta de
    <br>Campo-1: Usuario o E-mail
    <br>Campo-2: Contraseña</td>
  </tr>
  <tr>
    <td><b>3</b>. El usuario selecciona el campo con la etiqueta asociada “Usuario o E-mail” <br>y lo completa</td>
    <td></td>
  </tr>
  <tr>
    <td><b>4</b>. El usuario selecciona el campo con la <br>etiqueta asociada “Contraseña” y lo <br>completa</td>
    <td></td>
  <tr>
    <td><b>5</b>. El usuario presiona sobre el botón con la etiqueta “Iniciar Sesión”</td>
    <td></td>
    
  </tr>
  <tr>
    <td></td>
    <td><b>6</b>. El sistema valida los campos cargados <br>y redirecciona al usuario a la pantalla principal con su cuenta cargada</td>
 </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso 2**: El sistema no logra cargar los campos. Se reinicia la interfaz  
**Paso 4.1**: El sistema detecta que se cargó un usuario erróneo en el campo “Usuario o E-mail”. Muestra un mensaje de error y remarca con color rojo el cuadro con el usuario erróneo  
**Paso 4.2**: El sistema detecta que la contraseña ingresada no coincide con el usuario . Muestra un mensaje de error y remarca con color rojo el cuadro con la contraseña errónea

<br><br>

## Wireframe Registrar Propiedad
<br><br>
**Caso de uso**: Registrar Propiedad  
**Descripción**: El propietario ingresa en el apartado de propiedades y carga información relacionada a la propiedad a alquilar como ser la localidad/provincia donde se encuentra la propiedad, dirección de la propiedad, tipo de propiedad (casa, local, habitación única), precio, Imagen del lugar y confirma los datos cargados.  
**Precondición**: 
- Poseer una cuenta creada. Que el usuario se encuentre con su sesión iniciada.  

**Postcondición**: 
- Se registró de manera exitosa la propiedad

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el propietario 
    ingresa en el apartado de Publicar presionando el botón ”Publicar”.</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b>. El sistema despliega un formulario de 5 pasos que contiene distintos campos
Paso 1: <br> Campo-1: Tipo de propiedad</td>
  </tr>
  <tr>
    <td><b>3</b>. El propietario selecciona el tipo de propiedad utilizando la lista desplegable que tiene la etiqueta asociada “Tipo de propiedad” y presiona en el botón de siguiente para avanzar en el formulario.</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>4</b>. El sistema despliega el segundo paso del formulario con los campos Paso 2: <br> Campo-1: Calle <br> Campo-2: Altura <br> Campo-3: Provincia <br> Campo-4: Ciudad <br> Campo-5: Ubicación</td>
  <tr>
    <td><b>5</b>. El propietario selecciona el campo con la etiqueta asociada “Calle” y lo completa.</td>
    <td></td>
  </tr>
  <tr>
    <td><b>6</b>. El propietario selecciona el campo con la etiqueta asociada “Altura” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>7</b>. El propietario selecciona una de las opciones de la lista desplegable con la etiqueta asociada “Provincia” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>8</b>. El propietario selecciona una de las opciones de la lista desplegable con la etiqueta asociada “Ciudad” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>9</b>. El propietario selecciona en el mapa asociado con la etiqueta asociada “Ubicación” la ubicación real de la propiedad, lo completa y presiona en el botón de siguiente para avanzar en el formulario.</td>
    <td></td>
 </tr>
 <tr>
    <td></td>
    <td><b>10</b>. El sistema despliega el tercer paso del formulario con los campos Paso 3: <br> Campo-1: Ambientes <br> Campo-2: Dormitorios <br> Campo-3: Baños <br> Campo-4: Cochera <br> Campo-5: Superficie cubierta <br> Campo-6: Superficie total <br> Campo-7: Precio
</td>
 </tr>
 <tr>
    <td><b>11</b>. El propietario selecciona el campo con la etiqueta asociada “Ambientes” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>12</b>. El propietario selecciona el campo con la etiqueta asociada “Dormitorios” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>13</b>. El propietario selecciona el campo con la etiqueta asociada “Baños” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>14</b>. El propietario selecciona el campo con la etiqueta asociada “Cochera” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>15</b>. El propietario selecciona el campo con la etiqueta asociada “Superficie cubierta” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>16</b>. El propietario selecciona el campo con la etiqueta asociada “Superficie total” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>17</b>. El propietario selecciona el campo con la etiqueta asociada “Precio”, lo completa y presiona en el botón de siguiente para avanzar en el formulario.</td>
    <td></td>
 </tr>
 <tr>
    <td></td>
    <td><b>18</b>. El sistema despliega el cuarto paso del formulario con los campos Paso 4: <br> Campo-1: Título de la Publicación <br> Campo-2: Descripción <br> Campo-3: Foto de la propiedad
</td>
 </tr>
 <tr>
    <td><b>19</b>. El propietario selecciona el campo con la etiqueta asociada “Título de la Publicación” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>20</b>. El propietario selecciona el campo con la etiqueta asociada “Descripción” y lo completa.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>21</b>. El propietario selecciona el campo con la etiqueta asociada “Foto de la propiedad” y carga de una a tres fotos relacionadas a las propiedad y presiona en el botón de siguiente para avanzar en el formulario.</td>
    <td></td>
 </tr>
 <tr>
    <td></td>
    <td><b>22</b>. El sistema despliega el quinto paso del formulario con los campos Paso 5: <br> Sección-1: Características específicas  <br>Sección-2: Equipamientos <br> Sección-3: Servicios <br> Sección-4: Ambientes
</td>
 </tr>
 <tr>
    <td><b>23</b>. El propietario selecciona mediante el uso de checkbox opciones en la sección con la etiqueta”Características específicas”.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>24</b>.El propietario selecciona mediante el uso de checkbox opciones en la sección con la etiqueta”Equipamientos”.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>25</b>. El propietario selecciona mediante el uso de checkbox opciones en la sección con la etiqueta”Servicios”.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>26</b>. El propietario selecciona mediante el uso de checkbox opciones en la sección con la etiqueta”Ambientes”.</td>
    <td></td>
 </tr>
 <tr>
    <td><b>27</b>. Una vez ingresado toda la información relacionada a la propiedad el propietario presiona en el botón con la etiqueta “Publicar”.</td>
    <td></td>
 </tr>
 <tr>
    <td></td>
    <td><b>28</b>. El sistema valida los campos cargados y muestra el mensaje  “Registro exitoso” . y redirecciona al usuario a sus publicaciones realizadas.</td>
 </tr>
</table>

<u>**Flujo Alternativo de Eventos**.</u>  

**Paso 2**: El sistema no logra cargar el formulario. Muestra un mensaje de error y pide que se actualice la página  
**Paso 4**: El sistema no logra cargar el formulario. Muestra un mensaje de error y pide que se actualice la página  
**Paso 10**: El sistema no logra cargar el formulario. Muestra un mensaje de error y pide que se actualice la página  
**Paso 18**: El sistema no logra cargar el formulario. Muestra un mensaje de error y pide que se actualice la página  
**Paso 22**: El sistema no logra cargar el formulario. Muestra un mensaje de error y pide que se actualice la página  
**Paso 28**: El sistema detecta que un campo obligatorio no fue cargado. Indica cuál es el campo que no cumple con lo requerido.  
**Paso 28**: El sistema detecta un dato no válido, Se le informa al usuario y vuelve a ingresar la información.

<br></br>

## Wireframe Modificar Propiedad

![](link-a-imagen)  

<br><br>

**Caso de uso**: Modificar Propiedad  
**Descripción**: El propietario ingresa en una propiedad propia publicada y busca la información a modificar, una vez encontrada la selecciona y realiza los cambios pertinentes confirmando los cambios realizados.  
**Precondición**:  
- Poseer una cuenta creada.Que el usuario se encuentre con su sesión iniciada.
- Que la propiedad se encuentre registrada.  
  
**Postcondición**: 
- Se cambiaron de manera exitosa los datos requeridos.
  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b>. Este caso de uso comienza cuando el usuario ingresa en el apartado de propiedades y selecciona una de las propiedades que se encuentran registradas a su cuenta y presiona en el botón con la etiqueta “modificar”</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b>. El sistema deshabilita la publicación referente a la propiedad impidiendo interactuar a otro usuario (Inquilino)</td>
  </tr>
  <tr>
    <td></td>
    <td><b>3</b>. El sistema despliega el formulario utilizado en el CU-05(Registrar Propiedad) con la información asociada al alquiler seleccionado</td>
    <td></td>
  </tr>
  <tr>
    <td><b>4</b>. El propietario busca el dato a cambiar, lo modifica y se dirige al paso 5 del formulario y presiona en el botón con la etiqueta “Guardar Modificación”</td>
    <td></td>
  <tr>
    <td></td>
    <td><b>5</b>. El sistema verifica que todos los campos se encuentren cargados de manera correcta y avisa que todos los cambios se guardaron de manera correcta</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>6</b>. El sistema habilita la publicación referente a la propiedad nuevamente</td>
 </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso 2**: El sistema no logra deshabilitar la publicación y pide al usuario que vuelva a ingresar en la publicación.  
**Paso 3**: El sistema no logra cargar el formulario. Pide que se vuelva ingresar en el sitio.  
**Paso 5**: El sistema detecta que un campo obligatorio no fue cargado. Indica cual es el campo que no cumple con lo requerido.  
**Paso 5**: El sistema detecta un dato no válido, Se le informa al usuario y vuelve a ingresar la información





# Backlog de iteraciones
**Iteracion 1**
- Crear un nuevo usuario
- Ingresar usuario
- Registrar propiedad
- Modificar propiedad


# Tareas

<br><br>

## **Tareas para Ingresar usuario**

**Como** Inquilino/Propietario/Administrador  
**Quiero** poder ingresar mi nombre de usuario y contraseña  
**Para** poder hacer uso de las funcionalidades del sistema e ingresar a las características relacionadas a mi cuenta

<u>Criterios de aceptación</u>

- El nombre de usuario debe existir dentro de la base de datos  
- Cuando el ingreso del usuario y contraseña son correctos, entonces el sistema permitirá el ingreso  
- Si el usuario ingresa una contraseña incorrecta, el sistema mostrara la opcion de restablecer contraseña

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - Posicionamiento de campo de texto para completar “Usuario”
        - Posicionamiento de campo de texto para completar “Contraseña”
        - Boton de accion de “Iniciar Sesión” para enviar el formulario
- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Establecer funcion de envio de formulario 
- Validación de campos con sus respectivas alertas

<br><br>

## **Tareas para Registrar Propiedad**

**Como** Propietario  
**Quiero** registrar una propiedad  
**Para** que cualquier persona pueda alquilarla

<u>Criterios de aceptacion</u>

 - Se debe poder cargar Direccion/Ubicacion, Caracteristicas generales y Imagenes del lugar
 - Una propiedad está registrada cuando todos los campos obligatorios que posea hayan sido cargados y enviados.

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario multipasos donde contendrán los siguientes elementos:
        - Posicionamiento de lista desplegable para completar “Tipo de propiedad”
        - Posicionamiento de campo de texto para completar “Calle”
        - Posicionamiento de campo de texto para completar “Altura”
        - Posicionamiento de lista desplegable para completar “Provincia”
        - Posicionamiento de lista desplegable para completar “Ciudad”
        - Posicionamiento de campo de texto para completar “Ambientes”
        - Posicionamiento de campo de texto para completar “Dormitorios”
        - Posicionamiento de campo de texto para completar “Baños”
        - Posicionamiento de campo de texto para completar “Cochera”
        - Posicionamiento de campo de texto para completar “Superficie cubierta”
        - Posicionamiento de campo de texto para completar “Superficie total”
        - Posicionamiento de campo de texto para completar “Precio”
        - Posicionamiento de campo de texto para completar “Título de la Publicación”
        - Posicionamiento de campo de texto para completar “Descripción”
        - Posicionamiento de campo de inserción de imágenes para completar “Foto de la propiedad”
        - Posicionamiento de sección que posea los siguientes checkbox “Características específicas”
            - Acceso para personas con discapacidad
            - Permiten mascotas
        - Posicionamiento de sección que posea los siguientes checkbox “Equipamientos”
            - Aire acondicionado
            - Amoblado
            - Calefacción
            - Cocina equipada
            - Lavarropas
            - Termotanque
            - Vigilancia
        - Posicionamiento de sección que posea los siguientes checkbox  “Servicios”
            - Ascensor
            - Internet/Wifi
            - Lavandería
            - Servicio de limpieza
        - Posicionamiento de sección que posea los siguientes checkbox  “Ambientes”
            - Balcón
            - Cocina
            - Comedor
            - Hall
            - Jardín
            - Lavadero
            - Living
            - Living comedor
            - Patio
            - Sótano
            - Terraza
        - Boton de accion de “Publicar” para enviar el formulario
        - Botones de “Siguiente” y “Previo” para moverse por el formulario 
- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Establecer funcion de envio de formulario 
- Validación de campos con sus respectivas alertas

<br><br>

## **Tareas para Modificar Propiedad**

**Como** propietario  
**Quiero** modificar una propiedad  
**Para** actualizar características de la publicación o corregirlas. 
 
<u>Criterios de aceptación:</u>

- El propietario debe ingresar al sistema con su usuario.
- La publicación debe existir.
- La publicación debe estar activa y en curso (para que no hayan modificaciones una vez confirmado un alquiler).
- Se deben validar los nuevos datos.

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Descripción del Uso del wireframe (Caso de Uso real)
- Validación de campos con sus respectivas alertas




# Retrospectiva

