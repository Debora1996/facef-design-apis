# Exercício 02 - Key Authentication

## Atividade 1 - Setup do plugin de Key Authentication

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar no terminal:
```
docker container restart kong
```

## Atividade 2 - Invocar a API sem as credenciais

Invocar a API de consulta de médico
```
curl -v http://localhost:8000/v1/doctors/1
```

O retorno deveria ser:
HTTP/1.1 401 Unauthorized
{
  "message":"Invalid authentication credentials"
}

## Atividade 3 - Obter as credenciais de acesso

Invocar a API da  
curl -X GET http://localhost:8001/key-auths

Copiar a chave do campo "key"

## Atividade 4 - Invocar a API com as credenciais

Invocar a API de consulta de médico, substituindo CHAVE_CONSUMIDOR pela chave obtida na atividade anterior
```
curl -v http://localhost:8000/v1/doctors/1 -H 'apikey: CHAVE_CONSUMIDOR'
```
O retorno deveria ser:
HTTP/1.1 200 OK