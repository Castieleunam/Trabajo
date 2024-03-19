CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `promedio_edad` AS
    SELECT 
        `p`.`NombrePadre` AS `NombrePadre`,
        AVG(CALCULAREDAD(`h`.`FechaNacimiento`)) AS `EdadPromedioHijos`
    FROM
        (`tablapadre` `p`
        JOIN `tablahijo` `h` ON ((`p`.`IDPadre` = `h`.`IDPadre`)))
    GROUP BY `p`.`NombrePadre`
    ORDER BY `EdadPromedioHijos` DESC