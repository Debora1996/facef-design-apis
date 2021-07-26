# Exercício 05 - Rate Limiting

## Atividade 1 - Atualizar o Declarative Config

- A partir da pasta do declarative config, executar:

(Linux ou MacOS)
```
cp $FACEF_DESIGN_APIS/15-API-Gateway/05-Rate-Limiting/kong.yml .
```

(Windows)
```
cp %FACEF_DESIGN_APIS\15-API-Gateway\05-Rate-Limiting\kong.yml .
```

## Atividade 2 - Reiniciar o Kong

Executar no terminal:
```
docker container restart kong
```

## Atividade 3 - Invocar a API de consulta de médico 3 vezes seguidas
```
curl -v http://localhost:8000/v1/doctors/1
```

Na quarta tentativa o retorno da API deveria ser:

HTTP/1.1 429 Too Many Requests
{
  "message":"API rate limit exceeded"
}