--Qual dia da semana quem mais pedidos em 2025?

SELECT
    strftime('%w', substr(DtCriacao, 1, 10)) AS DiaSemana,
    count(DISTINCT IdTransacao) AS qtdeTransacao,
    count(IdTransacao) AS qtdeTransacao2,
    count(*) AS qtdetransacao3

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'
GROUP BY 1
ORDER BY 2 DESC