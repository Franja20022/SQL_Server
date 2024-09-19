-- Paso 1: Crear la nueva tabla Yacimiento con Id_Yacimiento como clave primaria
CREATE TABLE Yacimiento (
    Id_Yacimiento NVARCHAR(50) PRIMARY KEY,
    Nombre_Yacimiento NVARCHAR(255)
);

-- Paso 2: Insertar los datos en la nueva tabla, ordenados por Nombre_Yacimiento
INSERT INTO Yacimiento (Id_Yacimiento, Nombre_Yacimiento)
SELECT DISTINCT
    [Id Yacimiento] AS Id_Yacimiento, 
    [Nombre del Yacimiento] AS Nombre_Yacimiento
FROM 
    [dbo].[Datos_Completos]
ORDER BY 
    [Nombre del Yacimiento];
