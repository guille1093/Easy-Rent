var map = L.map('map').setView([51.505, -0.09], 13);

L.tileLayer(`https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png`, {
	maxZoom: 18,
}).addTo(map);

let marker = L.marker([51.5, -0.09]).addTo(map)

let iconMarker = L.icon({
    iconUrl: '../../assets/img/marker.png',
    iconSize: [60, 60],
    iconAnchor: [30, 60]
})

let marker2 = L.marker([51.51, -0.09], { icon: iconMarker }).addTo(map)

map.doubleClickZoom.disable()
map.on('dblclick', e => {
  let latLng = map.mouseEventToLatLng(e.originalEvent);

  L.marker([latLng.lat, latLng.lng], { icon: iconMarker }).addTo(map)
})

navigator.geolocation.getCurrentPosition(
  (pos) => {
    const { coords } = pos
    const { latitude, longitude } = coords
    L.marker([latitude, longitude], { icon: iconMarker }).addTo(map)

    setTimeout(() => {
      map.panTo(new L.LatLng(latitude, longitude))
    }, 5000)
  },
  (error) => {
    console.log(error)
  },
  {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  })