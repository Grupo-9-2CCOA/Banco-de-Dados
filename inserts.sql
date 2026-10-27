USE doces_com_amor;

-- =========================================================
-- ADMIN (senha padrão: admin)
-- =========================================================

INSERT INTO admin(usuario, senha)
VALUES ('admin', '$2a$10$vK/rA0mYsNE5knULSc1aSeaSKAGV5Fh/IzcMdlLEwq3v6actLnI/m');

-- =========================================================
-- CLIENTES
-- =========================================================

INSERT INTO cliente (nome, cpf, telefone)
VALUES
('Ana Silva', '11111111111', '11999990001'),
('Bruno Costa', '22222222222', '11999990002'),
('Carla Souza', '33333333333', '11999990003'),
('Diego Lima', '44444444444', '11999990004'),
('Eva Martins', '55555555555', '11999990005');

-- =========================================================
-- ENDEREÇOS
-- isAtivo foi adicionado para atender ao schema
-- =========================================================

INSERT INTO endereco (
logradouro,
numero,
cep,
complemento,
isAtivo,
id_cliente
)
VALUES
('Rua das Flores', '10', '01001000', 'Apto 1', TRUE, 1),
('Av. Paulista', '200', '01310100', NULL, TRUE, 2),
('Rua Augusta', '305', '01305000', 'Casa', TRUE, 3),
('Rua Consolação', '50', '01301000', NULL, TRUE, 4),
('Rua Bela Cintra', '90', '01415000', 'Apto 5', TRUE, 5);

-- =========================================================
-- STATUS DE ENTREGA
-- =========================================================

INSERT INTO entrega (estado)
VALUES
('Pendente'),
('Em trânsito'),
('Entregue'),
('Cancelado');

-- =========================================================
-- STATUS DE PAGAMENTO
-- =========================================================

INSERT INTO pagamento (estado)
VALUES
('Pendente'),
('Pago'),
('Cancelado');

-- =========================================================
-- PEDIDOS
-- =========================================================

INSERT INTO pedido (
id_cliente,
id_endereco,
descricao,
detalhes,
valor_total,
status_entrega,
status_pagamento,
is_ativo,
is_reagendado,
data_pedido,
data_modificacao,
data_criacao
)
VALUES
(
1, 1, 'Bolo de Chocolate', 'Bolo grande',
85.00, 3, 2, TRUE, FALSE, NOW(), NOW(), NOW()
),
(
1, 1, 'Brigadeiro Gourmet', '50 unidades',
120.00, 1, 1, TRUE, FALSE, NOW(), NOW(), NOW()
),
(
2, 2, 'Torta de Morango', 'Torta média',
95.00, 1, 1, TRUE, FALSE, NOW(), NOW(), NOW()
),
(
3, 3, 'Cupcake Red Velvet', '12 unidades',
60.00, 4, 3, FALSE, FALSE, NOW(), NOW(), NOW()
),
(
4, 4, 'Bolo de Cenoura', 'Bolo pequeno',
55.00, 1, 1, TRUE, TRUE, NOW(), NOW(), NOW()
),
(
5, 5, 'Mousse de Maracujá', '6 unidades',
45.00, 2, 2, TRUE, FALSE, NOW(), NOW(), NOW()
),
(
1, 1, 'Bolo de Baunilha', 'Bolo médio',
75.00, 3, 2, TRUE, FALSE,
DATE_SUB(NOW(), INTERVAL 10 DAY),
DATE_SUB(NOW(), INTERVAL 10 DAY),
DATE_SUB(NOW(), INTERVAL 10 DAY)
),
(
2, 2, 'Pão de Mel', '20 unidades',
80.00, 3, 2, TRUE, FALSE,
DATE_SUB(NOW(), INTERVAL 12 DAY),
DATE_SUB(NOW(), INTERVAL 12 DAY),
DATE_SUB(NOW(), INTERVAL 12 DAY)
),
(
3, 3, 'Trufa de Limão', '30 unidades',
90.00, 4, 3, FALSE, FALSE,
DATE_SUB(NOW(), INTERVAL 11 DAY),
DATE_SUB(NOW(), INTERVAL 11 DAY),
DATE_SUB(NOW(), INTERVAL 11 DAY)
),
(
4, 4, 'Cheesecake', 'Fatia grande',
35.00, 1, 1, TRUE, TRUE,
DATE_SUB(NOW(), INTERVAL 9 DAY),
DATE_SUB(NOW(), INTERVAL 9 DAY),
DATE_SUB(NOW(), INTERVAL 9 DAY)
);
