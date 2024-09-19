USE [Estados];

SELECT 
    id_estado,
    COUNT(id_ciudad) AS CANTIDAD
FROM 
    Ciudades_USA
GROUP BY 
    id_estado
ORDER BY 
    CANTIDAD ASC;
