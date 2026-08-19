INSERT INTO categorias (nome, diaria_base)
VALUES
    ('Econômico', 89.90),
    ('Compacto', 119.90),
    ('SUV', 199.90),
    ('Executivo', 249.90),
    ('Premium', 399.90);


INSERT INTO clientes
    (nome, cidade, estado, data_cadastro)
VALUES
    ('João Silva', 'São Paulo', 'SP', '2025-01-15'),
    ('Maria Santos', 'Campinas', 'SP', '2025-02-10'),
    ('Carlos Oliveira', 'Rio de Janeiro', 'RJ', '2025-02-21'),
    ('Ana Costa', 'Santos', 'SP', '2025-03-05'),
    ('Pedro Souza', 'Curitiba', 'PR', '2025-03-18'),
    ('Juliana Lima', 'Belo Horizonte', 'MG', '2025-04-02'),
    ('Rafael Alves', 'São Paulo', 'SP', '2025-04-15'),
    ('Fernanda Rocha', 'Brasília', 'DF', '2025-05-01'),
    ('Lucas Martins', 'Campinas', 'SP', '2025-05-20'),
    ('Beatriz Mendes', 'São Paulo', 'SP', '2025-06-12');


INSERT INTO agencias
    (nome, cidade, estado)
VALUES
    ('Agência Centro', 'São Paulo', 'SP'),
    ('Agência Aeroporto', 'Campinas', 'SP'),
    ('Agência Copacabana', 'Rio de Janeiro', 'RJ'),
    ('Agência Savassi', 'Belo Horizonte', 'MG'),
    ('Agência Batel', 'Curitiba', 'PR');


INSERT INTO veiculos
    (placa, marca, modelo, ano, categoria_id, status)
VALUES
    ('ABC1D23', 'Chevrolet', 'Onix', 2024, 1, 'disponível'),
    ('DEF4G56', 'Fiat', 'Argo', 2023, 1, 'alugado'),
    ('GHI7J89', 'Toyota', 'Corolla', 2024, 4, 'disponível'),
    ('JKL1M23', 'Jeep', 'Renegade', 2023, 3, 'manutenção'),
    ('MNO4P56', 'Hyundai', 'HB20', 2024, 1, 'disponível'),
    ('PQR7S89', 'Volkswagen', 'T-Cross', 2024, 3, 'alugado'),
    ('STU1V23', 'BMW', '320i', 2023, 5, 'disponível'),
    ('VWX4Y56', 'Toyota', 'Yaris', 2022, 2, 'alugado'),
    ('YZA7B89', 'Honda', 'Civic', 2024, 4, 'disponível'),
    ('BCD1E23', 'Renault', 'Kwid', 2023, 1, 'manutenção');


INSERT INTO reservas
    (cliente_id, veiculo_id, agencia_id, data_reserva, inicio, fim, status)
VALUES
    (1, 1, 1, '2026-07-01', '2026-07-10', '2026-07-13', 'concluída'),
    (2, 3, 2, '2026-07-03', '2026-07-15', '2026-07-20', 'concluída'),
    (3, 6, 3, '2026-07-05', '2026-07-18', '2026-07-22', 'concluída'),
    (4, 5, 1, '2026-07-08', '2026-07-20', '2026-07-25', 'cancelada'),
    (5, 7, 5, '2026-07-10', '2026-07-25', '2026-07-30', 'concluída'),
    (6, 8, 4, '2026-07-12', '2026-07-28', '2026-08-02', 'concluída'),
    (7, 2, 1, '2026-07-15', '2026-08-01', '2026-08-05', 'concluída'),
    (8, 9, 1, '2026-07-18', '2026-08-05', '2026-08-10', 'pendente'),
    (9, 1, 2, '2026-07-20', '2026-08-10', '2026-08-15', 'pendente'),
    (10, 4, 1, '2026-07-22', '2026-08-12', '2026-08-18', 'cancelada');


INSERT INTO alugueis
    (
        cliente_id,
        veiculo_id,
        agencia_id,
        retirada,
        devolucao,
        km_inicial,
        km_final,
        valor_diaria,
        status
    )
VALUES
    (1, 2, 1, '2026-07-01', '2026-07-05', 45200, 45890, 89.90, 'finalizado'),
    (2, 3, 2, '2026-07-05', '2026-07-10', 32100, 32850, 249.90, 'finalizado'),
    (3, 6, 3, '2026-07-08', '2026-07-12', 18500, 19120, 199.90, 'finalizado'),
    (5, 7, 5, '2026-07-15', '2026-07-22', 12000, 12850, 399.90, 'finalizado'),
    (6, 8, 4, '2026-07-20', '2026-07-25', 55400, 56100, 119.90, 'finalizado'),
    (7, 2, 1, '2026-07-25', '2026-07-30', 45890, 46650, 89.90, 'finalizado'),
    (9, 1, 2, '2026-08-01', '2026-08-06', 22100, 22780, 89.90, 'finalizado'),
    (10, 5, 1, '2026-08-03', NULL, 15800, NULL, 89.90, 'ativo');


INSERT INTO pagamentos
    (aluguel_id, data_pagamento, valor, metodo, status)
VALUES
    (1, '2026-07-05', 359.60, 'cartão', 'pago'),
    (2, '2026-07-10', 1249.50, 'cartão', 'pago'),
    (3, '2026-07-12', 799.60, 'pix', 'pago'),
    (4, '2026-07-22', 2799.30, 'cartão', 'pago'),
    (5, '2026-07-25', 599.50, 'pix', 'pago'),
    (6, '2026-07-30', 449.50, 'cartão', 'pago'),
    (7, '2026-08-06', 449.50, 'pix', 'pago'),
    (8, '2026-08-10', 269.70, 'cartão', 'pendente');


INSERT INTO manutencoes
    (veiculo_id, data_manutencao, tipo, custo, km)
VALUES
    (2, '2026-05-10', 'revisão', 850.00, 40000),
    (2, '2026-07-10', 'óleo', 320.00, 45900),
    (4, '2026-06-20', 'revisão', 1200.00, 30000),
    (7, '2026-04-15', 'revisão', 2500.00, 10000),
    (8, '2026-06-01', 'pneus', 1800.00, 52000),
    (10, '2026-07-25', 'motor', 3200.00, 50000);


-- verificando dados
SELECT
    'categorias' AS tabela,
    COUNT(*) AS registros
FROM categorias

UNION ALL

SELECT
    'clientes',
    COUNT(*)
FROM clientes

UNION ALL

SELECT
    'agencias',
    COUNT(*)
FROM agencias

UNION ALL

SELECT
    'veiculos',
    COUNT(*)
FROM veiculos

UNION ALL

SELECT
    'reservas',
    COUNT(*)
FROM reservas

UNION ALL

SELECT
    'alugueis',
    COUNT(*)
FROM alugueis

UNION ALL

SELECT
    'pagamentos',
    COUNT(*)
FROM pagamentos

UNION ALL

SELECT
    'manutencoes',
    COUNT(*)
FROM manutencoes;