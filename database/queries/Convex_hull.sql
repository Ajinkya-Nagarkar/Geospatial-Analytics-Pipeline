SELECT
    ST_AsKML (ST_ConvexHull (ST_Collect (geom)))
FROM
    my_locations;