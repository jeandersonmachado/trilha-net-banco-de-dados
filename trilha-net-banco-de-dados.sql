SELECT Nome, Ano FROM Filmes
ORDER BY Ano

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'de volta para o futuro'

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(duracao) DESC;

SELECT Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

SELECT Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT 
    Filmes.nome,
    Generos.genero
FROM 
    Filmes
JOIN 
    FilmesGenero ON Filmes.id = FilmesGenero.idFilme
JOIN 
    Generos ON FilmesGenero.idGenero = Generos.id
WHERE
	Generos.genero = 'Mistério'