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

Relacionamentos:
Lutador - Luta:
Relacionamento: Um para Muitos 
Descrição: Um lutador pode participar de várias lutas, mas cada luta envolve dois lutadores. Isso é representado pelos campos ID do Lutador 1 e ID do Lutador 2 na tabela Luta, que fazem referência à tabela Lutador.

Torneio - Luta:
Relacionamento: Um para Muitos 
Descrição: Um torneio pode ter várias lutas. A tabela Luta tem um campo ID do Torneio que faz referência à tabela Torneio.

Torneio - Premiação:
Relacionamento: Um para Muitos 
Descrição: Um torneio pode ter várias premiações, mas cada premiação está associada a um único torneio. A tabela Premiação tem um campo ID do Torneio que faz referência à tabela Torneio.

Reino - Lutador:
Relacionamento: Um para Muitos 
Descrição: Um reino pode ter vários lutadores, mas cada lutador pertence a um único reino. Este relacionamento é representado pelo campo Reino de origem na tabela Lutador que faz referência à tabela Reino.

3 - Modelagem Lógica 
<img src='imagens/LOGICO MK.PNG'>

20 inserções de dados na tabela "lutador"

 INSERT INTO Lutador(Id, Nome, Reino_de_origem, Idade, Genero, Forca, Agilidade, Estilo_de_Luta) VALUES
(8, 'Johnny Cage', 'Earthrealm', 35, 'Masculino', 78, 85, 'Karate, Shinto-Ryu'),
(9, 'Mileena', 'Outworld', 10000, 'Feminino', 85, 90, 'Mian Chuan, Saibukan'),
(10, 'Kung Lao', 'Earthrealm', 32, 'Masculino', 85, 88, 'Mantis, Shaolin Fist'),
(11, 'Shang Tsung', 'Outworld', 1000, 'Masculino', 80, 70, 'Crane, Snake'),
(12, 'Quan Chi', 'Netherrealm', 500, 'Masculino', 82, 75, 'Escrima, Tang Soo Do'),
(13, 'Shao Kahn', 'Outworld', 10000, 'Masculino', 95, 70, 'Wrasslin, Tai Chi'),
(14, 'Kano', 'Earthrealm', 42, 'Masculino', 85, 80, 'Xing Yi, Aikido'),
(15, 'Reptile', 'Zaterra', 1500, 'Masculino', 78, 85, 'Hung Gar, Crab Kung Fu'),
(16, 'Ermac', 'Outworld', 500, 'Masculino', 85, 82, 'Choy Li Fut, Telekinesis'),
(17, 'Jade', 'Edenia', 10000, 'Feminino', 78, 90, 'Fan Zi, Bojutsu'),
(18, 'Noob Saibot', 'Netherrealm', 32, 'Masculino', 90, 85, 'Hapkido, Ninjutsu'),
(19, 'Kabal', 'Earthrealm', 30, 'Masculino', 82, 88, 'Caberra, Bojutsu'),
(20, 'Sindel', 'Edenia', 10000, 'Feminino', 88, 75, 'Zha Chuan, Ba Gua'),
(21, 'Nightwolf', 'Earthrealm', 35, 'Masculino', 85, 80, 'Apache, Judo'),
(22, 'Fujin', 'Heavens', NULL, 'Masculino', 90, 88, 'Jujutsu, Fu Jow Pai'),
(23, 'Tanya', 'Edenia', 1000, 'Feminino', 78, 85, 'Kobujutsu, Mian Chuan'),
(24, 'Bo Rai Cho', 'Outworld', 45, 'Masculino', 92, 70, 'Drunken Fist, Judo'),
(25, 'Kenshi', 'Earthrealm', 35, 'Masculino', 85, 80, 'Sento, Tai Chi'),
(26, 'Frost', 'Earthrealm', 25, 'Feminino', 80, 85, 'Lin Kuei, Jujutsu');


CREATE TABLE Premiacao(
    Id_Premiacao INT PRIMARY KEY,
    Id_T INT,
    Premio VARCHAR (50)
);
