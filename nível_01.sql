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

-- Exercício 12 — AND
-- Agora vamos aumentar um pouco a dificuldade.
-- O gerente quer:
-- Veículos da marca Toyota que estejam disponíveis.
-- Temos duas condições: 1. marca deve ser Toyota 2. status deve ser disponível
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE
    marca = 'Toyota'
    AND status = 'disponível';

-- Exercício 13 — OR
-- Agora vamos mudar a lógica.
-- O gerente diz:
-- Quero os veículos que sejam Toyota OU BMW.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE
    marca = 'Toyota'
    OR marca = 'BMW';

-- Exercício 14 — AND + OR
-- O gerente diz:
-- Quero veículos que sejam Toyota ou BMW, mas que estejam disponíveis.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE (
        marca = 'Toyota'
        OR marca = 'BMW'
    )
    AND status = 'disponível';

-- Exercício 15 — BETWEEN
-- O gerente quer:
-- Veículos fabricados entre 2023 e 2024, inclusive.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE ano BETWEEN 2023 AND 2024;

-- Exercício 16 — IN
-- O gerente diz:
-- Quero os veículos das marcas Toyota, BMW ou Honda.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE marca IN ('Toyota', 'BMW', 'Honda');

-- Exercício 17 — NOT IN
-- O gerente quer:
-- Todos os veículos que NÃO sejam Toyota, BMW ou Honda.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE marca NOT IN ('Toyota', 'BMW', 'Honda');

-- Exercício 18 — LIKE
-- O gerente quer:
-- Encontrar todos os veículos cujo modelo começa com a letra C.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE modelo LIKE 'C%';

-- Exercício 19 — LIKE + %
-- Agora o gerente quer algo diferente:
-- Encontre todos os modelos que contêm a letra 'o' em qualquer posição.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE modelo LIKE '%o%';

-- Exercício 20 — ILIKE
-- Encontre todos os modelos que contenham a letra o, independentemente de ser 'o' ou 'O'.
-- Queremos retornar: 'marca' 'modelo' 'ano' 'status'

SELECT marca, modelo, ano, status
FROM veiculos
WHERE modelo ILIKE '%o%';

-- Exercício 21 — IS NULL
-- Temos um aluguel ativo na nossa tabela alugueis:
-- O gerente quer:
-- Liste todos os aluguéis que ainda não possuem data de devolução.
-- Queremos retornar: 'id' 'cliente_id' 'veiculo_id' 'retirada' 'devolucao' 'status'

SELECT id, cliente_id, veiculo_id, retirada, devolucao, status
FROM alugueis
WHERE devolucao IS NULL;

-- Exercício 22 — IS NOT NULL
-- O gerente quer:
-- Liste todos os aluguéis que já foram devolvidos.
-- Se o veículo já foi devolvido, então devolucao não é NULL.
-- Queremos retornar: 'id' 'cliente_id' 'veiculo_id' 'retirada' 'devolucao' 'status'

SELECT id, cliente_id, veiculo_id, retirada, devolucao, status
FROM alugueis
WHERE devolucao IS NOT NULL;

-- Exercício 23
-- O gerente pergunta:
-- Quantos veículos existem cadastrados na RentCar?
-- Escreva uma query que retorne a quantidade total de veículos cadastrados.

SELECT COUNT(*) AS total_veiculos FROM veiculos;

-- Exercício 24 — COUNT + WHERE
-- Agora vamos transformar isso em uma pergunta de negócio.
-- Quantos veículos estão atualmente disponíveis?

SELECT COUNT(*) AS total_disponiveis
FROM veiculos
WHERE status = 'disponível';

-- Exercício 25 — COUNT() + GROUP BY
-- Imagine que o gerente pergunte:
-- Quantos veículos existem em cada status?
-- disponível           ?
-- alugado              ?
-- manutenção           ?
-- Queremos retornar: status,  quantidade.

SELECT status,
COUNT(*) AS quantidade
FROM veiculos
GROUP BY status;

-- Exercício 26 — GROUP BY + ORDER BY
-- Agora o gerente quer:
-- Mostre quantos veículos existem em cada status, ordenando do status com maior quantidade para o menor.
-- Queremos retornar: status,  quantidade.

SELECT status,
COUNT(*) AS quantidade
FROM veiculos
GROUP BY status
ORDER BY quantidade DESC;

-- Exercício 27 — SUM()
-- O gerente pergunta:
-- Qual é o valor total de todos os pagamentos registrados?
-- Tabela pagamentos

SELECT SUM(valor) AS total_pagamentos FROM pagamentos;