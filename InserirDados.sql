	-- Inserindo dados às tabelas
	INSERT INTO [tb_tpstatus]([ds_tpstatus])
	VALUES 
		('ABERTO'),
		('PROPOSTA ENVIADA'),
		('EM NEGOCIACAO'),
		('PROPOSTA ACEITA'),
		('PROPOSTA RECUSADA'),
		('EM ESCRITURACAO'),
		('VENDIDO'),
		('ALUGADO');
	GO
	
	INSERT INTO [tb_tpimovel]([ds_tpimovel])
	VALUES
		('APARTAMENTO'),
		('CASA'),
		('TERRENO'),
		('SALA COMERCIAL'),
		('GALPAO'),
		('COBERTURA'),
		('KITNET'),
		('LOJA');
	GO

	INSERT INTO [tb_imoveis]([ds_imovel], [tp_imovel], [tp_status])
	VALUES
		('Apartamento 100 m2 em condomínio fechado', 1, 7),
		('Casa 3 quartos com quintal amplo', 2, 7),
		('Casa 2 quartos com 1 suíte', 2, 4),
		('Galpão 500 m2 – centro', 5, 1),
		('Loja 60 m2 em galeria', 8, 5),
		('Terreno 300 m2 em zona urbana', 3, 7),
		('Apartamento 100 m2 em condomínio fechado', 1, 3),
		('Sala comercial 45 m2 – centro', 4, 7),
		('Kitnet 24 m2', 7, 7),
		('Galpão 600 m2 – distrito industrial', 5, 7),
		('Terreno 700 m2 em zona rural', 3, 2),
		('Sala comercial 70 m2', 4, 1),
		('Cobertura 180 m2 com vista panorâmica', 6, 7),
		('Kitnet 28 m2 próximo à universidade', 7, 7),
		('Cobertura 150 m2 na orla', 6, 6),
		('Loja 70 m2 em galeria', 8, 7);
	GO

	INSERT INTO [tb_clientes]
	INSERT INTO [tb_pagamentos]([dt_pagamento], [qt_pagamento], [cd_imovel], [cd_cliente])