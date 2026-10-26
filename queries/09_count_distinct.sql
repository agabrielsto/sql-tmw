SELECT 
    COUNT(*),
    COUNT(DISTINCT IdTransacao),
    COUNT(DISTINCT IdCliente)
    
FROM Transacoes

WHERE Dtcriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY Dtcriacao DESC;