create database MortalKombat;
use MortalKombat
/* Lógico_mk: */

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
INSERT INTO Lutador(Id, Nome, Reino_de_origem, Idade, Genero, Forca, Agilidade, Estilo_de_Luta) VALUES
(1, 'Scorpion', 'Netherrealm', 32, 'Masculino', 90, 85, 'Hapkido, Pi Gua, Ninjutsu'),
(2, 'Sub-Zero', 'Earthrealm', 40, 'Masculino', 85, 80, 'Shotokan, Dragon'),
(3, 'Kitana', 'Edenia', 10000, 'Feminino', 75, 90, 'Eagle Claw, Ba Gua'),
(4, 'Liu Kang', 'Earthrealm', 35, 'Masculino', 88, 92, 'Jeet Kune Do, Jun Fan'),
(5, 'Sonya Blade', 'Earthrealm', 35, 'Feminino', 80, 85, 'Kenpo, Tae Kwon Do'),
(6, 'Raiden', 'Heavens', NULL, 'Masculino', 95, 80, 'Nan Quan, Jujutsu');




CREATE TABLE Torneio (
    Id_T INT PRIMARY KEY,
    Nome_Torneio VARCHAR (100),
    Local VARCHAR (100),
    Data_Inicio DATE,
    Data_Termino DATE
);
INSERT INTO Torneio (Id_T, Nome_Torneio, Local, Data_Inicio, Data_Termino) VALUES
(1, 'Mortal Kombat - Torneio de Shang Tsung', 'Ilha de Shang Tsung', '2023-06-01', '2023-06-10'),
(2, 'Mortal Kombat - Torneio de Outworld', 'Outworld', '2023-07-15', '2023-07-25'),
(3, 'Mortal Kombat - Torneio de Earthrealm', 'Earthrealm', '2023-09-01', '2023-09-10'),
(4, 'Mortal Kombat - Torneio de Edenia', 'Edenia', '2023-10-20', '2023-10-30'),
(5, 'Mortal Kombat - Torneio dos Deuses Anciões', 'Heavens', '2023-12-05', '2023-12-15'),
(6, 'Mortal Kombat - Torneio do Netherrealm', 'Netherrealm', '2024-01-20', '2024-01-30');


CREATE TABLE Luta(
    Id_L INT,
    Id_T INT,
    Id_Lutador_1 INT,
    ID__Lutador_2 INT,
    Resultado VARCHAR (50),
    PRIMARY KEY (Id_L, Id_T, ID__Lutador_2)
);

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

CREATE TABLE Premiacao(
    Id_Premiacao INT PRIMARY KEY,
    Id_T INT,
    Premio VARCHAR (50)
);

INSERT INTO Premiacao (Id_Premiacao, Id_T, Premio) VALUES
(1, 1, 'Trofeu de Shang Tsung'),
(2, 2, 'Trofeu de Outworld'),
(3, 3, 'Trofeu de Earthrealm'),
(4, 4, 'Trofeu de Edenia'),
(5, 5, 'Trofeu dos Deuses Anciões'),
(6, 6, 'Trofeu do Netherrealm');

CREATE TABLE Reino(
    Id_R INT PRIMARY KEY,
    Nome__Reino VARCHAR (100),
    Descricao VARCHAR (100)
);

INSERT INTO Reino (Id_R, Nome__Reino, Descricao) VALUES
(1, 'Earthrealm', 'O reino da Terra, lar dos humanos e protegido por Raiden.'),
(2, 'Netherrealm', 'Um reino infernal de demônios e almas condenadas, governado por Quan Chi e Shinnok.'),
(3, 'Outworld', 'Um reino vasto e conquistador, governado por Shao Kahn.'),
(4, 'Edenia', 'Um reino pacífico e avançado, conhecido por sua beleza e longevidade dos seus habitantes.'),
(5, 'Heavens', 'O domínio dos Deuses Anciões e outros seres divinos.'),
(6, 'Chaosrealm', 'Um reino de desordem absoluta, onde as leis da física e da lógica são continuamente desafiadas.'),
(7, 'Orderrealm', 'Um reino de ordem estrita e controle, governado pelos Seidan Guard.'),
(8, 'Dreamrealm', 'Um reino acessível apenas através de sonhos, habitado por seres oníricos.');
 
 SELECT* FROM Lutador WHERE Forca < 80

 INSERT INTO Lutador(Id, Nome, Reino_de_origem, Idade, Genero, Forca, Agilidade, Estilo_de_Luta) VALUES
 (7,'Jax', 'Reino da Terra', 35, 'Masculino', 75, 70, 'Judo, Muay Thai');

 SELECT*FROM Lutador WHERE Forca > 40

 SELECT * FROM Lutador ORDER BY Nome 

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


INSERT INTO Torneio (Id_T, Nome_Torneio, Local, Data_Inicio, Data_Termino) VALUES
(7, 'Mortal Kombat - Torneio de Chaosrealm', 'Chaosrealm', '2024-03-01', '2024-03-10'),
(8, 'Mortal Kombat - Torneio de Orderrealm', 'Orderrealm', '2024-04-15', '2024-04-25'),
(9, 'Mortal Kombat - Torneio de Zaterra', 'Zaterra', '2024-05-10', '2024-05-20'),
(10, 'Mortal Kombat - Torneio de Vaeternus', 'Vaeternus', '2024-06-01', '2024-06-10'),
(11, 'Mortal Kombat - Torneio das Sombras', 'Netherrealm', '2024-07-05', '2024-07-15'),
(12, 'Mortal Kombat - Torneio do Fogo', 'Outworld', '2024-08-10', '2024-08-20'),
(13, 'Mortal Kombat - Torneio da Água', 'Edenia', '2024-09-01', '2024-09-10'),
(14, 'Mortal Kombat - Torneio dos Ventos', 'Heavens', '2024-10-05', '2024-10-15'),
(15, 'Mortal Kombat - Torneio da Terra', 'Earthrealm', '2024-11-01', '2024-11-10'),
(16, 'Mortal Kombat - Torneio de Gelo', 'Netherrealm', '2024-12-05', '2024-12-15'),
(17, 'Mortal Kombat - Torneio de Relâmpago', 'Heavens', '2025-01-10', '2025-01-20'),
(18, 'Mortal Kombat - Torneio da Montanha', 'Outworld', '2025-02-15', '2025-02-25'),
(19, 'Mortal Kombat - Torneio do Vulcão', 'Chaosrealm', '2025-03-20', '2025-03-30'),
(20, 'Mortal Kombat - Torneio das Estrelas', 'Heavens', '2025-04-10', '2025-04-20'),
(21, 'Mortal Kombat - Torneio das Profundezas', 'Netherrealm', '2025-05-05', '2025-05-15'),
(22, 'Mortal Kombat - Torneio da Floresta', 'Earthrealm', '2025-06-10', '2025-06-20'),
(23, 'Mortal Kombat - Torneio da Neve', 'Edenia', '2025-07-01', '2025-07-10'),
(24, 'Mortal Kombat - Torneio dos Espíritos', 'Heavens', '2025-08-05', '2025-08-15'),
(25, 'Mortal Kombat - Torneio dos Dragões', 'Outworld', '2025-09-10', '2025-09-20'),
(26, 'Mortal Kombat - Torneio do Submundo', 'Netherrealm', '2025-10-15', '2025-10-25');


INSERT INTO Luta (Id_L, Id_T, Id_Lutador_1, ID__Lutador_2, Resultado) VALUES
(13, 1, 7, 8, 'Vitória do Lutador 1'),
(14, 1, 9, 10, 'Vitória do Lutador 2'),
(15, 2, 11, 12, 'Vitória do Lutador 1'),
(16, 2, 13, 14, 'Vitória do Lutador 2'),
(17, 3, 15, 16, 'Vitória do Lutador 1'),
(18, 3, 17, 18, 'Vitória do Lutador 2'),
(19, 4, 19, 20, 'Vitória do Lutador 1'),
(20, 4, 21, 22, 'Vitória do Lutador 2'),
(21, 5, 23, 24, 'Vitória do Lutador 1'),
(22, 5, 25, 26, 'Vitória do Lutador 2'),
(23, 6, 7, 9, 'Vitória do Lutador 1'),
(24, 6, 8, 10, 'Vitória do Lutador 2'),
(25, 1, 11, 13, 'Vitória do Lutador 1'),
(26, 1, 12, 14, 'Vitória do Lutador 2'),
(27, 2, 15, 17, 'Vitória do Lutador 1'),
(28, 2, 16, 18, 'Vitória do Lutador 2'),
(29, 3, 19, 21, 'Vitória do Lutador 1'),
(30, 3, 20, 22, 'Vitória do Lutador 2'),
(31, 4, 23, 25, 'Vitória do Lutador 1'),
(32, 4, 24, 26, 'Vitória do Lutador 2');


INSERT INTO Premiacao (Id_Premiacao, Id_T, Premio) VALUES
(7, 7, 'Trofeu de Chaosrealm'),
(8, 8, 'Trofeu de Orderrealm'),
(9, 9, 'Trofeu de Zaterra'),
(10, 10, 'Trofeu de Vaeternus'),
(11, 11, 'Trofeu das Sombras'),
(12, 12, 'Trofeu do Fogo'),
(13, 13, 'Trofeu da Água'),
(14, 14, 'Trofeu dos Ventos'),
(15, 15, 'Trofeu da Terra'),
(16, 16, 'Trofeu de Gelo'),
(17, 17, 'Trofeu de Relâmpago'),
(18, 18, 'Trofeu da Montanha'),
(19, 19, 'Trofeu do Vulcão'),
(20, 20, 'Trofeu das Estrelas'),
(21, 21, 'Trofeu das Profundezas'),
(22, 22, 'Trofeu da Floresta'),
(23, 23, 'Trofeu da Neve'),
(24, 24, 'Trofeu dos Espíritos'),
(25, 25, 'Trofeu dos Dragões'),
(26, 26, 'Trofeu do Submundo');


INSERT INTO Reino (Id_R, Nome__Reino, Descricao) VALUES
(9, 'Vaeternus', 'O reino dos vampiros, governado por Nitara.'),
(10, 'Zaterra', 'O reino dos saurianos, originalmente lar de Reptile.'),
(11, 'Krynn', 'Um reino misterioso mencionado brevemente, pouco se sabe sobre ele.'),
(12, 'Arktika', 'Um reino gelado, lar de seres adaptados ao frio extremo.'),
(13, 'Insectrealm', 'Um reino habitado por criaturas insetoides, com sua própria hierarquia e sociedade.'),
(14, 'Seido', 'Outro nome para Orderrealm, conhecido por sua estrita aderência à lei e ordem.'),
(15, 'Chaos', 'Outro nome para Chaosrealm, onde o caos e a anarquia reinam supremos.'),
(16, 'Kamidogu', 'Um reino sagrado, conhecido por abrigar os Kamidogu, objetos de grande poder.'),
(17, 'Dreamrealm', 'Um reino acessível apenas através de sonhos, habitado por seres oníricos.'),
(18, 'Darkrealm', 'Um reino sombrio e perigoso, governado por entidades malignas.'),
(19, 'Lightrealm', 'O oposto de Darkrealm, um reino de luz e bondade, habitado por seres benevolentes.'),
(20, 'Sandrealm', 'Um reino desértico, onde a sobrevivência é uma luta constante contra os elementos.'),
(21, 'Aquarealm', 'Um reino aquático, governado por seres marinhos e subaquáticos.'),
(22, 'Flamerealm', 'Um reino de fogo e magma, habitado por seres adaptados ao calor extremo.'),
(23, 'Forestrealm', 'Um reino vasto e verdejante, coberto por florestas densas e vida selvagem abundante.'),
(24, 'Skyrealm', 'Um reino nas alturas, com cidades flutuantes e seres que dominam o ar.'),
(25, 'Mysticrealm', 'Um reino de magia e mistério, onde feiticeiros e criaturas mágicas reinam.'),
(26, 'Voidrealm', 'Um reino de vazio absoluto, onde o espaço e o tempo são distorcidos.'),
(27, 'Spiritrealm', 'Um reino espiritual, onde almas e espíritos vagam livres.'),
(28, 'Timerealm', 'Um reino onde o tempo é fluido e os habitantes têm controle sobre ele.'),
(29, 'Shadowrealm', 'Um reino de sombras e escuridão, onde os seres vivem nas penumbras.'),
(30, 'Crystalrealm', 'Um reino brilhante, onde cristais mágicos são a fonte de poder e vida.');

SELECT * FROM Lutador;

SELECT * FROM Lutador
WHERE Reino_de_origem = 'Earthrealm';

SELECT * FROM Lutador
ORDER BY Forca DESC;

SELECT * FROM Torneio;

SELECT * FROM Luta;

SELECT * FROM Reino;

SELECT COUNT(*) AS Total_de_Lutadores FROM Lutador;

SELECT * FROM Premiacao WHERE Id_T IN (SELECT Id_T FROM Torneio WHERE Local = 'Earthrealm');

SELECT * FROM Luta WHERE Resultado = 'Vitória do Lutador 1';

SELECT * FROM Lutador WHERE Genero = 'Masculino' AND Idade > 30;