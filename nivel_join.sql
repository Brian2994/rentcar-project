-- TREINAMENTOS PARA ENTENDER O CONCEITO DE JOINS

-- Exercício 1 — INNER JOIN
-- A pergunta é:
-- Quais clientes possuem pedidos?
-- cliente | produto | valor

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    INNER JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id;

-- Exercício 2 — LEFT JOIN
-- Quais clientes possuem pedidos?
-- Todos os clientes, mesmo aqueles que não possuem pedidos.

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    LEFT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id;

-- Exercício 3 — RIGHT JOIN
-- Todos os pedidos, mesmo aqueles que não possuem um cliente correspondente.
-- cliente | produto | valor

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    RIGHT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id;

-- Exercício 4 — FULL OUTER JOIN
-- Quero todos os clientes e todos os pedidos, independentemente de existir correspondência.
-- cliente | produto | valor

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    FULL OUTER JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id;

-- Exercício 5 — FULL OUTER + IS NULL
-- Quais clientes não possuem nenhum pedido?

SELECT
    clientes_join.nome AS cliente
FROM clientes_join
    FULL OUTER JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
WHERE
    pedidos_join.id IS NULL;

-- Exercício 6 — FULL OUTER JOIN
-- Quais pedidos não possuem um cliente correspondente?
-- produto | valor

SELECT
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
FULL OUTER JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
WHERE
    clientes_join.id IS NULL;

-- Exercício 7 — FULL OUTER JOIN
-- Quais clientes não possuem pedidos OU quais pedidos não possuem clientes?
-- cliente | produto | valor

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    FULL OUTER JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
WHERE
    pedidos_join.id IS NULL
    OR
    clientes_join.id IS NULL;

-- Exercício 8 — LEFT JOIN
-- Listar todos os clientes e mostrar quantos pedidos cada um possui.
-- cliente | quantidade_pedidos

SELECT
    clientes_join.nome AS cliente,
    COUNT(pedidos_join.produto) AS quantidade_pedidos
FROM clientes_join
    LEFT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
GROUP BY
    clientes_join.nome;

-- Exercício 9 — LEFT JOIN + HAVING
-- Quais clientes possuem pelo menos 2 pedidos?

SELECT
    clientes_join.nome AS cliente,
    COUNT(pedidos_join.produto) AS quantidade_pedidos
FROM clientes_join
    LEFT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
GROUP BY
    clientes_join.nome
HAVING
    COUNT(pedidos_join.produto) >= 2;

-- Exercício 10 — LEFT JOIN + condição no ON
-- Todos os clientes + quantidade de pedidos acima de R$ 200.

SELECT
    clientes_join.nome AS cliente,
    COUNT(pedidos_join.id) AS pedidos_acima_200
FROM clientes_join
    LEFT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
    AND pedidos_join.valor > 200
GROUP BY
    clientes_join.nome;

-- Exercício 11 — WHERE
-- Mostre somente clientes que possuem pelo menos um pedido acima de R$ 200.

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    LEFT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
WHERE pedidos_join.valor > 200;

-- Exercício 12 — RIGHT JOIN
-- Liste todos os pedidos e, quando existir, mostre o nome do cliente.

SELECT
    clientes_join.nome AS cliente,
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    RIGHT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id;

-- Exercício 13 — RIGHT JOIN + IS NULL
-- Quais pedidos não possuem um cliente correspondente?
-- produto | valor

SELECT
    pedidos_join.produto,
    pedidos_join.valor
FROM clientes_join
    RIGHT JOIN pedidos_join
    ON clientes_join.id = pedidos_join.cliente_id
WHERE clientes_join.id IS NULL;