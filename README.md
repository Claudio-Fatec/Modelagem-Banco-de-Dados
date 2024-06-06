# Modelagem-Banco-de-Dados

Mortal Kombat Tournament Database
1 - Cenário
A empresa "Outworld Tournament Organization" está organizando um grande torneio de Mortal Kombat, onde diversos lutadores de diferentes reinos competem. Eles precisam de um sistema de banco de dados para gerenciar informações sobre participantes, lutas, resultados e premiações do torneio.

Entidades
Lutador: Representa os participantes do torneio.

ID (Chave Primária)
Nome
Reino de origem
Idade
Gênero
Força
Agilidade
Estilo de luta
Torneio: Representa os torneios organizados.

ID (Chave Primária)
Nome do torneio
Local
Data de início
Data de término
Luta: Representa as lutas entre os lutadores.

ID (Chave Primária)
ID do Torneio (Chave Estrangeira para Torneio)
ID do Lutador 1 (Chave Estrangeira para Lutador)
ID do Lutador 2 (Chave Estrangeira para Lutador)
Resultado
Premiação: Representa as premiações dos vencedores.

ID (Chave Primária)
ID do Torneio (Chave Estrangeira para Torneio)
Prêmio
Reino: Representa os reinos de origem dos lutadores.

ID (Chave Primária)
Nome do reino
Descrição

2 - Modelagem Conceitual
A modelagem conceitual define as entidades principais e seus relacionamentos:

Lutador: Representa os lutadores do Mortal Kombat, com informações como nome, reino de origem, idade, gênero, força, agilidade e estilo de luta.
Torneio: Detalha os torneios realizados, incluindo nome, local, data de início e término.
Luta: Registra as lutas realizadas em cada torneio, identificando os lutadores e o resultado.
Premiação: Especifica os prêmios dados em cada torneio.
Reino: Descreve os diferentes reinos presentes no universo Mortal Kombat.

<img src='imagens/Conceitual_ MK.png'>

