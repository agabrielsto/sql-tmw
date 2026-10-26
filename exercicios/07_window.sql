--Qual o dia da semana mais ativo de cada usuário?

WITH tb_cliente_semana AS (
        SELECT IdCliente,
            strftime('%w', substr(DtCriacao,1,10)) AS dtDiaSemana,
            count(distinct IdTransacao) AS qtTransacao

        FROM transacoes

        GROUP BY IdCliente, dtDiaSemana
),

tb_rn AS (
    SELECT *,
        CASE
            WHEN dtDiaSemana = '0' THEN 'Domingo'
            WHEN dtDiaSemana = '1' THEN 'Segunda-feira'
            WHEN dtDiaSemana = '2' THEN 'Terça-feira'
            WHEN dtDiaSemana = '3' THEN 'Quarta-feira'
            WHEN dtDiaSemana = '4' THEN 'Quinta-feira'
            WHEN dtDiaSemana = '5' THEN 'Sexta-feira'
            WHEN dtDiaSemana = '6' THEN 'Sábado'
            ELSE 'Domingo'
            END AS descdiasemana,
            
            ROW_NUMBER() OVER (PARTITION BY IdCliente ORDER BY qtTransacao DESC) AS rn

    FROM tb_cliente_semana

)

SELECT *
FROM tb_rn
WHERE rn = 1

