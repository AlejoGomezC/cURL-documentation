# API Documentation
## Endpoints
- **Crear un Club válido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: ```json
"{\r\n    \"nombre\": \"Carmel Club\",\r\n    \"fechaFundacion\": \"1960\",\r\n    \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\r\n    \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\"\r\n\r\n}"
```
  - Response: ```json
"{\n    \"nombre\": \"Carmel Club\",\n    \"fechaFundacion\": \"1960\",\n    \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\n    \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\",\n    \"id\": \"024cf197-6361-4b58-bc00-02a96230a4c3\"\n}"
```

- **Crear un Club inválido**
  - Method: POST
  - URL: {{baseUrl}}/clubs
  - Body: ```json
"{\r\n  \"name\": \"\",\r\n  \"description\": \"Descripción sin nombre\",\r\n  \"address\": \"123 Calle Falsa\",\r\n  \"city\": \"Ciudad de Prueba\",\r\n  \"image\": \"http://imagen.com/club.jpg\"\r\n}"
```
  - Response: ```json
"{\n    \"message\": [\n        \"nombre must be a string\",\n        \"nombre should not be empty\",\n        \"fechaFundacion should not be empty\",\n        \"imagen must be a URL address\",\n        \"imagen should not be empty\",\n        \"descripcion must be a string\",\n        \"descripcion should not be empty\"\n    ],\n    \"error\": \"Bad Request\",\n    \"statusCode\": 400\n}"
```

- **Obtener todos los Clubs**
  - Method: GET
  - URL: {{baseUrl}}/clubs
  - Body: ```json
"No body"
```
  - Response: ```json
"[\n    {\n        \"id\": \"84b96c59-fa7b-4929-a7bb-7289c6960bd0\",\n        \"nombre\": \"Carmel Club 1\",\n        \"fechaFundacion\": \"1960-01-01T05:00:00.000Z\",\n        \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\n        \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\",\n        \"socios\": [\n            {\n                \"id\": \"d1fb4b06-b51f-484b-bea7-b608dd704c5c\",\n                \"nombre\": \"Socio de Prueba 1\",\n                \"correoElectronico\": \"socio@prueba.com\",\n                \"fechaNacimiento\": \"1990-01-01T05:00:00.000Z\"\n            }\n        ]\n    },\n    {\n        \"id\": \"30093f1a-cb84-4841-a91a-f211cbc34401\",\n        \"nombre\": \"Carmel Club 2\",\n        \"fechaFundacion\": \"1960-01-01T05:00:00.000Z\",\n        \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\n        \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\",\n        \"socios\": []\n    },\n    {\n        \"id\": \"024cf197-6361-4b58-bc00-02a96230a4c3\",\n        \"nombre\": \"Carmel Club\",\n        \"fechaFundacion\": \"1960-01-01T05:00:00.000Z\",\n        \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\n        \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\",\n        \"socios\": []\n    }\n]"
```

- **Obtener un Club por ID**
  - Method: GET
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
"No body"
```
  - Response: ```json
"{\n    \"id\": \"024cf197-6361-4b58-bc00-02a96230a4c3\",\n    \"nombre\": \"Carmel Club\",\n    \"fechaFundacion\": \"1960-01-01T05:00:00.000Z\",\n    \"imagen\": \"https://carmelclub.com.co/wp-content/uploads/2021/04/20191115_193817-1-800x550.jpg\",\n    \"descripcion\": \"Centro social ubicado dentro de la ciudad, con más de 60 años de funcionamiento.\",\n    \"socios\": []\n}"
```

- **Obtener un Club por un ID que no existe**
  - Method: GET
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
"No body"
```
  - Response: ```json
"{\n    \"statusCode\": 404,\n    \"message\": \"The club with the given id was not found\"\n}"
```

- **Actualizar un Club**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
"{\r\n  \"nombre\": \"Club Actualizado\",\r\n  \"fechaFundacion\": \"1970\",\r\n  \"imagen\": \"http://imagen.com/club.jpg\",\r\n  \"descripcion\": \"Descripción actualizada\"\r\n\r\n}"
```
  - Response: ```json
"{\n    \"id\": \"024cf197-6361-4b58-bc00-02a96230a4c3\",\n    \"nombre\": \"Club Actualizado\",\n    \"fechaFundacion\": \"1970\",\n    \"imagen\": \"http://imagen.com/club.jpg\",\n    \"descripcion\": \"Descripción actualizada\"\n}"
```

- **Actualizar un Club con un ID que no existe**
  - Method: PUT
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
"{\r\n  \"nombre\": \"Club Actualizado\",\r\n  \"fechaFundacion\": \"1970\",\r\n  \"imagen\": \"http://imagen.com/club.jpg\",\r\n  \"descripcion\": \"Descripción actualizada\"\r\n\r\n}"
```
  - Response: ```json
"{\n    \"statusCode\": 404,\n    \"message\": \"The club with the given id was not found\"\n}"
```

- **Eliminar un Club por su ID**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/{{club_id}}
  - Body: ```json
"No body"
```
  - Response: ```json
"No response"
```

- **Eliminar un Club con un ID que no existe**
  - Method: DELETE
  - URL: {{baseUrl}}/clubs/00000000-0000-0000-0000-000000000000
  - Body: ```json
"No body"
```
  - Response: ```json
"{\n    \"statusCode\": 404,\n    \"message\": \"The club with the given id was not found\"\n}"
```

