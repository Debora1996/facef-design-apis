# Exercício 06 - Response Transformer

Para a execução dessa atividade, espera-se que vc tenha executado previamente a atividade abaixo:
`15-API-Gateway / 01-Setup-Kong`

## Atividade 1 - Consulta antes da transformação do response

### Opção 1 - A partir do Postman

- A partir do Postman, executar o request a partir de `Facef-Design-APIs / Gateway / 01-Setup-Kong / Get Patient by ID`

- O resultado deve ser:

![print_postman_antes_transformacao.png](print_postman_antes_transformacao.png)


### Opção 2 - A partir do curl

- Invocar a API de consulta de paciente
```
curl 'http://localhost:8000/v1/patients/3dc97efc-1b5b-492c-905c-449677b390e1'
```

- O body do request deve trazer os quatro campos abaixo:

![print_curl_antes_transformacao.png](print_curl_antes_transformacao.png)


## Atividade 2 - Atualizar o Declarative Config

- Abra o terminal

- A partir da pasta `15-API-Gateway / scripts`, execute os comandos :

(Linux ou MacOS):
```
./kong-run.sh response-transformer
```

(Windows):
```
.\kong-run.bat response-transformer
```

## Atividade 3 - Consulta depois da transformação do response

### Opção 1 - A partir do Postman

- A partir do Postman , executar o request a partir de `Facef-Design-APIs / Gateway / 01-Setup-Kong / Get Patient by ID`

- O resultado deve ser:

![print_postman_depois_transformacao.png](print_postman_depois_transformacao.png)


### Opção 2 - A partir do curl

Invocar a API de consulta de paciente
```
curl 'http://localhost:8000/v1/patients/3dc97efc-1b5b-492c-905c-449677b390e1'
```

O body do request deve trazer um campo novo "title" e sem os campos "crm" e "phone_number":

![print_curl_depois_transformacao.png](print_curl_depois_transformacao.png)