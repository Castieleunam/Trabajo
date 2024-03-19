CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cantidad_de_padres` AS
    SELECT 
        COUNT(0) AS `CantidadPadresConMasDeTresHijos`
    FROM
        (SELECT 
            `p`.`NombrePadre` AS `NombrePadre`,
                COUNT(0) AS `CantidadHijos`
        FROM
            (`tablapadre` `p`
        JOIN `tablahijo` `h` ON ((`p`.`IDPadre` = `h`.`IDPadre`)))
        GROUP BY `p`.`IDPadre`
        HAVING (COUNT(0) >= 3)) `padresconmasdetreshijos`