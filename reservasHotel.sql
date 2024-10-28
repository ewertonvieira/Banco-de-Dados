CREATE TABLE Quarto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(10) NOT NULL,
    tipo VARCHAR(50),
    preco DECIMAL(10, 2),
    status VARCHAR(20) NOT NULL
);

CREATE TABLE Cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Reserva (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_quarto INT,
    id_cliente INT,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);
