# Exercício 03 - Correlation ID

Para a execução dessa atividade, espera-se que vc tenha executado previamente a atividade abaixo:
`15-API-Gateway / 01-Setup-Kong`

## Atividade 1 - Atualizar o Declarative Config

- Abra o terminal

- A partir da pasta `15-API-Gateway / scripts`, execute os comandos :

(Linux ou MacOS):
```
./kong-run.sh correlation-id
```

(Windows):
```
.\kong-run.bat correlation-id
```

## Atividade 2 - Testar a chamada da API

### Opção 1 - A partir do Postman

- A partir do Postman , executar o request a partir de `Facef-Design-APIs / Gateway / 01-Setup-Kong / Get Patient by ID`

- O resultado deve conter o header `Kong-Request-ID`, conforme o exemplo abaixo:
![print_postman.png](print_postman.png)

### Opção 2 - A partir do curl

Invocar a API de consulta de paciente:
```
curl -v GET 'http://localhost:8000/v1/patients/3dc97efc-1b5b-492c-905c-449677b390e1'
```

- O resultado deve conter o header `Kong-Request-ID`, conforme o exemplo abaixo:
![print_curl.png](print_curl.png)