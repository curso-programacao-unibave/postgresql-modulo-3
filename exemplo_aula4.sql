CREATE TABLE
    curso (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
    );

CREATE TABLE
    aluno (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
    );

INSERT INTO aluno (nome) VALUES ('Diogo');

INSERT INTO aluno (nome) VALUES ('Vinícius');

INSERT INTO curso (nome) VALUES ('HTML');

INSERT INTO curso (nome) VALUES ('Javascript');

CREATE TABLE
    aluno_curso (
        aluno_id INTEGER,
        curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),
        FOREIGN KEY (aluno_id) REFERENCES aluno (id),
        FOREIGN KEY (curso_id) REFERENCES curso (id)
    );

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);

SELECT *
FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id;

SELECT
    aluno.nome as aluno,
    curso.nome as curso
FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    LEFT JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno FULL
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id FULL
    JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    CROSS JOIN curso;

SELECT
    aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    CROSS JOIN curso;