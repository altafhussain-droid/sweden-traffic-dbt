SELECT
    RAW_DATA:data.conditions AS CONDITIONS
FROM {{ source('bronze', 'ROAD_CONDITIONS_RAW') }}