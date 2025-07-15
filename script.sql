CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100),
    matricula VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    area_atuacao VARCHAR(100)
);

CREATE TABLE Curso (
    id_curso INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Disciplina (
    id_disciplina INT PRIMARY KEY,
    nome VARCHAR(100),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Turma (
    id_turma INT PRIMARY KEY,
    id_disciplina INT,
    id_professor INT,
    semestre VARCHAR(10),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE Nota (
    id_nota INT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);
