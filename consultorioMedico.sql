CREATE TABLE Paciente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE Medico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255)
);

CREATE TABLE Consulta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_medico INT,
    data_consulta DATETIME NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
    FOREIGN KEY (id_medico) REFERENCES Medico(id)
);
