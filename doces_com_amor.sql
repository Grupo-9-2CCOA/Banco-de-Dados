CREATE DATABASE doces_com_amor;

USE doces_com_amor;

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    username VARCHAR(30) NOT NULL,
    senha VARCHAR(30) NOT NULL
);

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    is_ativo BOOLEAN NOT NULL DEFAULT TRUE,
    telefone VARCHAR(11)
);

CREATE TABLE endereco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(30) NOT NULL,
    numero VARCHAR(30) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    complemento VARCHAR(50),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE entrega(
	id INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(20) NOT NULL
);

CREATE TABLE pagamento(
	id INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(20) NOT NULL
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_endereco INT NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    detalhes VARCHAR(200),
    valor_total DECIMAL(10,2) NOT NULL,
	status_entrega INT NOT NULL,
    status_pagamento INT NOT NULL,
	is_ativo BOOLEAN NOT NULL DEFAULT TRUE,
	is_reagendado BOOLEAN NOT NULL DEFAULT FALSE,
    data_pedido DATETIME NOT NULL,
    data_modificacao DATETIME,
    data_criacao DATETIME NOT NULL,
    PRIMARY KEY (id, id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_endereco) REFERENCES endereco(id),
	FOREIGN KEY (status_entrega) REFERENCES entrega(id),
    FOREIGN KEY (status_pagamento) REFERENCES pagamento(id)
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
