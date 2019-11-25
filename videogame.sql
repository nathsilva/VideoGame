create database videogame;
use videogame;

create table TipoPessoa(
	idTipoPessoa int primary key not null auto_increment, 
	Descricao_TipoPessoa varchar(20)not null
	);

create table Pessoa(
	idPessoa int primary key not null auto_increment,
	Nome_Pessoa varchar(80)not null,
	RG_Pessoa varchar(10)not null,
	CPF_Pessoa varchar(14)not null,
	fk_idTipoPessoa int not null,
	foreign key (fk_idTipoPessoa) references TipoPessoa (idTipoPessoa)
	);

create table Cliente(
	idCliente int primary key not null auto_increment,   
	Pai_Cliente varchar(80)not null,   
	Mae_Cliente varchar(80)not null,
	Nick_Cliente varchar(12)not null,
	Senha_Cliente varchar(8)not null, 
	fk_idPessoa int not null,
	foreign key (fk_idPessoa) references Pessoa (idPessoa)
	);

create table TipoLocal(
	idTipoLocal int primary key not null auto_increment,
	Descricao_TipoLocal varchar(30)not null
	);

create table Contato(
	idContato int primary key not null auto_increment,
	Telefone_Contato varchar(13)not null,
	Email_Contato varchar(30)not null,
	idTipoLocal int not null,
	idPessoa int not null,
	foreign key (idTipoLocal) references TipoLocal (idTipoLocal),
	foreign key (idPessoa) references Pessoa (idPessoa)
	);

create table Endereco(
	idEndereço int primary key not null auto_increment,
	Logradouro_Endereco varchar(70)not null,
	Numero_Endereco int not null,
	Complemento_Endereco varchar(100)not null,
	Bairro_Endereco varchar(20)not null,
	CEP_Endereco varchar(9)not null,
	Cidade_Endereco varchar(30)not null,
	Estado_Endereco varchar(2)not null,
	idTipoLocal int not null,
	idPessoa int not null,
	foreign key (idTipoLocal) references TipoLocal (idTipoLocal),
	foreign key (idPessoa) references Pessoa (idPessoa)
	);

create table Jogos(
	idJogos int primary key not null auto_increment,
	Nome_Jogo varchar(30)not null,
	Descricao_Jogo varchar(120)not null,
	Genero_Jogo varchar(20)not null,
	Produtora_Jogo varchar(40)not null
	);

create table VideoGame(
	idVideoGame int primary key not null auto_increment,
	Modelo_VideoGame varchar(20)not null,
	NS_VideoGame varchar(24)not null
	);

create table Funcionario(
	idFuncionario int primary key not null auto_increment,
	Sexo char(1) check (upper(sexo)='M' or upper(sexo)='F'),
	Idade int not null,
	idPessoa int not null,
	foreign key (idPessoa) references Pessoa (idPessoa)
	);

create table Aluguel(
	Valor_Aluguel real not null,
	Data_Aluguel date not null,
	idFuncionario int not null,
	idVideoGame int not null,
	idCliente int not null,
	idJogos int not null,
	foreign key (idFuncionario) references Funcionario (idFuncionario),
	foreign key (idVideoGame) references VideoGame (idVideoGame),
	foreign key (idCliente) references Cliente (idCliente),
	foreign key (idJogos) references Jogos (idJogos)
	);

show tables;

describe aluguel;
describe cliente;
describe contato;
describe endereco;
describe funcionario;
describe jogos;
describe pessoa;
describe tipolocal;
describe tipopessoa;
describe videogame;
