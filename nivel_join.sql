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

