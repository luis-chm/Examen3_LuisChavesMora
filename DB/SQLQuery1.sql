

CREATE DATABASE Examen3_Luis_Chaves_Mora

Use Examen3_Luis_Chaves_Mora

CREATE TABLE UsuariosData 
(
	IDEncuesta INT PRIMARY KEY IDENTITY,
	NombreCompleto Varchar(50) not null,
	Edad int not null,
	Correo varchar(50) not null,
	IDPartido int not null
	CONSTRAINT fk_idpartido FOREIGN KEY (IDPartido) REFERENCES PartidoPolitico(IDPartido)
)

CREATE TABLE PartidoPolitico
(
    IDPartido INT PRIMARY KEY IDENTITY,
    NombrePartido VARCHAR(50) NOT NULL
)

INSERT INTO PartidoPolitico VALUES ('PLN', 'PUSC', 'PAC', 'FA', 'PML')
SELECT * FROM PartidoPolitico 



CREATE PROCEDURE IngresarEncuesta
    @NombreCompleto varchar(50),
    @Edad INT,
    @Correo varchar(50),
    @IDPartido INT
AS
BEGIN
    INSERT INTO UsuariosData (NombreCompleto, Edad, Correo, IDPartido)
    VALUES (@NombreCompleto, @Edad, @Correo, @IDPartido)
END

-- Procedimiento almacenado para obtener un reporte de todas las encuestas
CREATE PROCEDURE ObtenerReporteEncuestas
AS
BEGIN
    SELECT
		U.IDEncuesta,
		U.NombreCompleto,
        U.Edad,
        U.Correo,
        P.NombrePartido AS [Partido Politico]
    FROM UsuariosData U
    INNER JOIN PartidoPolitico P ON U.IDPartido = P.IDPartido
END


    INSERT INTO UsuariosData (NombreCompleto, Edad, Correo, IDPartido)
    VALUES ('Luis', 29, 'Luis@test.com', 1)

	select * from UsuariosData