
--1
SELECT Nome, Ano FROM Filmes

--2
--A foto esta diferente do que pede, na foto também mostra a duração mas no enunciado só pede o nome e ano.
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
--posso estar enganado mas acho que o enunciado foi trocado ordenar por duração por quantidade
SELECT Ano ,COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome , Generos.Genero FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome , Generos.Genero FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome,Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM FIlmes
INNER JOIN ElencoFilme
ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores
ON  ElencoFilme.IdAtor = Atores.Id