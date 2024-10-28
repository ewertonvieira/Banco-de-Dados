CREATE TABLE Curso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    instrutor_id INT,
    FOREIGN KEY (instrutor_id) REFERENCES Instrutor(id)
);

CREATE TABLE Aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE Instrutor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255)
);

CREATE TABLE Inscricao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_curso INT,
    id_aluno INT,
    data_inscricao DATE NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Curso(id),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id)
);

CREATE TABLE Feedback (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_curso INT,
    id_aluno INT,
    comentario TEXT,
    nota INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id)
);
