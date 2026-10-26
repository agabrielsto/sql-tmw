--Do início ao fim do nosso curso (2025/08/25 a 2025/08/29), quantos clientes assinaram a lista de presença?

SELECT count(DISTINCT t1.IdCliente) 

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdPorduto = t3.IdPorduto

WHERE t1.DtCricao >= '2025-08-25'
AND t1.DtCricao < '2025-08-30'
AND t3.DescCategoriaProduto = 'Lista de Presença'

