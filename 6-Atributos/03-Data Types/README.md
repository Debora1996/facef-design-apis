# Data Types no OpenAPI

A partir do Apicurito:

## Atividade 1 - Criação do Data Type MedicalInsurance

Na parte à esquerda da tela, na seção Data Types, clique em `Add a data type`
* Em 1. Enter Basic Information, preencha no campo Name: `MedicalInsurance`
* Em description, preencha: `Objeto que representa o plano de saúde de um paciente`
* Em 2. Enter JSON Example, preencha:
```
{
    "id": "324.5231100.3432",
    "operator_code": "AMIL"
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`
* Clique no botão `Save`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Description, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
id | Código de inscrição do paciente na sua operadora de plano de saúde | Required | String as String
operator_code | Código da operadora de plano de saúde na qual o paciente está inscrito | Required | String as String

* Clique no botão `Save`

## Atividade 2 - Criação do Data Type Address

Na parte à esquerda da tela, na seção Data Types, clique em `Add a data type`
* Em 1. Enter Basic Information, preencha no campo Name: `Address`
* Em description, preencha: `Objeto que representa o endereço residencial do paciente`
* Em 2. Enter JSON Example, preencha:
```
{
    "street": "Rua Luis Gois, 1200",
    "complement": "apto 204",
    "district": "Vila Mariana",
    "city": "São Paulo",
    "state": "SP",
    "zipcode": "04043-050"
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Descriptions, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
city | Nome da cidade | Required | String as String
complement | Complemento do endereço (ex: apartamento, bloco, etc) | Not Required | String as String
district | Nome do bairro | Required | String as String
state | Nome do estado | Required | String as String
street | Nome da rua onde o paciente reside | Required | String as String
zipcode | Código postal - CEP | Required | String as String

* Clique no botão `Save`

## Atividade 3 - Criação do Data Type PatientsResponse

Na parte à esquerda da tela, na seção Data Types, clique em `Add a data type`
* Em 1. Enter Basic Information, preencha no campo Name: `Patient`
* Em description, preencha: `Representa um paciente da clínica - utilizado no response da consulta do objeto de instância`
* Em 2. Enter JSON Example, preencha com:
```
{
    "id": "91aa9c65-1b5b-492c-905c-449677b390e1",
    "name": "Peter Parker",
    "cpf": "123.789.012-34",
    "phone_number": "1691234-5789",
    "birthdate": "2001-08-10",
    "height": 1.78,
    "weight": 76,
    "smoker": false,
    "comorbidities": ["Cirrose hepática", "Valvopatia"],
    "medical_insurance": {
        "id": "324.5231100.3432",
        "operator_code": "AMIL"
    },
    "address": {
        "street": "Rua Luis Gois, 1200",
        "complement": "apto 204",
        "district": "Vila Mariana",
        "city": "São Paulo",
        "state": "SP",
        "zipcode": "04043-050"
    }
}
```
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES:
* Repita os passos para cada item da tabela abaixo:
* Preencha os campos Description, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
address | Endereço residencial do paciente | Required | Address
birthdate | Data de nascimento do paciente | Required | String as Date
comorbidities | Lista de comorbidades que afetam o paciente (caso tenha) | Not Required | Array of String as String
cpf | Documento de identificação do paciente - CPF | Required | String as String
height | Altura do paciente | Required | Number as Double
id | Código único identificador do paciente | Required | String as String
medical_insurance | Plano de saúde na qual o paciente está inscrito | Not Required | MedicalInsurance
name | Nome completo do paciente | Required | String as String
phone_number | Número de telefone do paciente para contato | Required | String as String
smoker | Indica se o paciente é fumante (true-Sim, false-Não) | Not Required | Boolean
weight | Peso do paciente | Required | Integer as 32-Bit Integer

## Atividade 4 - Criação do Data Type PatientsResponseList

Na parte à esquerda da tela, na seção Data Types, clique com o botão direito sobre `PatientsResponse` - em seguida, clique em `Clone`
* No campo Name, preencha com: `PatientsResponseList`
* Clique sobre o Data Type recém criado (PatientsRequest)
* Na parte direita da tela, na seção INFO, altere o campo Description para: `Representa um paciente da clínica - utilizado no request da consulta do objeto de coleção`
* Na seção PROPERTIES, remova todos os campos, exceto os campos cpf, id e name
* Na seção EXAMPLE, remova todos os campos, exceto os campos cpf, id e name

## Atividade 5 - Criação do Data Type PatientsRequest

Na parte à esquerda da tela, na seção Data Types, clique com o botão direito sobre `PatientsResponse` - em seguida, clique em `Clone`
* No campo Name, preencha com: `PatientsRequest`
* Clique sobre o Data Type recém criado (PatientsRequest)
* Na parte direita da tela, na seção INFO, altere o campo Description para: `Representa um paciente da clínica - utilizado no request de criação do objeto de instância`
* Na seção PROPERTIES, localize o campo id - clique nas reticências à direita - clique em `Delete`
* Na seção EXAMPLE, localize o campo id e remova-o do JSON.

## Atividade 6 - Criação do Data Type PatientsRequestPatch

Na parte à esquerda da tela, na seção Data Types, clique com o botão direito sobre `PatientsRequest` - em seguida, clique em `Clone`
* No campo Name, preencha com: `PatientsRequestPatch`
* Clique sobre o Data Type recém criado (PatientsRequest)
* Na parte direita da tela, na seção INFO, altere o campo Description para: `Representa um paciente da clínica - utilizado no request de criação do objeto de instância (específico para operação PATCH)`
* Na seção PROPERTIES, remova a obrigatoriedade de todos os campos

