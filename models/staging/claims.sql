SELECT
    claim_id,
    policy_id,
    claim_date,
    claim_amount,
    claim_status,
    claim_type,
    adjuster_id,
    settlement_date
FROM {{ ref('seed_claims') }}