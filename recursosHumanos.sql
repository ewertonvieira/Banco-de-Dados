CREATE TABLE Funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_admissao DATE NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id)
);

CREATE TABLE Departamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Avaliacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    data_avaliacao DATE NOT NULL,
    nota INT,
    comentarios TEXT,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id)
);
