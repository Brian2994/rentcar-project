CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    diaria_base NUMERIC(10,2) NOT NULL
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE agencias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

CREATE TABLE veiculos (
    id SERIAL PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INTEGER NOT NULL,
    categoria_id INTEGER NOT NULL,

    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_veiculo_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categorias(id),

    CONSTRAINT chk_veiculo_status
        CHECK (
            status IN (
                'disponível',
                'alugado',
                'manutenção'
            )
        )
);

CREATE TABLE reservas (
    id SERIAL PRIMARY KEY,

    cliente_id INTEGER NOT NULL,
    veiculo_id INTEGER NOT NULL,
    agencia_id INTEGER NOT NULL,

    data_reserva DATE NOT NULL,
    inicio DATE NOT NULL,
    fim DATE NOT NULL,

    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_reserva_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id),

    CONSTRAINT fk_reserva_veiculo
        FOREIGN KEY (veiculo_id)
        REFERENCES veiculos(id),

    CONSTRAINT fk_reserva_agencia
        FOREIGN KEY (agencia_id)
        REFERENCES agencias(id),

    CONSTRAINT chk_reserva_status
        CHECK (
            status IN (
                'pendente',
                'concluída',
                'cancelada'
            )
        ),

    CONSTRAINT chk_reserva_datas
        CHECK (fim >= inicio)
);

CREATE TABLE alugueis (
    id SERIAL PRIMARY KEY,

    cliente_id INTEGER NOT NULL,
    veiculo_id INTEGER NOT NULL,
    agencia_id INTEGER NOT NULL,

    retirada DATE NOT NULL,
    devolucao DATE,

    km_inicial INTEGER NOT NULL,
    km_final INTEGER,

    valor_diaria NUMERIC(10,2) NOT NULL,

    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_aluguel_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id),

    CONSTRAINT fk_aluguel_veiculo
        FOREIGN KEY (veiculo_id)
        REFERENCES veiculos(id),

    CONSTRAINT fk_aluguel_agencia
        FOREIGN KEY (agencia_id)
        REFERENCES agencias(id),

    CONSTRAINT chk_aluguel_status
        CHECK (
            status IN (
                'ativo',
                'finalizado',
                'cancelado'
            )
        ),

    CONSTRAINT chk_km
        CHECK (
            km_final IS NULL
            OR km_final >= km_inicial
        )
);

CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,

    aluguel_id INTEGER NOT NULL,

    data_pagamento DATE NOT NULL,

    valor NUMERIC(10,2) NOT NULL,

    metodo VARCHAR(20) NOT NULL,

    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_pagamento_aluguel
        FOREIGN KEY (aluguel_id)
        REFERENCES alugueis(id),

    CONSTRAINT chk_pagamento_metodo
        CHECK (
            metodo IN (
                'pix',
                'cartão',
                'dinheiro'
            )
        ),

    CONSTRAINT chk_pagamento_status
        CHECK (
            status IN (
                'pago',
                'pendente',
                'cancelado'
            )
        )
);

CREATE TABLE manutencoes (
    id SERIAL PRIMARY KEY,

    veiculo_id INTEGER NOT NULL,

    data_manutencao DATE NOT NULL,

    tipo VARCHAR(100) NOT NULL,

    custo NUMERIC(10,2) NOT NULL,

    km INTEGER NOT NULL,

    CONSTRAINT fk_manutencao_veiculo
        FOREIGN KEY (veiculo_id)
        REFERENCES veiculos(id)
);