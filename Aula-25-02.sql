--USE master
--GO
--CREATE DATABASE INF2FM
--GO
USE INF2FM
GO
CREATE TABLE tb_Funcionario
(codigo_func   int          not null,
nome_func      varchar(40)  not null,
salario_func   decimal(5,2) not null,
datacad_func   datetime     not null)
GO

CREATE TABLE tb_Categoria
(
idcat   NUMERIC  (5)   PRIMARY KEY,
nomecat VARCHAR  (50)  UNIQUE,
preco   NUMERIC  (6,2) CHECK(preco>=0)
);

create table tb_Filme
(
idFilme NUMERIC(5) not null,
idcategoria numeric(5) not null,
titulo varchar(50) not null,
titoriginal varchar(50) null,
ano char(4) not null,
sinopse varchar(400) not null,
constraint pk_filme primary key(idFilme),
constraint fk_filmecat foreign key(idcategoria)
						references tb_categoria(idcat)
--constraint existe uma restrição a nivel de tabela


);
alter table tb_funcionario 
alter column salario_func decimal(10,2)
go

--sp_help tb_funcionario--
--sp_help tb_categoria--
--sp_help tb_filme--
alter table tb_funcionario add situacao_func char(1) null,
data_nasc_func datetime null;

alter table tb_funcionario drop column
 situacao_func;
--drop table tb_funcionario;--

--Tipos de Dados
                     -----------------------------------------------------------------------
/*    CARACTERES     = Char(n) qq digitos limite 8 mil=                                    *
                     * Varchar(n) qq digitos entrada de dados nao tem tam.fixo             *
				     * Text  limite 2.147.483.647 bytes                                    *
					 * --------------------------------------------------------------------*
                     *                                                                     *
   NUMEROS INTEIROS  = bigint     (2 elevado 63)     consome 8 bytes                       *
                     * int        (2 elevado 31)     consome 4 bytes                       *
					 * Smallint   -32768 a 32727     consome 2 bytes                       *
					 * tinyint        0 a 255        consome 1 byte                        *
					 * Bit         0 ou 1 ou null                                          *
					 * --------------------------------------------------------------------*
					 *                                                                     *
    NUMEROS EXATOS   = Decimal(P,S) -10^38 -1 e +10^38 -2                                  *
                     * P = precisão  1 a 9 ocupa 5 bytes                                   *
                     *              10 a 19 ocupa 9 bytes                                  *
					 *		   20 a 28 ocupa 13 bytes                                      *
					 *			   29 a 38 oucpa 17 bytes                                  *
					 * S = casas decimais                                                  *
					 * Numerico(P,S) igual ao decimal porem ocupa menos espaço             *
					 * --------------------------------------------------------------------*
  NUMEROS APROXIMADOS= Float                                                               *
                     * Real                                                                *
					 * --------------------------------------------------------------------*
					 *                                                                     *
  VALORES MONETARIOS = Money                                                               *
                     * Smallmoney                                                          *
					 * --------------------------------------------------------------------*
   PARA DATA E HORA  = Datetime      01/01/1753 a 31/12/9999      8 bytes                  *
					 * Smalldatetime 01/01/1900 a 06/06/2079      4 bytes                  *
					 * --------------------------------------------------------------------*
      BINARIOS       = binary(n) formato binario de 1 ate 8000 bytes                       *
                     * varbinary(n)   //    //          //   //                            *
					 * image 2^31 -1 byte  = 2.147.483.27 bytes                            *
					 * --------------------------------------------------------------------*
   TIPOS ESPECIAIS   = uniqueidentifier é um hexadecimal 16 bytes                          *
                     * timestamp    numero gerado pelo SQL 8 bytes                         *
				     * XML guardar uma codificaçao em XML  */                              

/* RECOMENDAÇÕES 
-Antes de criar o dicionário de dados confirme a MODELAGEM - assim minimiza erros de RELACIONAMENTOS;
-Certifique-se que na MODELAGEM todas as tabelas tenham CHAVE PRIMÁRIA;					   					  
-NUNCA mas NUNCA memso inicie a criação de um banco SEM MODELAGEM;
-MODELAGEM correta ajuda na PROGRAMAÇÃO. */					  					  	

--CREATE TABLE tbCategoria(
--idcat   NUMERIC  (5)   PRIMARY KEY,
--nomecat VARCHAR  (50)  UNIQUE,
--preco   NUMERIC  (6,2) CHECK(preco>=0)
--);  			    
 /* create table tb_fornecedor(
  codigo_forn int primary key,
  descricao_forn varchar(40) not null,
  contato_forn varchar(50) not null,
  fone_forn char(11)
  );
  create table tb_produto(
  codigo_produto int primary key,
  nome_produto varchar (40) not null,
  data_cadastro datetime not null,
  valor_produto money not null,
  status_produto bit not null
  );
  --Para inserir dados
  --POSICIONAL RESPEITA A POSIÇAO QIE FOI CRIADO AS COLUNAS DA TABELA
  INSERT INTO tb_Categoria values
  (1,'HIGIENE',20.53);
  GO
  --declarativo COLOCA AS COLUNA AO SEU CORRESPONDENTE
  INSERT INTO tb_Categoria(idcat,preco,nomecat)
  values 
  (4,22.93,'HORTFRUITI');
  GO

  SELECT * FROM tb_Categoria
  GO
  SELECT nomecat from tb_Categoria
  where idcat=1;
  go
  select count(*) as quant from tb_Categoria
  go
  --dia 22/03
  create table tb_fornecedor2
  (codigo_forn int not null
				constraint pk_forn2 primary key,
				descricao_forn varchar(40) not null unique,
				contato_forn varchar(30) null,
				fone_forn char(11) null);
	go
	INSERT INTO tb_fornecedor2 values
	(1,'funquista','marcos','12346542389')
	INSERT INTO tb_fornecedor2 values
	(2,'musico','mari','12346542183')
	INSERT INTO tb_fornecedor2 values
	(3,'cantor','malu','12346543189')
	INSERT INTO tb_fornecedor2 values
	(4,'ferro','luiz','12346342189')
  go
 
  SELECT * FROM tb_fornecedor2;
  GO
  delete from tb_fornecedor2;
   delete from tb_fornecedor2 where codigo_forn = 2;
    delete from tb_fornecedor2 where codigo_forn like '%a%';
	update tb_fornecedor2 set contato_forn='abigail' where codigo_forn=2;
	update tb_fornecedor2 set contato_forn='ze luis',fone_forn='1199001232'
											where codigo_forn=3;

USE INF2FM
go
drop table tb_Categoria;
drop table tb_Filme;
drop table tb_Funcionario;
drop table tb_fornecedor2; */






























