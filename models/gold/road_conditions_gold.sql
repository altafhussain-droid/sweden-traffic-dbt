SELECT
    COUNTY_NUMBER,
    CONDITION,
    COUNT(*) AS CONDITION_COUNT
FROM {{ ref('road_conditions_silver') }}
GROUP BY
    COUNTY_NUMBER,
    CONDITION