SELECT
    claim_id,
    policy_id,
    claim_date,
    settlement_date,
    claim_status,
    claim_type,
    claim_amount,
    DATEDIFF(day, claim_date, settlement_date) AS days_to_settle
FROM {{ ref('claims') }}
WHERE settlement_date IS NOT NULL