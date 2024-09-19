USE [O&G_N0_Convencional];

INSERT INTO [dbo].[Producto] 
      ([Id_Produccion]
      ,[Id_Formacion]
      ,[Id_Empresa]
      ,[Sum_Produccion_Petroleo]
      ,[Sum_Produccion_Gas]
      ,[Sum_Produccion_Agua]
      ,[Sum_Inyeccion_Agua]
      ,[Sum_Inyeccion_Gas]
      ,[Fecha_Primera_Produccion])
SELECT 
      [Id Produccion]
      ,[Id Formacion]
      ,[Id Empresa]
      ,[Sum prod Pet (m³)]
      ,[Sum Prod_Gas (miles m³)]
      ,[Sum Prod Agua (m³)]
      ,[Suma Iny Agua (m³)]
      ,[Sum Iny Gas (Miles m³)]
      ,[Fecha Primera Produccion]
FROM [dbo].[Datos_Completos];
