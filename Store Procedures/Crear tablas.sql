DELIMITER //
CREATE PROCEDURE CrearTablas()
BEGIN
    -- Crear tabla Padre
    CREATE TABLE IF NOT EXISTS TablaPadre (
        IDPadre INT PRIMARY KEY,
        NombrePadre VARCHAR(50)
    );

    -- Crear tabla Hijo
    CREATE TABLE IF NOT EXISTS TablaHijo (
        IDHijo INT PRIMARY KEY,
        NombreHijo VARCHAR(50),
        FechaNacimiento DATE,
        IDPadre INT,
        FOREIGN KEY (IDPadre) REFERENCES TablaPadre(IDPadre)
    );
END //
DELIMITER ;
Call CrearTablas()