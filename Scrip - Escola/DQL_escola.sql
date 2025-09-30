USE db_escola_T;

--LISTAR OS 3 PRIMERIOS ALUNOS (em ordem decrescente)
SELECT TOP 3 matricula FROM tb_aluno;

--LISTA AS MATRICULAS DOS ALUNOS EM ORDEM CRESCENTE
SELECT matricula 
FROM tb_aluno
ORDER BY id ASC;

--LISTAR OS ID DOS 3 PRIMEIRO ALUNOS QUE FORAM RECEM CADASTRADOS
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--LISTA TODOS OS ALUNOS QUE TEM O NOME HENRIQUE
SELECT * FROM tb_aluno
WHERE nome = 'Henrique'

--LISTA NOME DA ESCOLA TORLONI
SELECT nome
FROM tb_escola;

--Mostre as turmas que tem o nome SEDUC
SELECT nome_turma
FROM tb_turma;

------EXIBA SOMENTE 2 ALINOS EM ORDEM D MAIS RECENTE PARA MENOS RECENTE
SELECT TOP 2 * FROM tb_aluno
ORDER BY id DESC;

---MOSTRE QUANTOS ALUNOS EXISTEM NA BASE
SELECT COUNT(matricula) AS qtd_Alunos FROM tb_aluno;

--MOSTRE OS ALUNOS MAIS NOVOS
SELECT MIN(data_nascimento)AS idade_mais_novo FROM tb_aluno;

----MOSTRE OS ALUNOS MAIS VELHOS
SELECT MAX(data_nascimento)AS idade_mais_velha FROM tb_aluno;

--EXIBA A IDADE MAIS VELHA E A IDADE MAIS NOVA EM UMA ÚNICA CONSULTA
SELECT MAX(data_nascimento)AS idade_mais_velha, MAX (data_nascimento) AS idade_mais_novo
FROM tb_aluno;

SELECT TOP 1  nome, data_nascimento --SELECIONAMOS O PRIMEIRO REGISTRO DA TABELA 
FROM tb_aluno
ORDER BY data_nascimento; --ORDENAMOS ELA POR DATA DE NASCIMENTO PARA QUE A IDADE MAIS VELHA SEJA A PRIMEIRA A APARECER

--MEDIA DE NOTA QUE VALE NAS PROVAS
SELECT AVG(nota) AS media_nota  FROM tb_prova;

--EXIBA A SOMA DOS ID'S DE TURMA
SELECT MAX(data_nascimento)AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome, data_nascimento
ORDER BY idade_mais_novo DESC;

--EXIBIR QUANTAS TURMAS TEM NO PERIODO DA TARDE
SELECT COUNT(periodo)
FROM tb_turma 
WHERE periodo = 'Tarde';