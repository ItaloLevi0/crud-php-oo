CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    status TINYINT NOT NULL,
    genero VARCHAR(20) NOT NULL,
    dataNascimento DATETIME NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL
);

CREATE TABLE tb_professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    endereco VARCHAR(45) NOT NULL,
    formacao VARCHAR(45) NOT NULL,
    status TINYINT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL
);

INSERT INTO tb_alunos (nome, matricula, email, status, genero, dataNascimento, cpf)
VALUES 
('Italo', '1234123', 'italo@email.com', true, 'Masculino', '2004-06-03', '12345678912'),
('Levi', '0987890', 'levi@email.com', true, 'Masculino', '2004-06-04', '12345654321'),
('Genilda', '4567456', 'genilda@email.com', true, 'Feminino', '1998-02-01', '31321789121');

SELECT * FROM tb_alunos;


INSERT INTO tb_professores (endereco, formacao, status, nome, cpf)
VALUES 
('Rua Idelfonso Albano', 'HTML, CSS, JS, react', true, 'Allan', '12185670912'),
('Rua Barca Velha', 'SABE TUDO', true, 'Ale', '12785673112'),
('Rua dos prazeres', 'Formado nas ruas', true, 'Gleidson', '12785773212');