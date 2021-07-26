# Exercício 03 - Correlation ID

## Atividade 1 - Atualizar o Declarative Config

- A partir da pasta do declarative config, executar:

(Linux ou MacOS)
```
cp $FACEF_DESIGN_APIS/15-API-Gateway/03-Correlation-ID/kong.yml .
```

(Windows)
```
cp %FACEF_DESIGN_APIS\15-API-Gateway\03-Correlation-ID\kong.yml .
```

## Atividade 2 - Reiniciar o Kong

Executar no terminal:
```
docker container restart kong
```

## Atividade 3 - Testar a chamada da API

Invocar a API de consulta de médico:
```
curl -v http://localhost:8000/v1/doctors/1
```

Deve haver um header Kong-Request-ID. Ex:
Kong-Request-ID: 7098c0f1-5b5a-4348-a02a-3e3164994865#1