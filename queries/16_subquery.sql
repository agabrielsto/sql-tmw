
SELECT *

FROM (
    SELECT *
    FROM transacoes
    WHERE DtCriacao >= '2025-001-01'
)

WHERE DtCriacao < '2025-17-01'