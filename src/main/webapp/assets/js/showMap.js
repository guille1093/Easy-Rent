// function iniciarMap(){
//
//
//     // establecer un marker con el imagen map-marker-2-512.png
//     // var icono = {
//     //     url: '../../assets/img/map-marker-2-512.png',
//     //     scaledSize: new google.maps.Size(30, 30),
//     //     origin: new google.maps.Point(0,0),
//     //     anchor: new google.maps.Point(16, 31)
//     //
//     // };
//
//     // Obtenemos la posicion de la publicacion
//     var posicion = {lat: {{$publicacion->latitud_publicacion}}, lng: {{$publicacion->longitud_publicacion}}};
//
//     // Creamos el mapa
//     var map = new google.maps.Map(document.getElementById('map'), {
//         zoom: 15,
//         center: posicion
//     });
//
//     // Creamos el marker
//     var marker = new google.maps.Marker({
//         position: posicion,
//         map: map,
//         // icon: icono
//     });
//
//
// }