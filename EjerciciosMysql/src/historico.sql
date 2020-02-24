DROP PROCEDURE IF EXISTS historico_compra;
CREATE PROCEDURE historico_compra(
)
BEGIN
    --
	SELECT DISTINCT cl.nom_cliente, p.desc_producto, p.precio_producto  FROM compras c, cliente cl, producto p 
	WHERE c._id_producto = p.id_producto AND c._id_cliente = cl.id_cliente
	  
END$$
DELIMITER ;


/*
1. CREAR UNA FUNCION QUE MUESTRE EL HISTORICO DE
   COMPRA DE CADA CLIENTE
   CLIENTE | PRODUCTO | MONTO COMPRADO