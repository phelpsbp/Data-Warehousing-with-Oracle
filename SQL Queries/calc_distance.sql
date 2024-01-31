USE eurorbit;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `calc_distance`(lat1 DOUBLE, long1 DOUBLE, lat2 DOUBLE, long2 DOUBLE) RETURNS int
    DETERMINISTIC
BEGIN

RETURN ST_Distance_Sphere(point(long1, lat1), point(long2, lat2)) / 1000;

END $$

DELIMITER ;