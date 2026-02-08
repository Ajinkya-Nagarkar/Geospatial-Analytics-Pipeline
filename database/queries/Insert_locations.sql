CREATE TABLE
    my_locations (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50),
        category VARCHAR(50),
        geom GEOMETRY (Point, 4326)
    );

INSERT INTO
    my_locations (name, category, geom)
VALUES
    (
        'Reference Point',
        'Reference Point',
        ST_GeomFromText (
            'POINT(-118.29036297018881 34.02702181975841)',
            4326
        )
    ),
    -- Libraries
    (
        'Leavey Library',
        'Library',
        ST_GeomFromText (
            'POINT(-118.28303081842726 34.02153309333901)',
            4326
        )
    ),
    (
        'Doheny Library',
        'Library',
        ST_GeomFromText (
            'POINT(-118.28415037766956 34.02037610311187)',
            4326
        )
    ),
    (
        'Hoose Library',
        'Library',
        ST_GeomFromText (
            'POINT(-118.28648403988029 34.01862473274226)',
            4326
        )
    ),
    -- Eateries
    (
        'RTCC',
        'Eatery',
        ST_GeomFromText (
            'POINT(-118.28631152888664 34.020222664905454)',
            4326
        )
    ),
    (
        'EVK',
        'Eatery',
        ST_GeomFromText (
            'POINT(-118.28220510101738 34.02125547141978)',
            4326
        )
    ),
    (
        'Fertitta Cafe',
        'Eatery',
        ST_GeomFromText (
            'POINT(-118.282298223626 34.01893001215148)',
            4326
        )
    ),
    -- Waterworks
    (
        'Genaration Fountain',
        'Waterwork',
        ST_GeomFromText (
            'POINT(-118.28324727244882 34.02219592908872)',
            4326
        )
    ),
    (
        'Doheny Fountatin',
        'Waterwork',
        ST_GeomFromText (
            'POINT(-118.28446687377786 34.02052962767855)',
            4326
        )
    ),
    (
        'Shumway Fountain',
        'Waterwork',
        ST_GeomFromText (
            'POINT(-118.28526674152653 34.020222664905454)',
            4326
        )
    ),
    (
        'Fubon Fountain',
        'Waterwork',
        ST_GeomFromText (
            'POINT(-118.28503409869414 34.02523104748001)',
            4326
        )
    ),
    (
        'Marshall Fountain',
        'Waterwork',
        ST_GeomFromText (
            'POINT(-118.2850333084606 34.019087507543276)',
            4326
        )
    ),
    -- Department Buildings
    (
        'SAL',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.28924344811942 34.01947731108682)',
            4326
        )
    ),
    (
        'SGM',
        'Dept Bldg',
        ST_GeomFromText ('POINT(-118.2890078 34.0213192)', 4326)
    ),
    (
        'USC Viterbi',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.28806356068792 34.0200484306049)',
            4326
        )
    ),
    (
        'TTH',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.28406684402886 34.02238227716023)',
            4326
        )
    ),
    (
        'USC Law',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.28417482327542 34.01884785174663)',
            4326
        )
    ),
    (
        'USC Architecture',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.28771237025748 34.01928644715761)',
            4326
        )
    ),
    (
        'Marshall',
        'Dept Bldg',
        ST_GeomFromText (
            'POINT(-118.2855286653286 34.018599348625884)',
            4326
        )
    );