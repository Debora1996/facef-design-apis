# Exercício 01 - Filtro por valor exato

A partir do Apicurito:

## Atividade 1 - Configuração de filtros para coleção de pacientes

* Na parte esquerda da tela, na seção Paths, clique em `/patients`
* Na parte direita da tela, confirme a seleção do verbo Get
* Na seção QUERY PARAMETERS, para cada um dos campos abaixo:
* Clique no botão `+` e preencha:

Name | Description | Type Information
-----|-------------|-----------------
name | Nome completo do paciente | Not Required | String as String
cpf | Documento de identificação do paciente - CPF | Not Required | String as String
phone_number | Número de telefone do paciente para contato | Not Required | String as String
birthdate | Data de nascimento do paciente | Not Required | String as Date
height | Altura do paciente | Not Required | Number as Double
weight | Peso do paciente | Not Required | Integer as 32-Bit Integer
smoker | Indica se o paciente é fumante (true-Sim, false-Não) | Not Required | Boolean
comorbidities | Lista de comorbidades que afetam o paciente (caso tenha) | Not Required | Array of String as String
medical_insurance.id | Código de inscrição do paciente na sua operadora de plano de saúde | Not Required | String as String
medical_insurance.operator_code | Código da operadora de plano de saúde na qual o paciente está inscrito | Not Required | String as String
address.street | Nome da rua onde o paciente reside | Not Required | String as String
address.complement | Complemento do endereço (ex: apartamento, bloco, etc) | Not Required | String as String
address.district | Nome do bairro | Not Required | String as String
address.city | Nome da cidade | Not Required | String as String
address.state | Nome do estado | Not Required | String as String
address.zipcode | Código postal - CEP | Not Required | String as String
