# Verbos HTTP

A partir dos recursos gerados na atividade anterior, utilize os verbos HTTP seguindo o formato CRUD:
* C - Create - POST
* R - Read - GET
* U - Update - PUT e PATCH
* D - Delete - DELETE


## Atividade 1 - Definição de verbos para o recurso de coleção

1.1 - Na parte esquerda da tela, clique no path `/pacientes`

1.2 -Na parte inferior à direita, clique nos botões:

* Get -> Add Operation

    Preencha os campos:

    Summary: ```Consulta de pacientes```

    Description: ```Operação utilizada para consultar todos os pacientes da clínica```

* Put -> Add Operation

    Preencha os campos:

    Summary: ```Atualização de pacientes```

    Description: ```Operação utilizada para atualizar dados de pacientes da clínica```

* Post -> Add Operation

    Preencha os campos:

    Summary: ```Criação de pacientes```

    Description: ```Operação utilizada para cadastrar novos pacientes da clínica```

* Delete -> Add Operation

    Preencha os campos:

    Summary: ```Remoção de pacientes```

    Description: ```Operação utilizada para apagar pacientes do cadastro da clínica```

* Patch -> Add Operation

    Preencha os campos:

    Summary: ```Atualização de pacientes```

    Description: ```Operação utilizada para atualizar dados de pacientes da clínica```


## Atividade 2 - Definição de verbos para o recurso de instância

2.1 - Na parte esquerda da tela, clique no path `/pacientes/{id}`

2.2 - Na parte inferior à direita, clique nos botões:

* Get -> Add Operation

    Preencha os campos:

    Summary: ```Consulta de dados de um paciente```

    Description: ```Operação utilizada para consultar dados de pacientes da clínica```

* Put -> Add Operation

    Preencha os campos:

    Summary: ```Atualização de dados de um paciente```

    Description: ```Operação utilizada para atualizar dados de pacientes da clínica```

* Post -> Add Operation

    Preencha os campos:

    Summary: ```Criação de pacientes```

    Description: ```Operação utilizada para cadastrar novos pacientes da clínica```

* Delete -> Add Operation

    Preencha os campos:

    Summary: ```Remoção de pacientes```

    Description: ```Operação utilizada para apagar um paciente do cadastro da clínica```

* Patch -> Add Operation

    Preencha os campos:

    Summary: ```Atualização de dados de um paciente```

    Description: ```Operação utilizada para atualizar dados de pacientes da clínica```


Obs 1: Perceba que todas as operações criadas ficaram marcadas com um sinal de exclamação. Isso se deve porque elas ainda estão incompletas pela falta dos campos que irão compor o bodies de request e response - nós vamos fazer isso na próxima atividade.