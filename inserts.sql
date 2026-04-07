-- Clientes
INSERT INTO cliente (nome, cpf, telefone) VALUES ('Ana Silva', '11111111111', '11999990001');
INSERT INTO cliente (nome, cpf, telefone) VALUES ('Bruno Costa', '22222222222', '11999990002');
INSERT INTO cliente (nome, cpf, telefone) VALUES ('Carla Souza', '33333333333', '11999990003');
INSERT INTO cliente (nome, cpf, telefone) VALUES ('Diego Lima', '44444444444', '11999990004');
INSERT INTO cliente (nome, cpf, telefone) VALUES ('Eva Martins', '55555555555', '11999990005');

-- Endereços
INSERT INTO endereco (logradouro, numero, cep, complemento, id_cliente) VALUES ('Rua das Flores', '10', '01001000', 'Apto 1', 1);
INSERT INTO endereco (logradouro, numero, cep, complemento, id_cliente) VALUES ('Av. Paulista', '200', '01310100', NULL, 2);
INSERT INTO endereco (logradouro, numero, cep, complemento, id_cliente) VALUES ('Rua Augusta', '305', '01305000', 'Casa', 3);
INSERT INTO endereco (logradouro, numero, cep, complemento, id_cliente) VALUES ('Rua Consolação', '50', '01301000', NULL, 4);
INSERT INTO endereco (logradouro, numero, cep, complemento, id_cliente) VALUES ('Rua Bela Cintra', '90', '01415000', 'Apto 5', 5);

-- Status de entrega
INSERT INTO entrega (estado) VALUES ('Pendente');    
INSERT INTO entrega (estado) VALUES ('Em trânsito'); 
INSERT INTO entrega (estado) VALUES ('Entregue');    
INSERT INTO entrega (estado) VALUES ('Cancelado');   

-- Status de pagamento
INSERT INTO pagamento (estado) VALUES ('Pendente');  
INSERT INTO pagamento (estado) VALUES ('Pago');     
INSERT INTO pagamento (estado) VALUES ('Cancelado'); 


INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (1, 1, 'Bolo de Chocolate', 'Bolo grande', 85.00, 3, 2, TRUE, FALSE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (1, 1, 'Brigadeiro Gourmet', '50 unidades', 120.00, 1, 1, TRUE, FALSE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (2, 2, 'Torta de Morango', 'Torta média', 95.00, 1, 1, TRUE, FALSE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (3, 3, 'Cupcake Red Velvet', '12 unidades', 60.00, 4, 3, FALSE, FALSE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (4, 4, 'Bolo de Cenoura', 'Bolo pequeno', 55.00, 1, 1, TRUE, TRUE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (5, 5, 'Mousse de Maracujá', '6 unidades', 45.00, 2, 2, TRUE, FALSE, NOW(), NOW(), NOW());

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (1, 1, 'Bolo de Baunilha', 'Bolo médio', 75.00, 3, 2, TRUE, FALSE, DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_SUB(NOW(), INTERVAL 10 DAY));

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (2, 2, 'Pão de Mel', '20 unidades', 80.00, 3, 2, TRUE, FALSE, DATE_SUB(NOW(), INTERVAL 12 DAY), DATE_SUB(NOW(), INTERVAL 12 DAY), DATE_SUB(NOW(), INTERVAL 12 DAY));

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (3, 3, 'Trufa de Limão', '30 unidades', 90.00, 4, 3, FALSE, FALSE, DATE_SUB(NOW(), INTERVAL 11 DAY), DATE_SUB(NOW(), INTERVAL 11 DAY), DATE_SUB(NOW(), INTERVAL 11 DAY));

INSERT INTO pedido (id_cliente, id_endereco, produto, descricao, valor, status_entrega, status_pagamento, is_ativo, is_reagendado, data_pedido, data_modificacao, data_criacao)
VALUES (4, 4, 'Cheesecake', 'Fatia grande', 35.00, 1, 1, TRUE, TRUE, DATE_SUB(NOW(), INTERVAL 9 DAY), DATE_SUB(NOW(), INTERVAL 9 DAY), DATE_SUB(NOW(), INTERVAL 9 DAY));


