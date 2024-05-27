-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM filmes ORDER BY Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, Count(Ano) as Quantidade FROM filmes group by Ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o g�nero
SELECT Nome, Generos.Genero FROM Filmes 
inner join FilmesGenero
ON Filmes.id = FilmesGenero.IdFilme
inner join Generos
ON FilmesGenero.IdGenero = Generos.Id;

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Nome, Generos.Genero FROM Filmes 
inner join FilmesGenero
ON Filmes.id = FilmesGenero.IdFilme
inner join Generos
ON FilmesGenero.IdGenero = Generos.Id 
WHERE Generos.Genero = 'Mist�rio';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, PrimeiroNome, UltimoNome, ElencoFilme.Papel from Atores
INNER JOIN ElencoFilme ON Atores.id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.id = ElencoFilme.IdFilme;