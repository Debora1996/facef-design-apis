# Configurando responses de erro no OpenAPI

A partir do Apicurito:

## Atividade 1 - Configuração do responses de erro 405 para operações não-permitidas

Siga o procedimento abaixo para as operações seguintes:
```
PUT /patients
PATCH /patients
DELETE /patients
POST /patients/{id}
```

* Na parte esquerda da tela, na seção PATHS, clique no path da operação: /patients ou /patients/{id}
* Na parte direita da tela, clique no verbo
* Na seção RESPONSES, clique no botão `+`
* Selecione o Response Status Code `405 Method Not Allowed` e clique em `Add`
* Preencha o campo Description: `Response para erro 405 - Method Not Allowed`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `ErrorMessage`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com o nome do exemplo: `MethodNotAllowedExample`

```
{
  "issue" : "METHOD_NOT_SUPPORTED",
  "description": "Invalid path and HTTP method combination"
}
```

## Atividade 2 - Configuração do response de erro para demais operações

Repetir os mesmos procedimentos da atividade anterior, dessa vez configurando os responses abaixo para as seguintes rotas:

```
GET /patients
POST /patients
GET /patients/{id}
PUT /patients/{id}
PATCH /patients/{id}
DELETE /patients/{id}
```

#### 400 Bad Request
* Aplicar aos verbos POST, PUT e PATCH
* Response Status Code: `400 Bad Request`
* Descrição: `Response para erro 400 - Bad Request`
* Nome do exemplo: `BadRequestExample`
```
{
  "issue" : "MALFORMED_REQUEST",
  "description": "The request body is not well formed",
  "location" : "body"
}
```

#### 401 - Unauthorized
* Aplicar a todos os verbos
* Response Status Code: `401 - Unauthorized`
* Descrição: `Response para erro 401 - Unauthorized`
* Nome do exemplo: `UnauthorizedExample`
```
{
  "issue" : "NOT_AUTHORIZED",
  "description": "Authorization failed due to insufficient permissions",
  "location" : "header",
  "field" : "Authorization"
}
```

#### 403 - Forbidden
* Aplicar a todos os verbos
* Response Status Code: `403 - Forbidden`
* Descrição: `Response para erro 403 - Forbidden`
* Nome do exemplo: `ForbiddenExample`
```
{
  "issue" : "PERMISSION_DENIED",
  "description": "You do not have permission to access or perform operations on this resource",
  "location" : "header",
  "field" : "Authorization"
}
```

#### 404 - Not Found
* Aplicar aos verbos da rota /patients/{id}
* Response Status Code: `404 - Not Found`
* Descrição: `Response para erro 404 - Not Found`
* Nome do exemplo: `NotFoundExample`
```
{
  "issue" : "INVALID_RESOURCE_ID",
  "description": "Specified resource ID does not exist",
  "location" : "path_parameter",
  "field" : "id",
  "value" : "X"
}
```

#### 415 - Unsupported Media Type
* Aplicar aos verbos POST, PUT e PATCH
* Response Status Code: `415 - Unsupported Media Type`
* Descrição: `Response para erro 415 - Unsupported Media Type`
* Nome do exemplo: `UnsupportedMediaTypeExample`
```
{
  "issue" : "INVALID_CONTENT_TYPE",
  "description": "The specified Content Type header is invalid"
}
```

#### 422 - Unprocessable Entity
* Aplicar aos verbos POST, PUT e PATCH
* Response Status Code: `422 - Unprocessable Entity`
* Descrição: `Response para erro 422 - Unprocessable Entity`
* Nome do exemplo: `UnprocessableEntityExample`
```
{
  "issue" : "INVALID_PARAMETER_VALUE",
  "description": "Field value is invalid",
  "location" : "body",
  "field" : "cpf",
  "value" : "000.000.000-00"
}
```

#### 500 - Internal Server Error
* Aplicar a todos os verbos
* Response Status Code: `500 - Internal Server Error`
* Descrição: `Response para erro 500 - Internal Server Error`
* Nome do exemplo: `InternalServerErrorExample`
```
{
  "issue" : "INTERNAL_SERVER_ERROR",
  "description": "A system or application error occurred"
}
```

#### 502 - Bad Gateway
* Aplicar a todos os verbos
* Response Status Code: `502 - Bad Gateway`
* Descrição: `Response para erro 502 - Bad Gateway`
* Nome do exemplo: `BadGatewayExample`
```
{
  "issue" : "BAD_GATEWAY",
  "description": "The server returned an invalid response"
}
```

#### 503 - Service Unavailable
* Aplicar a todos os verbos
* Response Status Code: `503 - Service Unavailable`
* Descrição: `Response para erro 503 - Service Unavailable`
* Nome do exemplo: `ServiceUnavailableExample`
```
{
  "issue" : "SERVICE_UNAVAILABLE",
  "description": "The server cannot handle the request for a service due to temporary maintenance"
}
```

#### 504 - Gateway Timeout
* Aplicar a todos os verbos
* Response Status Code: `504 - Gateway Timeout`
* Descrição: `Response para erro 504 - Gateway Timeout`
* Nome do exemplo: `GatewayTimeoutExample`
```
{
  "issue" : "GATEWAY_TIMEOUT",
  "description": "The server did not send the response in the expected time"
}
```