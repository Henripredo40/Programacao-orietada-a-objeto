
CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    data_nasc DATE
);

CREATE TABLE professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    data_nasc DATE
);

CREATE TABLE materia (
    id_materia INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE aluno_materia (
    id INT PRIMARY KEY,
    aluno_id INT REFERENCES aluno(id_aluno),
    materia_id INT REFERENCES materia(id_materia)
);

CREATE TABLE atividade (
    id_atividade INT PRIMARY KEY,
    materia_id INT REFERENCES materia(id_materia),
    titulo VARCHAR(200),
    tipo VARCHAR(50),
    conteudo TEXT,
    prazo DATE
);

CREATE TABLE correcao (
    id_correcao INT PRIMARY KEY,
    atividade_id INT REFERENCES atividade(id_atividade),
    aluno_id INT REFERENCES aluno(id_aluno),
    nota DECIMAL(5,2),
    feedback TEXT,
    data_correta DATE
);
