CREATE TABLE Formacion_Productiva (
    [Id Produccion] INT PRIMARY KEY,
	[Id Formacion] nvarchar(255) NOT NULL FOREIGN KEY [Formacion](Id Formacion),
    [Id Area de Concesion] nvarchar(255) NOT NULL,
    [Id Yacimiento]nvarchar(255) NOT NULL,
    [Id_Cuenca] INT NOT NULL,
    [Id_Provincia] INT NOT NULL,
    [Id_Tipo Perforacion] INT NOT NULL
);
