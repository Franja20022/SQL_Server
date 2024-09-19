INSERT INTO [dbo].[Produccion_Formacion] 
      ([Id_Produccion]
      ,[Id_Formacion]
      ,[Id_Concesion]
      ,[Id_Yacimiento]
      ,[Id_Cuenca]
      ,[Id_Provincia]
      ,[Id_Tipo_Perforacion])
SELECT 
       p.[Id Produccion]         -- Obtenido de la tabla de producción
      ,p.[Id Formacion]         -- Obtenido de la tabla de formaciones
      ,p.[Id Area de Concesion]         -- Obtenido de la tabla de concesiones
      ,p.[Id Yacimiento]        -- Obtenido de la tabla de yacimientos
      ,cu.[Id_Cuenca]           -- Obtenido de la tabla de cuencas
      ,pr.[Id_Provincia]        -- Obtenido de la tabla de provincias
      ,tp.[Id_Tipo_Perforacion] -- Obtenido de la tabla de tipo de perforación
FROM 
      [dbo].[Datos_Completos] p
JOIN 
      [dbo].[Cuenca] cu ON p.[Cuenca] = cu.[Cuenca]
JOIN 
      [dbo].[Provincia] pr ON p.[Provincia] = pr.[Provincia]
JOIN 
      [dbo].[Perforacion] tp ON p.[Tipo Perforacion] = tp.[Tipo_Perforacion];
