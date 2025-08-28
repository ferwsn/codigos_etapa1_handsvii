import pyodbc

server = '192.168.100.38,1433'
database = 'handsvii'
username = 'consulta_python'
password = '!Consulta1'

conn_str = (
    f'DRIVER={{SQL Server}};'
    f'SERVER={server};'
    f'DATABASE={database};'
    f'UID={username};'
    f'PWD={password};'
)

try:
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()

    query = """
    SELECT a.*
      FROM tb_tpimovel tpimv,
           (SELECT pag.id_pagamento,
                   pag.dt_pagamento,
                   pag.qt_pagamento,
                   pag.cd_imovel,
                   imv.ds_imovel,
                   (SELECT aa.ds_tpimovel
                      FROM tb_tpimovel aa
                     WHERE aa.cd_tpimovel = imv.tp_imovel) AS tp_imovel,
                   pag.cd_cliente,
                   cli.nm_cliente,
                   CASE
                        WHEN cli.tp_pessoa = 'F'
                        THEN 'FISICA'
                        ELSE 'JURIDICA'
                   END AS tp_cliente
              FROM tb_pagamentos pag,
                   tb_imoveis imv,
                   tb_clientes cli
             WHERE pag.cd_imovel = imv.cd_imovel
               AND pag.cd_cliente = cli.cd_cliente) a
     WHERE tpimv.cd_tpimovel = 7;
    """

    cursor.execute(query)

    resultados = cursor.fetchall()

    for row in resultados:
        print(row)

    cursor.close()
    conn.close()

except pyodbc.Error as e:
    print("Erro ao conectar ou executar a consulta:", e)
