-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Jorge Palacios
-- Fecha: 19/09/2026
-- ══════════════════════════════════════════

Use MiniStore;

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

-- [Tu consulta aquí]
SELECT * 
FROM productos AS p
LEFT JOIN ventas AS v
ON p.producto_id = v.producto_id
WHERE v.venta_id IS NULL;


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

-- [Tu consulta aquí]
SELECT * 
FROM productos AS p 
RIGHT JOIN ventas AS v
ON  p.producto_id = v.producto_id
WHERE p.producto_id IS NULL;


-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

-- [Tu consulta aquí]

SELECT * FROM productos AS p
FULL OUTER JOIN ventas AS v
ON p.producto_id = v.producto_id;


SELECT 
  *
FROM productos p
LEFT JOIN ventas v 
    ON p.producto_id = v.producto_id

UNION

SELECT 
   *
FROM productos p
RIGHT JOIN ventas v 
    ON p.producto_id = v.producto_id;
