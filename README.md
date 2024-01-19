README - Banco de Dados: Log de Alunos Deletados.
Este repositório contém um exemplo simples de código SQL que ilustra a criação de uma tabela chamada log_alunos_deletados e a implementação de uma trigger associada na gestão de um banco de dados. O objetivo principal é demonstrar como registrar informações sobre alunos deletados da tabela principal (alunos) em uma tabela de log (log_alunos_deletados).

Estrutura do Banco de Dados

Tabelas:
1.	alunos:
id_aluno (Chave Primária): Identificador único do aluno.
nome_aluno: Nome do aluno.
disciplinas_id (Chave Estrangeira): Referência à disciplina associada.

3.	log_alunos_deletados:
id_log (Chave Primária): Identificador único do log.
id_aluno_deletado: Identificador do aluno deletado.
nome_aluno_antigo: Nome do aluno antes da exclusão.
disciplina_associada: Disciplina associada ao aluno deletado.
data_deletado: Data e hora da exclusão.

Trigger de Exclusão
Foi implementada uma trigger chamada trig_aluno_deletado na tabela alunos para automatizar o processo de registro de alunos deletados. Essa trigger é acionada automaticamente após a exclusão de um aluno, registrando as informações relevantes na tabela log_alunos_deletados.
Funcionamento da Trigger:
1.	Identificação do Aluno Deletado:
Ao excluir um aluno da tabela alunos, a trigger é acionada automaticamente.
2.	Registro no Log:
A trigger insere um novo registro na tabela log_alunos_deletados com as seguintes informações:
id_aluno_deletado: Identificador do aluno deletado.
nome_aluno_antigo: Nome do aluno antes da exclusão.
disciplina_associada: Disciplina associada ao aluno deletado.
data_deletado: Data e hora da exclusão.

Utilização
1.	Execução do Script SQL:
•	Execute o script SQL em um ambiente compatível com o MySQL ou outro sistema de gerenciamento de banco de dados.
2.	Exclusão de Alunos:
•	Utilize a instrução DELETE na tabela alunos para excluir alunos.
•	Exemplo: DELETE FROM alunos WHERE id_aluno = [ID_DO_ALUNO];
3.	Consulta de Logs:
•	Consulte a tabela log_alunos_deletados para visualizar os registros de alunos deletados.
Observações:
Este projeto é um exemplo educativo e pode ser adaptado para atender a diferentes requisitos específicos de banco de dados. Sinta-se à vontade para explorar e modificar conforme necessário.
