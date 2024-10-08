SELECT
    DATE_TRUNC('month', claim_date) AS month,
    claim_type,
    COUNT(*) AS claim_count,
    SUM(claim_amount) AS total_claim_amount,
    AVG(claim_amount) AS avg_claim_amount,
    COUNT(DISTINCT adjuster_id) AS active_adjusters
FROM {{ ref('claims') }}
GROUP BY 1, 2
ORDER BY 1, 2