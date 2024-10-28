CREATE TABLE Aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(255)
);

CREATE TABLE Professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    disciplina VARCHAR(255)
);

CREATE TABLE Turma (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ano INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id)
);

CREATE TABLE Matricula (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_turma INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id),
    FOREIGN KEY (id_turma) REFERENCES Turma(id)
);
