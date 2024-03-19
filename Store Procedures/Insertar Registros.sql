DELIMITER //

CREATE PROCEDURE InsertarRegistros()
BEGIN
    INSERT INTO TablaPadre (IDPadre, NombrePadre) VALUES 
    (1, 'Juan Pérez'),
    (2, 'María González'),
    (3, 'Luis Martínez'),
    (4, 'Ana Rodríguez'),
    (5, 'Carlos García'),
    (6, 'Sofía Díaz'),
    (7, 'Pedro Sánchez'),
    (8, 'Laura López'),
    (9, 'Miguel Torres'),
    (10, 'Elena Ruiz');

    INSERT INTO TablaHijo (IDHijo, NombreHijo, IDPadre, FechaNacimiento) VALUES 
    (1, 'Pedro Pérez', 1, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (2, 'Sara Pérez', 1, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (3, 'Lucía González', 2, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (4, 'David González', 2, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (5, 'Alejandro Martínez', 3, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (6, 'Cristina Martínez', 3, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (7, 'Javier Rodríguez', 4, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (8, 'Luis Rodríguez', 4, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (9, 'Carmen García', 5, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR)),
    (10, 'Martín García', 5, DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 20) YEAR));
    
END //

DELIMITER ;

Call InsertarRegistros()