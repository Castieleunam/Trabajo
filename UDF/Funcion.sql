CREATE FUNCTION CalcularEdad(fecha_nacimiento DATE)
RETURNS INT
DETERMINISTIC
RETURN YEAR(CURDATE()) - YEAR(fecha_nacimiento) - 
    IF(DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(fecha_nacimiento, '%m%d'), 1, 0);


