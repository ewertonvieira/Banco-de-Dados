CREATE TABLE Livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    quantidade INT
);

CREATE TABLE Membro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE Emprestimo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    id_membro INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES Livro(id),
    FOREIGN KEY (id_membro) REFERENCES Membro(id)
);
