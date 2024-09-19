DROP TABLE [dbo].[Producto];

-- Crear la tabla PRODUCTO
CREATE TABLE Producto (
    [Id_Produccion] INT PRIMARY KEY NOT NULL,  -- Clave primaria
    [Id_Formacion] NVARCHAR(100) NOT NULL,     -- Clave for�nea hacia la tabla que corresponde
    [Id_Empresa] NVARCHAR(100) NOT NULL,       -- Clave for�nea hacia la tabla que corresponde
    [Sum_Produccion_Petroleo] INT NOT NULL, -- Suma de producci�n de petr�leo
    [Sum_Produccion_Gas] INT NOT NULL,      -- Suma de producci�n de gas
    [Sum_Produccion_Agua] INT NOT NULL,     -- Suma de producci�n de agua
    [Sum_Inyeccion_Agua] INT NOT NULL,      -- Suma de inyecci�n de agua
    [Sum_Inyeccion_Gas] INT NOT NULL,       -- Suma de inyecci�n de gas
    [Fecha_Primera_Produccion] DATETIME NOT NULL,   -- Fecha de producci�n

    -- Definici�n de claves for�neas
    CONSTRAINT FK_Formacion FOREIGN KEY ([Id_Formacion]) REFERENCES Formacion([Id_Formacion]),
    CONSTRAINT FK_Empresa FOREIGN KEY ([Id_Empresa]) REFERENCES Empresa([Id_Empresa])
);
