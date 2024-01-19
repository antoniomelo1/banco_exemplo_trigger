create database CursoDeProgramacao;

use CursoDeProgramacao;

create table disciplinas (
	id_disciplina int auto_increment primary key,
    nome_disciplina varchar(50) not null,
    nome_professor varchar(50) not null
);


create table alunos (
	id_aluno int auto_increment primary key,
    nome_aluno varchar(50) not null,
    disciplinas_id int,
    constraint fk_disciplinas
    foreign key (disciplinas_id)
		references disciplinas (id_disciplina)
);

CREATE TABLE log_alunos_deletados (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno_deletado INT,
    nome_aluno_antigo VARCHAR(50),
    disciplina_associada VARCHAR(50),
    data_deletado TIMESTAMP
);

DELIMITER //
CREATE TRIGGER trig_aluno_deletado
AFTER DELETE ON alunos
FOR EACH ROW
BEGIN
    INSERT INTO log_alunos_deletados (id_aluno_deletado, nome_aluno_antigo, disciplina_associada, data_deletado)
    VALUES (OLD.id_aluno, OLD.nome_aluno, (SELECT nome_disciplina FROM disciplinas WHERE id_disciplina = OLD.disciplinas_id), NOW());
END;
//
DELIMITER ;