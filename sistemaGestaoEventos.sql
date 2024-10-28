CREATE TABLE Evento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    local VARCHAR(255)
);

CREATE TABLE Participante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE Fornecedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    servico VARCHAR(255)
);

CREATE TABLE Participacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_evento INT,
    id_participante INT,
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (id_participante) REFERENCES Participante(id)
);

CREATE TABLE Fornecimento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_evento INT,
    id_fornecedor INT,
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id)
);
