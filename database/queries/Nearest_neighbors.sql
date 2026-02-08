WITH
    'Reference Point' AS (
        -- First, find the geometry of your home
        SELECT
            geom
        FROM
            my_locations
        WHERE
            category = 'Reference Point'
    )
SELECT
    -- Format the output as a KML LineString from home to the neighbor
    ST_AsKML (ST_MakeLine (home.geom, neighbor.geom)) AS kml_linestring,
    neighbor.name,
    -- Calculate the distance (just for your info)
    ST_Distance (home.geom, neighbor.geom) AS distance
FROM
    my_locations AS neighbor,
    home
WHERE
    neighbor.category != 'Reference Point' -- Don't find home as its own neighbor
ORDER BY
    home.geom < - > neighbor.geom -- '<->' is the "distance" operator, it's fast
LIMIT
    4;