DROP PROCEDURE IF EXISTS producto_mas_comprado;
CREATE PROCEDURE producto_mas_comprado(
  
)
BEGIN
     select p.desc_producto as "PRODUCTO", SUM(p.precio_producto) as "MONTO COMPRADO" from producto p, compras c 
	 where p.precio_producto > 3500 group by p.desc_producto,c._id_producto
    
END$$
DELIMITER ;







/*

3. MOSTRAR LOS PRODUCTOS MAS COMPRADOS MAYORES A 
   3500 SOLES DE COMPRA
   PRODUCTO | MONTO COMPRADO
