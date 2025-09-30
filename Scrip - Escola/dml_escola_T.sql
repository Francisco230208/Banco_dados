--USAR UM BANCO JA CRIADO 
USE db_escola_T;

--INSERIR UM REGISTRONA TABELA ESCOLA
INSERT INTO tb_escola(nome, endereco)
VALUES('Torloni', 'Estrada das Lágrimas, 579 - São José');
SELECT * FROM tb_escola;

--TABELA TURMA
	INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
	VALUES
	(2, 'Tarde', 16, 'SEDUC'),
	(2, 'Manhã', 16, 'SEDUC'),
	(2, 'Noite', 16, 'SEDUC');

		

	--INSERIR REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova)
VALUES
('Ana Claudia', 'Educacao Fisica','13:15:00', 0 , '2025-09-25'),
('Rogeria', 'Matematica','14:20:00', 10 , '2025-09-26');

SELECT * FROM tb_prova;

----TABELA ALUNO
INSERT INTO tb_aluno (nome, cpf, endereco, matricula, data_nascimento, id_escola)
VALUES
('Francisco', '52114120015', 'Rua luigi abondaza', '000111222', '2000-05-02', 1);

INSERT INTO tb_aluno (nome, cpf, endereco, matricula, data_nascimento, id_escola)
VALUES
('Hugo',     '56714120075', 'Rua marcos teixera', '000888999',  '2009-07-06', 1),
('Murilo',   '90987622245', 'Aladim taco',        '1234567890', '1990-09-01', 1),
('Henrique', '44799178633', 'Alamedas rui',       '8876654432', '1995-03-10', 1),
('Carlos',   '99188733215', 'Joao IV',            '1234456678', '2020-05-16', 1);


SELECT * FROM tb_aluno;

--APAGAR REGISTRO PELO SEU IDENTIFICADOR 
DELETE FROM  tb_aluno
WHERE id = 5;

--ATUALIZAR UM REGISTRO PELO SEU INDETIFICADOR
UPDATE tb_aluno
SET nome = 'Henrique', cpf = '44799178633'
WHERE id = 4;

SELECT * FROM tb_aluno;