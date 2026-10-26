SELECT Idcliente,
        
        QtdePontos,
        QtdePontos + 10 AS Qtpontosplus10,
        QtdePontos * 2 AS QtdePontosx2,

        DtCriacao,

        substr(DtCriacao, 1, 10) AS dtsubstring,
        
        datetime(substr(DtCriacao, 1, 10)) AS dtcriaçãonova,
        
        strftime('%w', datetime(substr(DtCriacao, 1, 10))) AS DiaSemana

FROM clientes
