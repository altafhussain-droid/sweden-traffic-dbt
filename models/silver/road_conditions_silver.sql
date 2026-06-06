SELECT
    VALUE:condition::STRING AS CONDITION,
    VALUE:condition_text::STRING AS CONDITION_TEXT,
    VALUE:county_number::INTEGER AS COUNTY_NUMBER,
    VALUE:measured_at::TIMESTAMP AS MEASURED_AT
FROM {{ ref('road_conditions_bronze') }},
LATERAL FLATTEN(INPUT => CONDITIONS)