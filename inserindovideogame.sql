INSERT INTO TipoPessoa(Descricao_TipoPessoa)
VALUES  (DEFAULT, 'Cliente'),
        (DEFAULT, 'Funcionário');

INSERT INTO Pessoa(idPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa) 
VALUES (DEFAULT, '2', 'Alexandre Araújo', '3597848-9', '35765898777'),
       (DEFAULT, '2', 'Giomar de Oliveira', '2657945-8', '26597520944'),
       (DEFAULT, '1', 'Bruno Correa', '4875204-0', '35987489601'),
       (DEFAULT, '1', 'Jonathan Almeida', '3978459-9', '39874548407'),
       (DEFAULT, '2', 'Ricardo Lopes', '4587457-1', '29874587915');

INSERT INTO Cliente(idCliente, Pai_Cliente, Mae_Cliente, Nick_Cliente, Senha_Cliente) 
VALUES (DEFAULT, '3', '', '', 'bcorrea', '159874'),
       (DEFAULT, '4', '', '', 'jalmeida', '854789');

INSERT INTO TipoLocal(Descricao_TipoLocal) 
VALUES  (DEFAULT, 'Residencial'),
        (DEFAULT, 'Comercial'),
        (DEFAULT, 'Pessoal');;

INSERT INTO Contato(idContato, Telefone_Contato, Email_Contato) 
VALUES (DEFAULT, '3', '1', '1156662008', 'aaraujo@ig.com.br'),
       (DEFAULT, '1', '1', '1156691587', 'alearaujo@uol.com.br'),
       (DEFAULT, '3', '2', '1156698877', 'goliveira@terra.com.br'),
       (DEFAULT, '3', '3', '11998770028', 'bcorreia@ig.com.br'),
       (DEFAULT, '3', '4', '11998887900', 'jalmeida@bol.com.br'),
       (DEFAULT, '3', '5', '1156637895', 'rlopes@hotmail.com.br');


INSERT INTO Endereco(idEndereco, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco) 
VALUES (DEFAULT, '3', '1', 'Rua Demonte Risco', '220', DEFAULT, 'Interlagos', '04814-578',  'São Paulo', 'SP'),
       (DEFAULT, '3', '2', 'Rua Nascimento de Moraes', '51', DEFAULT, 'Grajaú', '04922-510',  'São Paulo', 'SP'),
       (DEFAULT, '3', '3', 'Praça Montes Claros', '15', 'A', 'Progresso', '04914-000',  'São Paulo', 'SP'),
       (DEFAULT, '3', '4', 'Av.Primavera', '1010', DEFAULT, 'Primavera', '04010-100',  'São Paulo', 'SP'),
       (DEFAULT, '3', '5', 'Rua Marinez', '2', DEFAULT, 'Orion', '04878-879',  'São Paulo', 'SP'); 

INSERT INTO Jogos(idJogos, Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo) 
VALUES (DEFAULT, 'Copa do Mundo 2010 - Africa do Sul','Competição futebolista', 'Futebol', 'Top Games Kids'),
       (DEFAULT, 'FIFA', 'Simulador do EA Sports', 'Futebol', 'Top Games Kids'),
       (DEFAULT, 'Homem Aranha', 'Versão TEEN', 'Ação', 'Top Games Kids'),
       (DEFAULT, 'LestsLearn', 'Jogo para praticar inglês', 'Educativo', 'Top Games Kids');

INSERT INTO VideoGame(idVideoGame, Modelo_VideoGame, NS_VideoGame) 
VALUES (DEFAULT, 'XBOX360', 'XB91054125'),
       (DEFAULT, 'Playstation 3Slim', 'SO85E5689'),
       (DEFAULT, 'Sony PSP', 'SOF582189'),
       (DEFAULT, 'Sony PS Vita Wi-Fi Bundle', 'SOG782290'),
       (DEFAULT, 'Playstation 2 Slim', 'SO5A0999'),
       (DEFAULT, 'Nintendo Wii', 'NINFF0051486'); 

INSERT INTO Funcionario(idFuncionario, Sexo, Idade) 
VALUES (DEFAULT, '1', 'M', '22'),
       (DEFAULT, '2', 'M', '19'),
       (DEFAULT, '5', 'F', '19');

INSERT INTO Aluguel(Valor_Aluguel, Data_Aluguel) 
VALUES (DEFAULT, '3', '6', '1', '3', '17.86', '2004-01-20'),
       (DEFAULT, '3', '6', '1', '3', '17.86', '2013-01-09'),
       (DEFAULT, '3', '6', '1', '3', '17.86', '2013-01-04'),
       (DEFAULT, '1', '1', '2', '1', '19.5', '2013-03-03');

SELECT * FROM TipoPessoa
SELECT * FROM Pessoa
SELECT * FROM Cliente
SELECT * FROM TipoLocal
SELECT * FROM Contato
SELECT * FROM Endereco
SELECT * FROM Jogos
SELECT * FROM VideoGame
SELECT * FROM Funcionario
SELECT * FROM Aluguel  