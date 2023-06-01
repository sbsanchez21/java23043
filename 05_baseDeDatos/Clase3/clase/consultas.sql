SELECT * FROM `ventas` 

SELECT producto, cant, precio FROM `ventas` 

SELECT * FROM `ventas` WHERE producto like '%se'


SELECT * FROM ventas WHERE precio<=100000 ORDER BY precio DESC


UPDATE ventas SET fecha="2016-05-05" WHERE id=5 

ALTER TABLE ventas
ADD FOREIGN KEY (idCliente) REFERENCES clientes(id)
