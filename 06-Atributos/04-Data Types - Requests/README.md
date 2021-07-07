# Configurando Data Types em requests no OpenAPI

A partir do Apicurito:

## Atividade 1 - Configuração do corpo do request para POST /patients

* Na parte esquerda da tela, na seção PATHS, clique no path /patients
* Na parte direita da tela, certifique-se que a operação POST esteja selecionada
* Na seção REQUEST BODY, clique em `Add a request body`
* No campo Description, preencha: `Request para criação de pacientes`
* Altere o valor do combo abaixo para `Required`
* No campo Media Types, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsRequest`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsRequestExample`
```
{
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

## Atividade 2 - Configuração do corpo do request para PUT /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação PUT esteja selecionada
* Na seção REQUEST BODY, clique em `Add a request body`
* No campo Description, preencha: `Request para atualização de pacientes`
* Altere o valor do combo abaixo para `Required`
* No campo Media Types, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsRequest`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsRequestExample`
```
{
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

## Atividade 3 - Configuração do corpo do request para PATCH /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação PATCH esteja selecionada
* Na seção REQUEST BODY, clique em `Add a request body`
* No campo Description, preencha: `Request para atualização de pacientes`
* Altere o valor do combo abaixo para `Required`
* No campo Media Types, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsRequestPatch`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsRequestExample`
```
{
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
