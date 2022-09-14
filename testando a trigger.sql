/*INSERT INTO produto (descricao, preco, estoque) VALUES ("Boné", 30.0, 4);
INSERT INTO produto (descricao, preco, estoque) VALUES ("Camiseta", 45.0, 10);
INSERT INTO produto (descricao, preco, estoque) VALUES ("Moldeton", 99.9, 6);
INSERT INTO produto (descricao, preco, estoque) VALUES ("Bermuda", 38.5, 4);*/

/* Testando a Trigger de Insert */
INSERT INTO venda (cliente) VALUES ("Juninho");

INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) 
VALUES (last_insert_id(), 1, 30.0, 1, quantidade * preco_unitario);