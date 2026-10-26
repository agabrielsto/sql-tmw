--Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS Totalpontos,
         count(DISTINCT substr(DtCriacao, 1, 10)) AS DiasComTransacoes,
         sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS MediaPontosPorDia

FROM transacoes

WHERE QtdePontos > 0;

SELECT substr(DtCriacao,1,10) AS dtDia,
       AVG(QtdePontos) AS avgpontosdia

FROM transacoes

WHERE QtdePontos > 0

GROUP BY 1 
ORDER BY 2
;
