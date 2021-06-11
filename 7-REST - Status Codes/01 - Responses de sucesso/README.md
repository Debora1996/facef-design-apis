# Configurando responses com retorno de sucesso (2xx) no OpenAPI

A partir do Apicurito:

## Atividade 1 - Configuração do response de sucesso para GET /patients

* Na parte esquerda da tela, na seção PATHS, clique no path /patients
* Na parte direita da tela, certifique-se que a operação GET esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `200 OK` e clique em `Add`
* No campo Description, preencha: `Response para listagem de pacientes`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsResponseList`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsResponseListExample`
```
{
    "id": "324.5231100.3432",
    "operator_code": "AMIL"
}
```

## Atividade 2 - Configuração do response de sucesso para POST /patients

* Na parte esquerda da tela, na seção PATHS, clique no path /patients
* Na parte direita da tela, certifique-se que a operação POST esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `201 Created` e clique em `Add`
* No campo Description, preencha: `Response para criação de pacientes`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsResponse`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsResponseExample`
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

## Atividade 3 - Configuração do response de sucesso para GET /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação GET esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `200 OK` e clique em `Add`
* No campo Description, preencha: `Response para consulta dos dados de um pacientes`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsResponse`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsResponseExample`
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

## Atividade 4 - Configuração do response de sucesso para PUT /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação PUT esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `200 OK` e clique em `Add`
* No campo Description, preencha: `Response para atualização dos dados de um pacientes`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsResponse`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsResponseExample`
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

## Atividade 5 - Configuração do response de sucesso para PATCH /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação PATCH esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `200 OK` e clique em `Add`
* No campo Description, preencha: `Response para atualização dos dados de um pacientes`
* No campo Response Body, clique em `Add a media type`
* Mantenha a opção `application/json` selecionada e clique em `Add`
* Clique em `No Type` - selecione o Type `PatientsResponse`
* Clique em `No example` - em seguida em `Add a example`
* Preencha o campo `Name` com: `PatientsResponseExample`
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

## Atividade 6 - Configuração do response de sucesso para DELETE /patients/{id}

* Na parte esquerda da tela, na seção PATHS, clique no path /patients/{id}
* Na parte direita da tela, certifique-se que a operação DELETE esteja selecionada
* Na seção RESPONSES, clique em `Add a response`
* Mantenha o código `204 No Content` e clique em `Add`
* No campo Description, preencha: `Response para remoção de um paciente`
