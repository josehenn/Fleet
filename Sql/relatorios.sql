-- =====================================
-- Comandos SQL para Relatórios
-- Projeto: Fleet 
-- =====================================

-- RELATÓRIO 1: Lista de veículos
SELECT
    marvei AS "Marca",
    modvei AS "Modelo",
    plavei AS "Placa",
    anovei AS "Ano"
FROM
    veiculo
ORDER BY
    marvei ASC, modvei ASC;

-- RELATÓRIO 2: Manutenções de um veículo específico
SELECT
    v.marvei AS "Marca",
    v.modvei AS "Modelo",
    v.plavei AS "Placa",
    m.datman AS "Data",
    m.tipman AS "Tipo de Serviço",
    m.valman AS "Custo"
FROM
    manutencao m
JOIN
    veiculo v ON m.veiculocodvei = v.codvei
WHERE
    v.plavei = 'ABC1D23'
ORDER BY
    m.datman DESC;

-- RELATÓRIO 3: Abastecimentos realizados no mês de Maio
SELECT
    m.nommot AS "Motorista",
    a.dataabas AS "Data do Abastecimento",
    v.plavei AS "Placa do Veículo",
    a.litaba AS "Litros Abastecidos",
    a.valaba AS "Valor Total (R$)"
FROM
    abastecimento a
JOIN
    motorista m ON a.motoristacodmot = m.codmot
JOIN
    veiculo v ON a.veiculocodvei = v.codvei
WHERE
    a.dataabas BETWEEN '2025-05-01' AND '2025-05-31'
ORDER BY
    m.nommot ASC, a.dataabas ASC;

-- RELATÓRIO 4: Custos de manutenção e abastecimento por veículo
SELECT
    v.codvei AS "Código",
    v.marvei AS "Marca",
    v.modvei AS "Modelo",
    v.plavei AS "Placa",
    COUNT(DISTINCT m.codman) AS "Qntd de Manutenções",
    COALESCE(SUM(m.valman), 0) AS "Custo Manutenção (R$)",
    COALESCE(SUM(a.valaba), 0) AS "Custo Abastecimento (R$)",
    COALESCE(SUM(m.valman), 0) + COALESCE(SUM(a.valaba), 0) AS "Custo Total (R$)"
FROM
    veiculo v
LEFT JOIN
    manutencao m ON v.codvei = m.veiculocodvei AND m.datman BETWEEN '2025-05-01' AND '2025-05-31'
LEFT JOIN
    abastecimento a ON v.codvei = a.veiculocodvei AND a.dataabas BETWEEN '2025-05-01' AND '2025-05-31'
GROUP BY
    v.codvei, v.marvei, v.modvei, v.plavei
HAVING
    COALESCE(SUM(m.valman), 0) > 0 OR COALESCE(SUM(a.valaba), 0) > 0
ORDER BY
    "Custo Total (R$)" DESC;
