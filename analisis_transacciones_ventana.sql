
-- 1. Se crea la estructura de la tabla

CREATE TABLE tabla_transferencias(
  ID_Transaccion INT,
  ID_Cliente VARCHAR(50),
  Fecha_Transaccion DATE,
  Monto_USD DECIMAL(10,2),
  Estado_Transaccion VARCHAR(50),
  Tipo_Operacion VARCHAR(50)
 );
  
-- 2. Se insertan datos falseados
  
  INSERT INTO tabla_transferencias (ID_Transaccion, ID_Cliente, Fecha_Transaccion, Monto_USD, Estado_Transaccion, Tipo_Operacion)
  VALUES
  (1, "Cliente_101", "2026-06-01", 150.00, "Completada", "Transferencia"),
  (2, "Cliente_205", "2026-06-02", 8500.00, "Completada", "Pago Internacional"),
  (3, "Cliente_101", "2026-06-02", 20.00, "Fallida", "Recarga"),
  (4, "Cliente_308", "2026-06-03", 120.00, "Completada", "Transferencia"),
  (5, "Cliente_410", "2026-06-03", 4500.00, "Completada", "Inversión"),
  (6, "Cliente_502", "2026-06-04", 50.00, "Cancelada", "Transferencia"),
  (7, "Cliente_205", "2026-06-05", 9200.00, "Completada", "Pago Internacional"),
  (8, "Cliente_615", "2026-06-05", 200.00, "Completada", "Transferencia");
  
-- 3. Se crea la función de Ventana.
	
    SELECT
    	ID_Cliente,
        Fecha_Transaccion,
        Monto_USD,
        RANK() OVER(PARTITION BY ID_Cliente ORDER BY Monto_USD 			DESC) AS Top_Personal
    FROM tabla_transferencias;
