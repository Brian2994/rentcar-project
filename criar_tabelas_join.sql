-- 1. Criamos as tabelas
CREATE TABLE clientes_join (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE pedidos_join (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    produto VARCHAR(100),
    valor DECIMAL(10,2)
);

-- 2. Inserimos os clientes
INSERT INTO clientes_join (id, nome)
VALUES
    (1, 'Ana'),
    (2, 'Bruno'),
    (3, 'Carlos'),
    (4, 'Diana'),
    (5, 'Eduardo');

-- 3. Inserimos os pedidos
INSERT INTO pedidos_join (id, cliente_id, produto, valor)
VALUES
    (101, 1, 'Notebook', 3500.00),
    (102, 2, 'Mouse', 100.00),
    (103, 2, 'Teclado', 250.00),
    (104, NULL, 'Monitor', 900.00),
    (105, 99, 'Headset', 300.00);