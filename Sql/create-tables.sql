-- =====================================
-- Script de Criação das Tabelas
-- Projeto: Fleet 
-- =====================================

-- [Tabela empresa]
CREATE TABLE empresa (
    codemp SERIAL PRIMARY KEY,
    nomemp VARCHAR(100) NOT NULL,
    razsocemp VARCHAR(100),
    cnpjemp VARCHAR(18) NOT NULL UNIQUE,
    emailemp VARCHAR(100),
    telemp VARCHAR(20),
    endemp VARCHAR(100) NOT NULL
);

-- [Tabela motorista]
CREATE TABLE motorista (
    codmot SERIAL PRIMARY KEY,
    empresacodemp INT NOT NULL,
    nommot VARCHAR(100) NOT NULL,
    cpfmot VARCHAR(14) NOT NULL UNIQUE,
    telmot VARCHAR(20),
    CONSTRAINT motorista_codemp_fkey_001 FOREIGN KEY (empresacodemp) REFERENCES empresa (codemp)
);

-- [Tabela veiculo]
CREATE TABLE veiculo (
    codvei SERIAL PRIMARY KEY,
    empresacodemp INT NOT NULL,
    marvei VARCHAR(80) NOT NULL,
    modvei VARCHAR(100) NOT NULL,
    plavei VARCHAR(7) NOT NULL UNIQUE,
    anovei INT NOT NULL,
    datvei TIMESTAMP,
    CONSTRAINT veiculo_codemp_fkey_001 FOREIGN KEY (empresacodemp) REFERENCES empresa (codemp)
);

-- [Tabela manutencao]
CREATE TABLE manutencao (
    codman SERIAL PRIMARY KEY,
    veiculocodvei INT NOT NULL,
    datman TIMESTAMP NOT NULL,
    tipman VARCHAR(100) NOT NULL,
    valman NUMERIC(10,2) NOT NULL,
    staman VARCHAR(30) DEFAULT 'Pendente',
    CONSTRAINT manutencao_codvei_fkey_001 FOREIGN KEY (veiculocodvei) REFERENCES veiculo (codvei) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- [Tabela viagem]
CREATE TABLE viagem (
    codvia SERIAL PRIMARY KEY,
    motoristacodmot INT NOT NULL,
    veiculocodvei INT NOT NULL,
    origlatvia NUMERIC(10,6) NOT NULL,
    origlonvia NUMERIC(10,6) NOT NULL,
    destlatvia NUMERIC(10,6) NOT NULL,
    destlonvia NUMERIC(10,6) NOT NULL,
    datinivia DATE NOT NULL,
    datfimvia DATE,
    motvia VARCHAR(150),
    CONSTRAINT viagem_codmot_fkey_001 FOREIGN KEY (motoristacodmot) REFERENCES motorista (codmot) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT viagem_codvei_fkey_002 FOREIGN KEY (veiculocodvei) REFERENCES veiculo (codvei) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- [Tabela abastecimento]
CREATE TABLE abastecimento (
    codaba SERIAL PRIMARY KEY,
    motoristacodmot INT NOT NULL,
    veiculocodvei INT NOT NULL,
    viagemcodvia INT,
    dataabas TIMESTAMP NOT NULL,
    litaba NUMERIC(10,2) NOT NULL,
    valaba NUMERIC(10,2) NOT NULL,
    posaba VARCHAR(80),
    CONSTRAINT abastecimento_codmot_fkey_001 FOREIGN KEY (motoristacodmot) REFERENCES motorista (codmot) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT abastecimento_codvei_fkey_002 FOREIGN KEY (veiculocodvei) REFERENCES veiculo (codvei) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT abastecimento_codvia_fkey_003 FOREIGN KEY (viagemcodvia) REFERENCES viagem (codvia) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- [Tabela carga]
CREATE TABLE carga (
    codcarg SERIAL PRIMARY KEY,
    viagemcodvia INT NOT NULL,
    descar VARCHAR(255),
    tipcar VARCHAR(100) NOT NULL,
    valcar NUMERIC(12,2) NOT NULL,
    pesocar NUMERIC(10,2),
    volcar NUMERIC(10,2),
    CONSTRAINT carga_codvia_fkey_001 FOREIGN KEY (viagemcodvia) REFERENCES viagem (codvia)
);

-- [Tabela doc_viagem]
CREATE TABLE doc_viagem (
    coddocvia SERIAL PRIMARY KEY,
    viagemcodvia INT NOT NULL,
    tipdocvia VARCHAR(255) NOT NULL,
    chavdocvia VARCHAR(50) NOT NULL,
    valdocvia DATE NOT NULL,
    stadocvia VARCHAR(40) DEFAULT 'Emitido' NOT NULL,
    arqdocvia VARCHAR(255),
    CONSTRAINT doc_viagem_codvia_fkey_001 FOREIGN KEY (viagemcodvia) REFERENCES viagem (codvia) ON UPDATE CASCADE ON DELETE RESTRICT
);
