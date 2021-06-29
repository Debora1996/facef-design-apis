# Exercício 01 - Associação por atributos

A partir do Apicurito:
* Abrir o arquivo consultas-openapi-spec.json

## Atividade 1 - Criação do Data Type Patient

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

## Atividade 2 - Criação do Data Type Doctor

Na parte à esquerda da tela, na seção Data Types, clique no botão `+`
* Em 1. Enter Basic Information, preencha no campo Name: `Doctor`
* Em description, preencha: `Objeto que representa um médico da clínica`
* Em 2. Enter JSON Example, preencha:
```
{
    "id": "25",
    "name": " ngelo Calafiori ",
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
phone_number | Número de telefone do médico | Required | String as String

* Clique no botão `Save`

## Atividade 3 - Criação do Data Type AppointmentResponse

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