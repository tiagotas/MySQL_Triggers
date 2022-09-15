DELIMITER //
CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
  INSERT INTO Dados_Livro (NomeLivro, ISBN13, PrecoLivro) VALUES ('História do Brasil', '9789865321465', 78.60);
  INSERT INTO Dados_Livro (NomeLivro, ISBN13, PrecoLivro) VALUES ('Biologia Marinha', '9784233876972', 177.50);
  INSERT INTO Dados_Livro (NomeLivro, ISBN13, PrecoLivro) VALUES ('Química Experimental', '9789563210970', 165.32);
  INSERT INTO Dados_Livro (NomeLivro, ISBN13, PrecoLivro) VALUES ('Artes Plásticas', '9784523415974', 98,00);#ERRO!
  IF erro_sql = FALSE THEN
    COMMIT;
    SELECT 'Transação efetivada com sucesso.' AS Resultado;
  ELSE
    ROLLBACK;
    SELECT 'Erro na transação' AS Resultado;
  END IF;
END//
DELIMITER ;