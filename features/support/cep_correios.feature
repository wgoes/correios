#language: pt

Funcionalidade: Busca CEP - Endereço

Cenario: Tentar realizar busca sem preencher nenhum campo.
Dado que o usuário está na tela de busca de CEP.
Quando clicar em Buscar.
Então deve visualizar a mensagem: "Informe o Endereço !".

Cenario: Quantidade máxima de produtos deve ser até 100 registros.
Dado que o usuário está na tela de busca de CEP.
Dado que o usuário preencheu o campo Endereço_ou_CEP com o valor "Rua bento".
Quando clicar em Buscar.
Então a listagem de resultados deve ser exibida com paginação.
E o sistema deve retornar até no máximo 100 resultados.

Cenario: Busca que não retorna nenhum resultado.
Dado que o usuário está na tela de busca de CEP.
Dado que o usuário preencheu o campo Endereço_ou_CEP com o valor "Lorem".
Quando clicar em Buscar.
Então deve visualizar a mensagem "DADOS NAO ENCONTRADOS".

Cenario: Realizar busca informando o cep.
Dado que o usuário está na tela de busca de CEP.
Dado que o usuário preencheu o campo Endereço_ou_CEP com o valor "18116175".
Quando clicar em Buscar.
E Deve visualizar o logradouro "Avenida Adolpho Massaglia".