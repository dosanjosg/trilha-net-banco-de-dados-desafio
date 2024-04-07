-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT
    Nome, Ano, Duracao
FROM 
    Filmes
ORDER BY ANO ASC

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT
    Nome,
    Ano,
    Duracao
FROM 
    Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 Buscar pelos filmes lançados em 1997

SELECT
    Nome,
    Ano,
    Duracao
FROM 
    Filmes
WHERE Ano = 1997

-- 5 Buscar filmes lançados após o ano 2000

SELECT
    Nome,
    Ano,
    Duracao
FROM 
    Filmes
WHERE Ano > 2000

-- 6 Buscar filmes com a duracao maior que 100 e menor que 150,  ordenando pela duracao em ordem crescente

SELECT
    Nome,
    Ano,
    Duracao
FROM 
    Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 Buscar a quantidade de filmes lancados no ano, agrupado por ano, ordenando pela duracao em ordem crescente

SELECT
    Ano,
    COUNT(*) AS 'Quantidade'
FROM 
    Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC

-- 8 Buscar o Atores do genero masculino, retornado o PrimeiroNome, UltimoNome

SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM 
    Atores
WHERE Genero = 'M'

-- 9 Buscar os Atores do genero feminino, retornado o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM 
    Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

-- 10 Buscar o nome do filme e o genero

SELECT
    Nome,
    Genero
FROM Filmes
INNER JOIN FilmesGenero
    ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos
        ON FilmesGenero.IdGenero = Generos.Id


-- 11 Buscar o nome do filme e o genero do tipo Misterio

SELECT
    Nome,
    Genero
FROM Filmes
INNER JOIN FilmesGenero
    ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos
        ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT * FROM Atores
SELECT * FROM Filmes
SELECT * FROM ElencoFilme

SELECT 
    Nome,
    PrimeiroNome,
    UltimoNome,
    Papel
FROM
    Filmes
INNER JOIN Atores
    ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme
    ON Atores.Id = ElencoFilme.IdFilme
