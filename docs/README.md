# API Documentation
## Endpoints
- **Crear un Club válido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: ```json
{
    "nombre": "Carmel Club",
    "fechaFundacion": "1960",
    "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
    "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento."

}
```
  - Response: ```json
{
    "nombre": "Carmel Club",
    "fechaFundacion": "1960",
    "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
    "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.",
    "id": "024cf197-6361-4b58-bc00-02a96230a4c3"
}
```

- **Crear un Club inválido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: ```json
{
  "name": "",
  "description": "Descripción sin nombre",
  "address": "123 Calle Falsa",
  "city": "Ciudad de Prueba",
  "image": "http://imagen.com/club.jpg"
}
```
  - Response: ```json
{
    "message": [
        "nombre must be a string",
        "nombre should not be empty",
        "fechaFundacion should not be empty",
        "imagen must be a URL address",
        "imagen should not be empty",
        "descripcion must be a string",
        "descripcion should not be empty"
    ],
    "error": "Bad Request",
    "statusCode": 400
}
```

- **Obtener todos los Clubs**
  - Method: GET
  - URL: {{baseUrl}}/clubs
  - Body: ```json
No body
```
  - Response: ```json
[
    {
        "id": "84b96c59-fa7b-4929-a7bb-7289c6960bd0",
        "nombre": "Carmel Club 1",
        "fechaFundacion": "1960-01-01T05:00:00.000Z",
        "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
        "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.",
        "socios": [
            {
                "id": "d1fb4b06-b51f-484b-bea7-b608dd704c5c",
                "nombre": "Socio de Prueba 1",
                "correoElectronico": "socio@prueba.com",
                "fechaNacimiento": "1990-01-01T05:00:00.000Z"
            }
        ]
    },
    {
        "id": "30093f1a-cb84-4841-a91a-f211cbc34401",
        "nombre": "Carmel Club 2",
        "fechaFundacion": "1960-01-01T05:00:00.000Z",
        "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
        "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.",
        "socios": []
    },
    {
        "id": "024cf197-6361-4b58-bc00-02a96230a4c3",
        "nombre": "Carmel Club",
        "fechaFundacion": "1960-01-01T05:00:00.000Z",
        "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
        "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.",
        "socios": []
    }
]
```

- **Obtener un Club por ID**
  - Method: GET
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
No body
```
  - Response: ```json
{
    "id": "024cf197-6361-4b58-bc00-02a96230a4c3",
    "nombre": "Carmel Club",
    "fechaFundacion": "1960-01-01T05:00:00.000Z",
    "imagen": "https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg",
    "descripcion": "Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.",
    "socios": []
}
```

- **Obtener un Club por un ID que no existe**
  - Method: GET
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
No body
```
  - Response: ```json
{
    "statusCode": 404,
    "message": "The club with the given id was not found"
}
```

- **Actualizar un Club**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
{
  "nombre": "Club Actualizado",
  "fechaFundacion": "1970",
  "imagen": "http://imagen.com/club.jpg",
  "descripcion": "Descripción actualizada"

}
```
  - Response: ```json
{
    "id": "024cf197-6361-4b58-bc00-02a96230a4c3",
    "nombre": "Club Actualizado",
    "fechaFundacion": "1970",
    "imagen": "http://imagen.com/club.jpg",
    "descripcion": "Descripción actualizada"
}
```

- **Actualizar un Club con un ID que no existe**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
{
  "nombre": "Club Actualizado",
  "fechaFundacion": "1970",
  "imagen": "http://imagen.com/club.jpg",
  "descripcion": "Descripción actualizada"

}
```
  - Response: ```json
{
    "statusCode": 404,
    "message": "The club with the given id was not found"
}
```

- **Eliminar un Club por su ID**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
No body
```
  - Response: ```json
No response
```

- **Eliminar un Club con un ID que no existe**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
No body
```
  - Response: ```json
{
    "statusCode": 404,
    "message": "The club with the given id was not found"
}
```

