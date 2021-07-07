# Modelagem - Caso prático

## Descritivo da demanda

Você foi contratado pela ProHealth, uma startup recém-criada que se propõe a oferecer à clínicas médicas de qualquer parte do país, uma plataforma de agendamento de consultas que funcione como um serviço SaaS (software as a service).

A idéia é que você exponha as APIs desse serviço, de forma que sejam genéricas os suficiente para que sejam utilizadas por qualquer clínica que seja cliente do serviço. Nesse contexto, cada clínica irá utilizar as APIs da ProHeath a partir dos seus próprios apps e/ou websites.

Como você não conhece as regras de negócio envolvidas, e ainda sim quer implementar APIs que sigam boas práticas de modelagem, você procura os analistas de negócio da ProHealth, para que eles te dêem uma idéia inicial:
 
O paciente acessa o app ou site da clínica e se cadastra. A partir deste momento, o paciente irá selecionar um médico da clínica, a partir de uma lista de especialidades.

Tendo escolhido o médico, o paciente irá visualizar a agenda deste profissional e irá realizar a marcação da consulta a partir de uma data e horário disponível.

Caso deseje, o paciente tem a possibilidade de cancelar ou reagendar a consulta.

Para as consultas particulares, a clínica pode cobrar valores diferentes de cada paciente, dependendo de alguns critérios pré-estabelecidos (ex: primeira consulta, consulta regular, etc). Para cada preço cobrado do paciente, é importante que a clínica tenha o controle do valor a ser repassado para o médico.

<br>
<hr>
<br>

## Atividade 1 - Identificação de entidades

A partir da demanda acima, identifique as entidades de negócio e escreva em um editor de texto de sua preferência.

Obs: Uma entidade é uma representação de um conjunto de informações sobre determinado conceito do sistema. 

<br>
<hr>
<br>

## Atividade 2 - Identificação dos atributos das entidades

Toda entidade possui atributos, que são as informações que referenciam a entidade.

A partir de cada entidade identificada na atividade anterior, escreva seus atributos em um editor de texto de sua preferência.

<br>
<hr>
<br>

## Atividade 3 - Identificação dos relacionamentos entre as entidades

Considerando o fato de que as entidades se complementam para formar um fluxo mais completo, identifique as interligações entre as entidades.