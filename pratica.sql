-- Active: 1695679852904@@127.0.0.1@3306

-- Criando tabela:

CREATE TABLE
    books (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        author TEXT NOT NULL,
        page_count INTEGER,
        price REAL NOT NULL
    );

-- Visualizando tabela:

SELECT * FROM books;

-- SELECT name, author FROM books;

-- Apagando tabela

DROP TABLE books;

INSERT INTO
    books (
        id,
        name,
        author,
        page_count,
        price
    )
VALUES (
        'b001',
        'Verity',
        'Colleen Hoover',
        320,
        26.90
    ), (
        'b002',
        'Fortaleza Digital',
        'Dan Brown',
        540,
        36.90
    );

-- Se for inserir todas as infos não precisa dos parênteses:

INSERT INTO books
VALUES (
        'b003',
        'É assim que acaba',
        'Colleen Hoover',
        420,
        29.90
    );

INSERT INTO
    books (id, name, author, price)
VALUES (
        'b004',
        'É assim que começa',
        'Colleen Hoover',
        29.90
    );

-- Editando tabela

UPDATE books SET price = 30 WHERE id = 'b001';

UPDATE books SET page_count = 360 WHERE id = 'b004';

-- Deletando uma linha

DELETE FROM books WHERE id = 'b001';

-- FIXAÇÃO --

-- taks --

-- CREATE -> cria uma tabela chamada tasks, com as infos id, curso, description

CREATE TABLE
    tasks (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        curso TEXT NOT NULL,
        description TEXT NOT NULL
    );

--READ -> lê toda a tabela tasks

SELECT * FROM tasks;

-- DELETE -> deleta a tabela tasks

DROP TABLE tasks;

-- CREATE -> cria informações na tabela tasks

INSERT INTO
    tasks (id, curso, description)
VALUES ('t001', 'React', 'Props'), ('t002', 'SQL', 'CRUD'), ('t003', 'JS', 'Variáveis');

-- UPDATE -> atualiza informações da linha com is t003 da tabela tasks

UPDATE tasks SET description = 'Arrays' WHERE id = 't003';

-- DELETE -> deleta a linha com id t003 da tabela tasks

DELETE FROM tasks WHERE id = 't003';