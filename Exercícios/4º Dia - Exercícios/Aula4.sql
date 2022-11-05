--
--*** CRIAÇÃO TABELA TRANSAÇÃO ***
--

create table tbVendas_Final(
CodCliente int,
Categoria varchar(50),
SubCategoria varchar(50),
Produto varchar(50),
Ano int,
Mes int,
Cidade varchar(50),
Valor float,
Volume float)

select * from tbVendas_Final

--
--** CARGA DE DADOS VIA BULK INSERT **
--
truncate table tbVendas_Final

BULK INSERT tbVendas_Final
	FROM 'D:\Git\EBAC - Imersão de Dados\Imersao Dados\outPut\Aula 3\Dados para SQL\vendas.csv'
	WITH
	(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
	)


create table tbPotencial_Final (
CodCliente int,
Ano int,
Area_Comercial float,
Area_Hibrida float,
Area_Residencial float,
Area_Industrial float,
ValorPotencial float
)

truncate table tbPotencial_Final

BULK INSERT tbPotencial_Final
	FROM 'D:\Git\EBAC - Imersão de Dados\Imersao Dados\outPut\Aula 3\Dados para SQL\potencial.csv'
	WITH
	(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
	)

select * from tbPotencial_Final

CREATE INDEX index_potencial ON tbPotencial_Final (CodCliente);
CREATE INDEX index1 ON tbVendas_Final (CodCliente);