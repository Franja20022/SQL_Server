DROP TABLE [dbo].[Producto];

-- Crear la tabla PRODUCTO
CREATE TABLE Producto (
    [Id_Produccion] INT PRIMARY KEY NOT NULL,  -- Clave primaria
    [Id_Formacion] NVARCHAR(100) NOT NULL,     -- Clave foránea hacia la tabla que corresponde
    [Id_Empresa] NVARCHAR(100) NOT NULL,       -- Clave foránea hacia la tabla que corresponde
    [Sum_Produccion_Petroleo] INT NOT NULL, -- Suma de producción de petróleo
    [Sum_Produccion_Gas] INT NOT NULL,      -- Suma de producción de gas
    [Sum_Produccion_Agua] INT NOT NULL,     -- Suma de producción de agua
    [Sum_Inyeccion_Agua] INT NOT NULL,      -- Suma de inyección de agua
    [Sum_Inyeccion_Gas] INT NOT NULL,       -- Suma de inyección de gas
    [Fecha_Primera_Produccion] DATETIME NOT NULL,   -- Fecha de producción

    -- Definición de claves foráneas
    CONSTRAINT FK_Formacion FOREIGN KEY ([Id_Formacion]) REFERENCES Formacion([Id_Formacion]),
    CONSTRAINT FK_Empresa FOREIGN KEY ([Id_Empresa]) REFERENCES Empresa([Id_Empresa])
);
