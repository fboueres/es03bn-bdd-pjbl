CREATE USER 'fernando.boueres'@'%' IDENTIFIED BY 'Overlying6-Powdering8-Twice5-Dyslexia0-Handgrip6';
CREATE USER 'francisco.passos'@'%' IDENTIFIED BY 'Oops2-Sequence6-Cardstock6-Handcuff1-Suitcase8';
CREATE USER 'luis.costa'@'%' IDENTIFIED BY 'Eject6-Stilt2-Poem2-Boss4-Payphone3';
CREATE USER 'kaua.aragao'@'%' IDENTIFIED BY 'Pouring8-Expel5-Startle6-Refresh6-Ascension8';

GRANT ALL PRIVILEGES ON *.* TO 'fernando.boueres'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'francisco.passos'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'luis.costa'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'kaua.aragao'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE DATABASE es03bn_bdd_pjbl;

USE es03bn_bdd_pjbl;

CREATE TABLE estoques (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    endereco VARCHAR(255),
    criado_em DATETIME,
    atualizado_em DATETIME
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    criado_em DATETIME,
    atualizado_em DATETIME
);

CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(255),
    nome_fantasia VARCHAR(255),
    razao_social VARCHAR(255),
    inscricao_estadual VARCHAR(255),
    endereco VARCHAR(255),
    criado_em DATETIME,
    atualizado_em DATETIME
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fornecedor_id INT,
    sku VARCHAR(255),
    marca VARCHAR(255),
    nome VARCHAR(255),
    descricao VARCHAR(255),
    preco_unitario FLOAT,
    unidade_medida FLOAT,
    data_validade DATETIME,
    criado_em DATETIME,
    atualizado_em DATETIME,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id)
);

CREATE TABLE movimentacao_estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estoque_id INT,
    usuario_id INT,
    tipo_movimentacao VARCHAR(255),
    status VARCHAR(255),
    criado_em DATETIME,
    FOREIGN KEY (estoque_id) REFERENCES estoques(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE item_movimentacao_estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movimentacao_estoque_id INT,
    produto_id INT,
    quantidade FLOAT,
    FOREIGN KEY (movimentacao_estoque_id) REFERENCES movimentacao_estoque(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

CREATE TABLE carregamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    status VARCHAR(255),
    data_estimada_consumacao DATE,
    data_real_consumacao DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE carregamento_movimentacao_estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carregamento_id INT,
    movimentacao_estoque_id INT,
    FOREIGN KEY (carregamento_id) REFERENCES carregamentos(id),
    FOREIGN KEY (movimentacao_estoque_id) REFERENCES movimentacao_estoque(id)
);

