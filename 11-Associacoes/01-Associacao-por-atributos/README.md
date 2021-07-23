# Exercício - Associação por atributos

1 - Abra a ferramenta:
https://www.apicur.io/apicurito/

2 - Clique em "Try Live"

3 - Na próxima tela, clique em "Open API"
 
4 - Abra o conteúdo do arquivo [consultas-openapi-spec.json](consultas-openapi-spec.json)

5 - A tela apresentada deve corresponder a essa:

![print01.png](print01.png)

## Passo a Passo:

### Etapa 1 - Criação do OpenAPI

1 - Abra a ferramenta:
https://www.apicur.io/apicurito/

2 - Clique em "Try Live"

3 - Na próxima tela, clique em "New API"

4 - Na tela principal:
* Na parte superior da tela, clique no lápis ao lado da palavra "New API" e digite o nome da entidade de negócio:
````
Pacientes
````

* No lado direito da tela, a partir da seção INFO, clique no valor do campo "Description" e fale do que se trata o seu contrato:
````
ProHealth - Contrato da API de Pacientes
````

* Na seção SERVERS, clique em Add a server
    * No campo Server URL, preencha com: http://localhost:8080 - clique em Apply - clique em Save

### Etapa 2 - Criação do Data Type Patient

Na parte à esquerda da tela, na seção Data Types, no botão `+`
* Em 1. Enter Basic Information, preencha no campo Name: `Patient`
* Em description, preencha: `Objeto que representa um paciente da clínica`
* Em 2. Enter JSON Example, preencha:
```
{
    "id": "503",
    "name": "Marcio Andrade",
    "phone_number": "92233-4394"
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Descriptions, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
id | Código identificador do paciente | Required | String as String
name | Nome completo do paciente | Required | String as String
phone_number | Número de telefone do paciente | Required | String as String

* Clique no botão `Save`

### Etapa 3 - Criação do Data Type Doctor

Na parte à esquerda da tela, na seção Data Types, clique no botão `+`
* Em 1. Enter Basic Information, preencha no campo Name: `Doctor`
* Em description, preencha: `Objeto que representa um médico da clínica`
* Em 2. Enter JSON Example, preencha:
```
{
    "id": "25",
    "name": " ngelo Calafiori ",
    "crm": "123456-SP",
    "phone_number": "91502-5501"
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Descriptions, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
id | Código identificador do médico | Required | String as String
name | Nome completo do médico | Required | String as String
crm | Registro no Conselho Regional de Medicina | Required | String as String
phone_number | Número de telefone do médico | Required | String as String

* Clique no botão `Save`

### Etapa 4 - Criação do Data Type AppointmentResponse

Na parte à esquerda da tela, na seção Data Types, clique no botão `+`
* Em 1. Enter Basic Information, preencha no campo Name: `AppointmentResponse`
* Em description, preencha: `Objeto que representa uma consulta marcada`
* Em 2. Enter JSON Example, preencha:
```
{
    "id": 8201,
    "scheduled_at": "2020-12-23T07:23:00Z",
    "patient": {
        "id": "503",
        "name": "Marcio Andrade",
        "phone_number": "92233-4394"
    },
    "doctor": {
        "id": "25",
        "name": "Ângelo Calafiori",
        "phone_number": "91502-5501"
    }
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Descriptions, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
doctor | Médico que atende a consulta | Required | Doctor
id | Código identificador da consulta | Required | integer as int32
patient | Paciente atendido na consulta | Required | Patient
scheduled_at | Data/hora agendada para a consulta | Required | String as DateTime

* Clique no botão `Save`