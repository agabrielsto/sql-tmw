--SABER POR DIA QUANTO TEVE DE INTERAÇÃO

WITH tb_sumario_dias AS (
SELECT substr(DtCriacao, 1, 10) AS dtDia,
       count(DISTINCT IdTransacao) AS qtdeTransacao

FROM transacoes

WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-30'

GROUP BY dtDia 

)
--Ver o quanto evoluiu

SELECT *,

       sum(qtdeTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcumulada

FROM tb_sumario_dias
