# Exercício 06 - Response Transformer

## Atividade 1 - Consulta antes da transformação do response

### Opção 1 - A partir do Postman
### Opção 2 - A partir do curl

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

## Atividade 2 - Atualizar o Declarative Config

- A partir da pasta do declarative config, executar:

(Linux ou MacOS)
```
cp $FACEF_DESIGN_APIS/15-API-Gateway/06-Response-Transformer/kong.yml .
```

(Windows)
```
cp %FACEF_DESIGN_APIS\15-API-Gateway\06-Response-Transformerkong.yml .
```

## Atividade 3 - Reiniciar o Kong

Executar no terminal:
```
docker container restart kong
```
## Atividade 4 - Consulta depois da transformação do response

### Opção 1 - A partir do Postman
### Opção 2 - A partir do curl

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