# Analisis_Fintech_SQL_Funci-n_Ventana
# Análisis de Transacciones Fintech con SQL y Función de Ventana

Este es el quinto proyecto de mi portafolio profesional. En este repositorio incluyo uno de los conceptos en el análisis de bases de datos relacionales: Las Funciones de Ventana.

## Objetivo del Proyecto
El reto consistió en clasificar y generar un ranking (Top 1, Top 2, etc.) de las transacciones históricas de cada cliente dentro de una app Fintech, ordenándolas por su valor monetario. Todo esto sin utilizar GROUP BY, para poder conservar intacto el nivel de detalle de cada registro original.

## Herramientas
* **Lenguaje: SQL..
* **`RANK() OVER(...)`:** Función de ventana utilizada para asignar posiciones de clasificación.
* **`PARTITION BY`:** Comando utilizado dentro de la ventana para segmentar el cálculo individualmente por cada ID_Cliente.
* **`ORDER BY`:** Aplicado dentro del contexto de la partición para clasificar los montos de forma descendente.

## Lógica de Negocio y Resultados
A diferencia de un GROUP BY tradicional, la implementación de la cláusula OVER() permitió que el motor de base de datos abriera una partición en memoria para cada cliente. 

Como resultado, la consulta devuelve la tabla completa original, agregando una nueva columna "Top_Personal" donde se le asigna el valor correspondiente a la transferencia de mayor valor para ese cliente específico.

---
*Este proyecto demuestra capacidad para escribir código SQL, optimizando consultas analíticas para Business Intelligence y resolución de problemas complejos.*
