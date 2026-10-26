SELECT 

      Sum(QtdePontos),
      Sum(CASE
          WHEN QtdePontos > 0 THEN QtdePontos
          END) AS PontosPositivos,
      Sum(CASE
          WHEN QtdePontos < 0 THEN QtdePontos
          END) AS PontosNegativos,
      Count(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS QtdeTransacoesNegativas

FROM transacoes

WHERE Dtcriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'