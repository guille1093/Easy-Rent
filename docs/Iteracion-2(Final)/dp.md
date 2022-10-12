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
  <tr>
</table>

<u>**Flujo Alternativo de Eventos**.</u>  
**Paso 2:** El sistema detecta que hay un inquilino asociado a la propiedad. Entonces avisa al propietario de esto y no se desactiva la publicación.

   
 **_Las siguientes tareas comprenderan el desarrollo de la historia de usuario_**
   


## Wireframe Consultar propiedad(exclusivo para propietarios)

![](link-a-imagen)  

<br><br>
**Caso de uso**:
**Descripción**: 
**Precondición**:
**Postcondición**:  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b>
  </tr>
  <tr>
    <td><b>3</b></td>
    <td></td>
  </tr>
  <tr>
    <td><b>4</b></td>
    <td></td>
  <tr>
    <td><b>5</b></td>
    <td></td>
    
  </tr>
  <tr>
    <td></td>
    <td><b>6</b></td>
 </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso**:  
**Paso**:

<br><br>

## Wireframe Ver detalles del alquiler(exclusivo para inquilinos)
<br><br>
**Caso de uso**:   
**Descripción**: 
**Precondición**:
**Postcondición**:

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b></td>
  </tr>
  <tr>
    <td><b>3</b></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>4</b></td>
  <tr>
    <td><b>5</b></td>
    <td></td>
  </tr>
  <tr>
    <td><b>6</b></td>
    <td></td>
 </tr>
 <tr>
    <td><b>7</b></td>
    <td></td>
 </tr>
 <tr>
    <td><b>8</b></td>
    <td></td>
 </tr>
 <tr>
    <td><b>9</b></td>
    <td></td>
 </tr>
 <tr>
    <td></td>
    <td><b>10</b></td>
 </tr>
</table>

<u>**Flujo Alternativo de Eventos**.</u>  

**Paso**:

<br></br>

## Wireframe Consultar alquileres obtenidos

![](link-a-imagen)  

<br><br>

**Caso de uso**:  

**Descripción**: 

**Precondición**:   
  
**Postcondición**:
  

**Flujo Típico de eventos**:
<table>
  <tr>
    <th>Actor</th>
    <th>Sistema</th>
  </tr>
  <tr>
    <td><b>1</b></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td><b>2</b></td>
  </tr>
  <tr>
    <td></td>
    <td><b>3</b></td>
  </tr>
  <tr>
    <td><b>4</b></td>
    <td></td>
  <tr>
    <td></td>
    <td><b>5</b></td>
  </tr>
  <tr>
    <td></td>
    <td><b>6</b></td>
 </tr>
</table>


<u>**Flujo Alternativo de Eventos**.</u>  

**Paso**:



# Backlog de iteraciones
**Iteracion 2**
- Dar de baja una propiedad
- Consultar propiedad(exclusivo para propietarios)
- Ver detalles del alquiler(exclusivo para inquilinos)
- Consultar alquileres obtenidos


# Tareas

<br><br>

## **Tareas para Dar de baja una propiedad**

**Como** propietario
**Quiero** dar de baja una propiedad
**Para** ocultar una publicacion realizada

<u>Criterios de aceptación</u>

   -El propietario debe ingresar al sistema con su usuario.
   -La publicacion debe existir
   -La publicacion debe estar activa y no debe estar asociada a ningun inquilino

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
         -  incorporacion de botón con la funcionalidad de dar de baja y la etiqueta "Dar de baja la publicación.
- Descripción del Uso del wireframe (Caso de Uso real)
- Establecer el cambio de estado en el atributo asociado a la publicación


## **Tareas para Consultar propiedad(exclusivo para propietarios)**

**Como**  
**Quiero**  
**Para**

<u>Criterios de aceptación</u>

-

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - (Colocar aca el desarrollo del wireframe)


- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Validación de campos con sus respectivas alertas

<br><br>

## **Tareas para Ver detalles del alquiler(exclusivo para inquilinos)**

**Como**  
**Quiero**  
**Para**

<u>Criterios de aceptación</u>

-

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - (Colocar aca el desarrollo del wireframe)


- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Validación de campos con sus respectivas alertas

<br><br>

## **Tareas para Consultar alquileres obtenidos**

**Como**  
**Quiero**  
**Para**

<u>Criterios de aceptación</u>

-

<u>Las siguientes tareas comprenderán el desarrollo de la Historia de Usuario:</u>

- Creación de wireframe
    - Creación del formulario donde contendrán los siguientes elementos
        - (Colocar aca el desarrollo del wireframe)


- Descripción del Uso del wireframe (Caso de Uso real)
- Creación del modelo de datos(Entidad/es de Base de datos)
- Validación de campos con sus respectivas alertas



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
