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