DROP PROCEDURE IF EXISTS monto_total;
CREATE PROCEDURE monto_total(
  
)
BEGIN
    --
	SELECT DISTINCT cl.nom_cliente, SUM(p.precio_producto)  FROM compras c, cliente cl, producto p 
	WHERE c._id_producto = p.id_producto AND c._id_cliente = cl.id_cliente group by cl.nom_cliente, p.precio_producto 
	order by cl.nom_cliente asc
    
END$$
DELIMITER ;


/*

FUNCION QUE MUESTRE EL MONTO TOTAL COMPRADO POR
   CADA CLIENTE ORDENANDOLO DE MAYOR A MENOR
   CLIENTE | MONTO COMPRADO
