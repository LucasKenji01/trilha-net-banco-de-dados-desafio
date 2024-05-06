--1� Consulta - Buscar nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

--2� Consulta - Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	*
FROM Filmes
ORDER BY ANO ASC

--3� Consulta - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o Futuro'


--4� Consulta - Buscar os filmes lan�ados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

--5� Consulta - Buscar os filmes lan�ados AP�S o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

--6� Consulta - Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenado pela dura��o em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

--7� Consulta - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8� Consulta - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	*
FROM Atores
WHERE Genero = 'M'

--9� Consulta - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10� Consulta - Buscar o nome do filme e o g�nero
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id


--11� Consulta - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mist�rio'

--12� Consulta - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM Atores A
INNER JOIN ElencoFilme E ON A.Id = E.IdAtor
INNER JOIN Filmes F ON F.Id = E.IdFilme