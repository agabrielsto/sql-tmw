SELECT Idcliente
       QtdePontos,

       CASE
              WHEN QtdePontos <= 500 THEN 'Ponei'
              WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
              WHEN QtdePontos > 1000 THEN 'Mago Aprendiz'
              WHEN QtdePontos > 2000 THEN 'Mago Mestre'
              ELSE 'Mago Supremo'
        END AS NomeGrupo,

        CASE
              WHEN QtdePontos <= 1000 THEN 1
              ELSE 0
        END AS FlPonei,

        CASE
              WHEN QtdePontos > 1000 THEN 1
              ELSE 0
        END AS flMago

FROM Clientes
WHERE flPonei = 1