-- Exercício 1 — SELECT
-- Queremos saber todos os veículos cadastrados na RentCar.
-- Pergunta:
-- Qual SQL você escreveria?

SELECT * FROM veiculos;

-- Exercício 2 — Escolhendo colunas
-- Queremos somente:
-- * marca
-- * modelo
-- * ano
-- * status
-- da tabela veiculos.
-- Escreva a query que retorna somente essas quatro colunas.

SELECT marca, modelo, ano, status FROM veiculos;

-- Exercício 3 — WHERE
-- Imagine que o gerente da RentCar diga:
-- "Quero ver somente os veículos que estão disponíveis para aluguel."
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE status = 'disponível';

-- Exercício 4 — Outro filtro
-- Agora o gerente quer:
-- "Mostre todos os veículos da marca Toyota."
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE marca = 'Toyota';

-- Exercício 5 — Comparação numérica
-- O gerente quer saber:
-- Quais veículos são do ano de 2024 ou mais novos?
-- Seu desafio: Retorne todos os veículos cujo ano seja maior ou igual a 2024.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE ano >= 2024;

-- Exercício 6 — ORDER BY
-- O gerente quer:
-- Todos os veículos, ordenados do mais novo para o mais antigo.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
ORDER BY ano DESC;

-- Exercício 7 — WHERE + ORDER BY
-- O gerente quer:
-- Somente veículos disponíveis, ordenados do mais novo para o mais antigo.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE status = 'disponível'
ORDER BY ano DESC;

-- Exercício 8 — LIMIT
-- O gerente pergunta:
-- Quais são os 3 veículos mais novos da frota?
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
ORDER BY ano DESC
LIMIT 3;

-- Exercício 9 — DISTINCT
-- O gerente pergunta:
-- Quais são as marcas de veículos que a RentCar possui?

SELECT DISTINCT marca FROM veiculos;

-- Exercício 10 — DISTINCT + ORDER BY
-- O gerente quer:
-- Uma lista das marcas existentes na frota, sem repetição, em ordem alfabética.

SELECT DISTINCT marca FROM veiculos ORDER BY marca;

-- Exercício 11 — Comparações
-- O gerente quer:
-- Liste os veículos fabricados antes de 2024.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status FROM veiculos WHERE ano < 2024;