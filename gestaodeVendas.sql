CREATE TABLE Produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT
);

CREATE TABLE Cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE Venda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);

CREATE TABLE ItemVenda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT,
    id_produto INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Venda(id),
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);
