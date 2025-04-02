# API Documentation
\n## Endpoints
- **Crear un Club válido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: {
    "nombre": "Carmel Club",
    "fechaFundacion": "1960",
    "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
    "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento."

}

- **Crear un Club inválido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: {
  "name": "",
  "description": "Descripción sin nombre",
  "address": "123 Calle Falsa",
  "city": "Ciudad de Prueba",
  "image": "http://imagen.com/club.jpg"
}

- **Obtener todos los Clubs**
  - Method: GET
  - URL: {{baseUrl}}/clubs
  - Body: No body

- **Obtener un Club por ID**
  - Method: GET
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: No body

- **Obtener un Club por un ID que no existe**
  - Method: GET
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: No body

- **Actualizar un Club**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: {
  "nombre": "Club Actualizado",
  "fechaFundacion": "1970",
  "imagen": "http://imagen.com/club.jpg",
  "descripcion": "Descripción actualizada"

}

- **Actualizar un Club con un ID que no existe**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: {
  "nombre": "Club Actualizado",
  "fechaFundacion": "1970",
  "imagen": "http://imagen.com/club.jpg",
  "descripcion": "Descripción actualizada"

}

- **Eliminar un Club por su ID**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: No body

- **Eliminar un Club con un ID que no existe**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: No body

