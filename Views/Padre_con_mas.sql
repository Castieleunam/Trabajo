CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `padre_con_mas` AS
    SELECT 
        `p`.`NombrePadre` AS `NombrePadre`,
        COUNT(`h`.`IDHijo`) AS `CantidadHijos`
    FROM
        (`tablapadre` `p`
        JOIN `tablahijo` `h` ON ((`p`.`IDPadre` = `h`.`IDPadre`)))
    GROUP BY `p`.`NombrePadre`
    HAVING (COUNT(`h`.`IDHijo`) = (SELECT 
            COUNT(`tablahijo`.`IDHijo`)
        FROM
            `tablahijo`
        GROUP BY `tablahijo`.`IDPadre`
        ORDER BY COUNT(`tablahijo`.`IDHijo`) DESC
        LIMIT 1))