DELIMITER $$

	-- O produto é devolvido ao estoque após a devolução
	CREATE TRIGGER trg_venda_item_delete AFTER DELETE ON venda_item
	FOR EACH ROW
	BEGIN
		UPDATE produto SET estoque = estoque + OLD.quantidade
		WHERE id = OLD.id_produto;
	END$$

    -- O produto é subtraido do estoque após a compra
	CREATE TRIGGER trg_venda_item_insert AFTER INSERT ON venda_item
	FOR EACH ROW
	BEGIN
		UPDATE produto SET estoque = estoque - NEW.quantidade
		WHERE id = NEW.id_produto;
	END$$

DELIMITER $$