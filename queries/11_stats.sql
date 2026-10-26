SELECT round(avg(QtdePontos),2) AS MediCarteira,
       1. * sum(QtdePontos) / Count(IdCliente) AS MediaCarteiraRoots,
       min (QtdePontos) AS MinCarteira,
       max (QtdePontos) AS MaxCarteira,
       sum(Fltwitch),
       sum(Flemail)

FROM clientes 