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

	SELECT * FROM tb_clientes;

	INSERT INTO [tb_clientes]([nm_cliente], [tp_pessoa])
	VALUES
		('Lucas Andrade Ferreira','F'),
		('Mariana Costa Lima','F'),
		('Horizonte Urbano Empreendimentos','J'),
		('Rafael Oliveira Mendes','F'),
		('Camila Rocha Martins','F'),
		('Joao Pedro Silveira Nunes','F'),
		('Ana Beatriz Moreira Pinto','F'),
		('Gustavo Almeida Ramos','F'),
		('Vertice Imobiliaria e Construcoes','J'),
		('Nova Terra Desenvolvimento Imobiliario','J'),
		('Isabela Monteiro Duarte','F'),
		('Felipe Cardoso Tavares','F'),
		('Larissa Carvalho Fonseca','F'),
		('Alto Padrao Engenharia e Imoveis','J'),
		('Bruno Teixeira Barros','F'),
		('Juliana Ribeiro Camargo','F'),
		('Mateus Santana Borges','F'),
		('Patricia Figueiredo Soares','F'),
		('Thiago Lima Vasconcelos','F'),
		('PrimeVila Empreendimentos Residenciais','J'),
		('Renata Pires Guimaraes','F');
	GO

	INSERT INTO [tb_pagamentos]([dt_pagamento], [qt_pagamento], [cd_imovel], [cd_cliente])
	VALUES
		('03-09-2023',3400,100,245),
		('05-09-2023',8900,101,243),
		('09-09-2023',5500,105,250),
		('13-09-2023',2700,107,247),
		('15-09-2023',1750,108,259),
		('15-09-2023',22390,109,254),
		('17-09-2023',7950,112,248),
		('21-09-2023',1900,113,243),
		('24-09-2023',2600,115,262),
		('03-10-2023',3400,100,245),
		('05-10-2023',8900,101,243),
		('09-10-2023',5500,105,250),
		('13-10-2023',2700,107,247),
		('15-10-2023',1750,108,259),
		('15-10-2023',22390,109,254),
		('17-10-2023',7950,112,248),
		('21-10-2023',1900,113,243),
		('24-10-2023',2600,115,262),
		('03-11-2023',3400,100,245),
		('05-11-2023',8900,101,243),
		('09-11-2023',5500,105,250),
		('13-11-2023',2700,107,247),
		('15-11-2023',1750,108,259),
		('15-11-2023',22390,109,254),
		('17-11-2023',7950,112,248),
		('21-11-2023',1900,113,243),
		('24-11-2023',2600,115,262),
		('03-12-2023',3400,100,245),
		('05-12-2023',8900,101,243),
		('09-12-2023',5500,105,250),
		('13-12-2023',2700,107,247),
		('15-12-2023',1750,108,259),
		('15-12-2023',22390,109,254),
		('17-12-2023',7950,112,248),
		('21-12-2023',1900,113,243),
		('24-12-2023',2600,115,262),
		('03-01-2024',3750,100,245),
		('05-01-2024',9300,101,243),
		('09-01-2024',6100,105,250),
		('13-01-2024',3050,107,247),
		('15-01-2024',1900,108,259),
		('15-01-2024',25000,109,254),
		('17-01-2024',9000,112,248),
		('21-01-2024',2050,113,243),
		('24-01-2024',2760,115,262);
	GO
