-- Instruções para criação de tabela do banco Spotify

-- artista 
create table artista (
	id integer primary key autoincrement not null,
	nome text,
	popularidade integer,
	seguidores integer
)

-- pais
create table pais (
	id integer primary key autoincrement not null,
	nome text,
	sigla text
)

-- musica
create table musica (
	id integer primary key autoincrement not null, -- chave primaria
	nome text,
	url text,
	id_artista integer,
	-- chave estrangeira: PS: a referencia tem que ter o mesmo tipo PK
	-- Minha FK nesta tabela, deve fazer referencia a tabela artista na coluna id
	foreign key(id_artista) references artista(id)
)

-- genero
create table genero (
	id integer primary key autoincrement not null,
	nome text
)

-- genero_artista


-- musica_pais

