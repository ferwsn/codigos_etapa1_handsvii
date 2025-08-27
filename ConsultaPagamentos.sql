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