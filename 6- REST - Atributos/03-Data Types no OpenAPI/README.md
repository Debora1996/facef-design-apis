# Data Types no OpenAPI

A partir do Apicurito:

## Atividade 1 - Criação do objeto MedicalInsurance

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
* Ppreencha os campos Description, Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
id | Código de inscrição do paciente na sua operadora de plano de saúde | Required | String as String
operator_code | Código da operadora de plano de saúde na qual o paciente está inscrito | Required | String as String

* Clique no botão `Save`

## Atividade 2 - Criação do objeto Address

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

## Atividade 3 - Criação do objeto Patient

Na parte à esquerda da tela, na seção Data Types, clique em `Add a data type`
* Em 1. Enter Basic Information, preencha no campo Name: `Patient`
* Em description, preencha: `Objeto que representa um paciente da clínica`
* Em 2. Enter JSON Example, deixe em branco
* Em 3. Choose to create a REST Resource with the Data Type, mantenha a opção `No Resource`

Na parte à direita da tela, na seção PROPERTIES, clique no botão `+`
* Repita os passos para cada item da tabela abaixo:
* Em 1. Enter Basic Information, preencha o campo Name e Description
* Em 2. Enter Type Information, preencha Obrigatoriedade e Tipo

Nome | Descrição | Obrigatoriedade | Tipo
------|--------|--------|--------
id | Código único identificador do paciente | Required | String as String
name | Nome completo do paciente | Required | String as String
cpf | Documento de identificação do paciente - CPF | Required | String as String
phone_number | Número de telefone do paciente para contato | Required | String as String
birthdate | Data de nascimento do paciente | Required | String as String
height | Altura do paciente | Required | Number as Number
weight | Peso do paciente | Required | Integer as Integer
smoker | Indica se o paciente é fumante (true-Sim, false-Não) | Not Required | Boolean
comorbidities | Lista de comorbidades que afetam o paciente (caso tenha) | Not Required | Array of String as String
medical_insurance | Plano de saúde na qual o paciente está inscrito | Not Required | MedicalInsurance
address | Endereço residencial do paciente | Required | Address

* Clique no botão `Save`