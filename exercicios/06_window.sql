--Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?

WITH tb_dia_cliente AS (

    SELECT substr(DtCriacao,1,10) AS dtDia,
           count(distinct IdCliente) AS qtCliente
    FROM clientes

    GROUP BY dtDia


),

tb_acum AS (
    SELECT *,
           SUM(qtCliente) OVER (ORDER BY dtDia) AS qtdeClienteAcum
   
    FROM tb_dia_cliente

)

SELECT *
FROM tb_acum
ORDER BY dtDia