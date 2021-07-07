# Exercício 06 - Response Transformer

## Atividade 1 - Consulta depois da transformação do response

Invocar a API de consulta de médico
```
curl -v http://localhost:8000/v1/doctors/1
```

O body do request deve trazer os quatro campos abaixo:
```
{
  "id": "25",
  "name": "Peter Parker",
  "crm": "123.789.012-34",
  "phone_number": "1691234-5789"
}
```

## Atividade 2 - Setup do plugin de Response Transformer

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar no terminal:
```
docker container restart kong
```

## Atividade 3 - Consulta depois da transformação do response

Invocar a API de consulta de médico
```
curl -v http://localhost:8000/v1/doctors/1
```

O body do request deve trazer um campo novo "title" e sem os campos "crm" e "phone_number":
```
{
  "id": "25",
  "title": "doctor",
  "name": "Peter Parker"
}
```