CREATE DATABASE doces_com_amor;

USE doces_com_amor;

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(30) NOT NULL,
    senha VARCHAR(30) NOT NULL
);

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    is_ativo BOOLEAN DEFAULT TRUE,
    telefone VARCHAR(11)
);

CREATE TABLE endereco (
    id INT AUTO_INCREMENT,
    logradouro VARCHAR(30) NOT NULL,
    numero VARCHAR(30) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    complemento VARCHAR(50),
    id_cliente INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE entrega(
	id INT AUTO_INCREMENT,
    estado VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE pagamento(
	id INT AUTO_INCREMENT,
    estado VARCHAR(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_endereco INT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    valor_total DECIMAL(10,2) NOT NULL,
	status_entrega INT NOT NULL,
    status_pagamento INT NOT NULL,
	is_ativo BOOLEAN DEFAULT TRUE NOT NULL,
	is_reagendado BOOLEAN DEFAULT FALSE NOT NULL,
    data_pedido DATETIME NOT NULL,
    data_modificacao DATETIME,
    data_criacao DATETIME NOT NULL,
    PRIMARY KEY (id, id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_endereco) REFERENCES endereco(id),
	FOREIGN KEY (status_entrega) REFERENCES entrega(id),
    FOREIGN KEY (status_pagamento) REFERENCES pagamento(id)
);

CREATE TABLE categoria(
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE item_pedido(
	id INT AUTO_INCREMENT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(7,2) NOT NULL,
    observacao VARCHAR(150),
    id_pedido INT NOT NULL,
    id_cliente INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id, id_pedido, id_cliente),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
	FOREIGN KEY (id_cliente) REFERENCES pedido(id_cliente),
	FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE historico_pedido (
	id INT AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_cliente INT NOT NULL,
	status_entrega INT NOT NULL,
    status_pagamento INT NOT NULL,
    data_criacao DATETIME NOT NULL,
	PRIMARY KEY (id, id_pedido, id_cliente),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
	FOREIGN KEY (id_cliente) REFERENCES pedido(id_cliente),
	FOREIGN KEY (status_entrega) REFERENCES entrega(id),
    FOREIGN KEY (status_pagamento) REFERENCES pagamento(id)
);
