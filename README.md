### ¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? 
INNER retorna todos los registros coincidentes y omite los que no y con LEFT te permite ver que valores aparecen con null identificando los producto que no fueron vendidos

### ¿Qué se perdería si usaras INNER JOIN?
Se perderia los productos del catalogo que no fueron vendidos.


### ¿Por qué usaste RIGHT JOIN para la Consulta 2? 
para saber que producto no existe en la tabla productos y con el cual se realizo una venta

### ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
a la tabla izquierda esta producto para idenficar el producto faltante
a la tabla derecha esta venta para saber con que id_producto se hizo una venta


### ¿Qué representan los valores NULL en cada resultado?
Pueden represantar la usencia de valor pero en los resultados que no existe ninguna coincidencia

### Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
venta_id Null Significa que esos productos no fueron vendidos
producto_id Significa que ese producto no existe.

### ¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
para hacer una auditoria visual de forma general para saber que productos no existen y que productos no fueron vendidos en este caso.
