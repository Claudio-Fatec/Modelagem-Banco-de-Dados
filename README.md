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
````sql
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


Vamos demonstrar as operações CRUD (Create, Read, Update, Delete) em SQL com base no esquema fornecido, que inclui as tabelas Lutador, Torneio, Luta, Premiacao e Reino.

1 CREATE (Criar)
Primeiro, criamos as tabelas e inserimos os dados:
```sql
-- Criando a tabela Lutador
CREATE TABLE Lutador(
    Id INT PRIMARY KEY,
    Nome VARCHAR (100),
    Reino_de_origem VARCHAR (50),
    Idade INT,
    Genero VARCHAR (10),
    Forca INT,
    Agilidade INT,
    Estilo_de_Luta VARCHAR (50)
);

-- Inserindo dados na tabela Lutador
INSERT INTO Lutador(Id, Nome, Reino_de_origem, Idade, Genero, Forca, Agilidade, Estilo_de_Luta) VALUES
(1, 'Scorpion', 'Netherrealm', 32, 'Masculino', 90, 85, 'Hapkido, Pi Gua, Ninjutsu'),
(2, 'Sub-Zero', 'Earthrealm', 40, 'Masculino', 85, 80, 'Shotokan, Dragon'),
(3, 'Kitana', 'Edenia', 10000, 'Feminino', 75, 90, 'Eagle Claw, Ba Gua'),
(4, 'Liu Kang', 'Earthrealm', 35, 'Masculino', 88, 92, 'Jeet Kune Do, Jun Fan'),
(5, 'Sonya Blade', 'Earthrealm', 35, 'Feminino', 80, 85, 'Kenpo, Tae Kwon Do'),
(6, 'Raiden', 'Heavens', NULL, 'Masculino', 95, 80, 'Nan Quan, Jujutsu');

-- Criando a tabela Torneio
CREATE TABLE Torneio (
    Id_T INT PRIMARY KEY,
    Nome_Torneio VARCHAR (100),
    Local VARCHAR (100),
    Data_Inicio DATE,
    Data_Termino DATE
);

-- Inserindo dados na tabela Torneio
INSERT INTO Torneio (Id_T, Nome_Torneio, Local, Data_Inicio, Data_Termino) VALUES
(1, 'Mortal Kombat - Torneio de Shang Tsung', 'Ilha de Shang Tsung', '2023-06-01', '2023-06-10'),
(2, 'Mortal Kombat - Torneio de Outworld', 'Outworld', '2023-07-15', '2023-07-25'),
(3, 'Mortal Kombat - Torneio de Earthrealm', 'Earthrealm', '2023-09-01', '2023-09-10'),
(4, 'Mortal Kombat - Torneio de Edenia', 'Edenia', '2023-10-20', '2023-10-30'),
(5, 'Mortal Kombat - Torneio dos Deuses Anciões', 'Heavens', '2023-12-05', '2023-12-15'),
(6, 'Mortal Kombat - Torneio do Netherrealm', 'Netherrealm', '2024-01-20', '2024-01-30');

-- Criando a tabela Luta
CREATE TABLE Luta(
    Id_L INT,
    Id_T INT,
    Id_Lutador_1 INT,
    ID__Lutador_2 INT,
    Resultado VARCHAR (50),
    PRIMARY KEY (Id_L, Id_T, ID__Lutador_2)
);

-- Inserindo dados na tabela Luta
INSERT INTO Luta (Id_L, Id_T, Id_Lutador_1, ID__Lutador_2, Resultado) VALUES
(1, 1, 1, 2, 'Vitória do Lutador 1'),
(2, 1, 3, 4, 'Vitória do Lutador 2'),
(3, 2, 2, 5, 'Vitória do Lutador 1'),
(4, 2, 6, 3, 'Vitória do Lutador 2'),
(5, 3, 1, 4, 'Vitória do Lutador 1'),
(6, 3, 5, 6, 'Vitória do Lutador 2'),
(7, 4, 3, 1, 'Vitória do Lutador 1'),
(8, 4, 2, 6, 'Vitória do Lutador 2'),
(9, 5, 4, 5, 'Vitória do Lutador 1'),
(10, 5, 6, 1, 'Vitória do Lutador 2'),
(11, 6, 3, 2, 'Vitória do Lutador 1'),
(12, 6, 4, 6, 'Vitória do Lutador 2');

-- Criando a tabela Premiacao
CREATE TABLE Premiacao(
    Id_Premiacao INT PRIMARY KEY,
    Id_T INT,
    Premio VARCHAR (50)
);

-- Inserindo dados na tabela Premiacao
INSERT INTO Premiacao (Id_Premiacao, Id_T, Premio) VALUES
(1, 1, 'Trofeu de Shang Tsung'),
(2, 2, 'Trofeu de Outworld'),
(3, 3, 'Trofeu de Earthrealm'),
(4, 4, 'Trofeu de Edenia'),
(5, 5, 'Trofeu dos Deuses Anciões'),
(6, 6, 'Trofeu do Netherrealm');

-- Criando a tabela Reino
CREATE TABLE Reino(
    Id_R INT PRIMARY KEY,
    Nome__Reino VARCHAR (100),
    Descricao VARCHAR (100)
);

-- Inserindo dados na tabela Reino
INSERT INTO Reino (Id_R, Nome__Reino, Descricao) VALUES
(1, 'Earthrealm', 'O reino da Terra, lar dos humanos e protegido por Raiden.'),
(2, 'Netherrealm', 'Um reino infernal de demônios e almas condenadas, governado por Quan Chi e Shinnok.'),
(3, 'Outworld', 'Um reino vasto e conquistador, governado por Shao Kahn.'),
(4, 'Edenia', 'Um reino pacífico e avançado, conhecido por sua beleza e longevidade dos seus habitantes.'),
(5, 'Heavens', 'O domínio dos Deuses Anciões e outros seres divinos.'),
(6, 'Chaosrealm', 'Um reino de desordem absoluta, onde as leis da física e da lógica são continuamente desafiadas.'),
(7, 'Orderrealm', 'Um reino de ordem estrita e controle, governado pelos Seidan Guard.'),
(8, 'Dreamrealm', 'Um reino acessível apenas através de sonhos, habitado por seres oníricos.');

### 2. READ (Ler)
Vamos fazer algumas consultas para ler os dados das tabelas:

