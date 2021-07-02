# Exercício 02 - Correlation ID

## Atividade 1 - Setup do plugin de Correlation ID

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar no terminal:
```
docker container restart kong
```

Testar o funcionamento do backend:
```
curl -v http://localhost:8000/v1/doctors/1
```

Deve haver um header Kong-Request-ID. Ex:
Kong-Request-ID: 7098c0f1-5b5a-4348-a02a-3e3164994865#1