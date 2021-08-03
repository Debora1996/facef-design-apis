# Exercício - Seleção de campos

## Preview do resultado final:

1 - Abra a ferramenta:
https://www.apicur.io/apicurito/

2 - Clique em "Try Live"

3 - Na próxima tela, clique em "Open API"
 
4 - Abra o conteúdo do arquivo [pacientes-openapi-spec.json](pacientes-openapi-spec.json)

5 - A tela apresentada deve corresponder a essa:

![print01.png](print01.png)

## Passo a Passo:

A partir do OpenAPI gerado no exercício anterior:

### Etapa 1 - Configuração de parâmetro de seleção de campos a consulta de um paciente

* Na parte esquerda da tela, na seção Paths, clique em `/patients/{id}`
* Na parte direita da tela, confirme a seleção do verbo `Get`
* Na seção QUERY PARAMETERS, para cada um dos campos abaixo:
* Clique no botão `+` e preencha:

Name | Description | Type Information
-----|-------------|-----------------
_fields | Lista de campos, separados por vírgula, a serem retornados no body do response | Not Required | String as String
