# Exercício 05 - Rate Limiting

## Atividade 1 - Setup do plugin de Rate Limiting

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar no terminal:
```
docker container restart kong
```

Invocar a API de consulta de médico 3 vezes seguidas
```
curl -v http://localhost:8000/v1/doctors/1
```

Na quarta tentativa o retorno da API deveria ser:

HTTP/1.1 429 Too Many Requests
{
  "message":"API rate limit exceeded"
}