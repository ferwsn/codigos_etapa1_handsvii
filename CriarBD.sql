	-- Criar banco de dados, tabelas e relacionamentos
	CREATE DATABASE [handsvii];
	GO
	
	USE [handsvii];
	GO

	CREATE TABLE [tb_imoveis] (
		[cd_imovel] INTEGER NOT NULL IDENTITY(100,1) UNIQUE,
		[ds_imovel] VARCHAR(255) NOT NULL,
		[tp_imovel] INTEGER NOT NULL,
		[tp_status] INTEGER NOT NULL,
	);
	GO

	CREATE TABLE [tb_tpimovel] (
		[cd_tpimovel] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
		[ds_tpimovel] VARCHAR(36) NOT NULL,
	);
	GO

	CREATE TABLE [tb_pagamentos] (
		[id_pagamento] INTEGER NOT NULL IDENTITY(100,1) UNIQUE,
		[dt_pagamento] DATE NOT NULL,
		[qt_pagamento] NUMERIC(10,2) NOT NULL,
		[cd_imovel] INTEGER NOT NULL,
		[cd_cliente] INTEGER NOT NULL,
	);
	GO

	CREATE TABLE [tb_tpstatus] (
		[cd_tpstatus] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
		[ds_tpstatus] VARCHAR(36) NOT NULL,
	);
	GO

	CREATE TABLE [tb_clientes] (
		[cd_cliente] INTEGER NOT NULL IDENTITY(200,1) UNIQUE,
		[nm_cliente] VARCHAR(255) NOT NULL,
		[tp_pessoa] CHAR(1) NOT NULL,
	);
	GO

	ALTER TABLE [tb_imoveis]
	ADD CONSTRAINT [pk_cd_imovel]
	PRIMARY KEY ([cd_imovel]);
	GO

	ALTER TABLE [tb_tpimovel]
	ADD CONSTRAINT [pk_cd_tpimovel]
	PRIMARY KEY ([cd_tpimovel]);
	GO

	ALTER TABLE [tb_pagamentos]
	ADD CONSTRAINT [pk_id_pagamento]
	PRIMARY KEY ([id_pagamento]);
	GO

	ALTER TABLE [tb_tpstatus]
	ADD CONSTRAINT [pk_cd_tpstatus]
	PRIMARY KEY ([cd_tpstatus]);
	GO

	ALTER TABLE [tb_clientes]
	ADD CONSTRAINT [pk_cd_cliente]
	PRIMARY KEY ([cd_cliente]);
	GO

	ALTER TABLE [tb_imoveis]
	ADD FOREIGN KEY([tp_status])
	REFERENCES [tb_tpstatus]([cd_tpstatus])
	ON UPDATE NO ACTION ON DELETE NO ACTION;
	GO

	ALTER TABLE [tb_imoveis]
	ADD FOREIGN KEY([tp_imovel])
	REFERENCES [tb_tpimovel]([cd_tpimovel])
	ON UPDATE NO ACTION ON DELETE NO ACTION;
	GO

	ALTER TABLE [tb_pagamentos]
	ADD FOREIGN KEY([cd_imovel])
	REFERENCES [tb_imoveis]([cd_imovel])
	ON UPDATE NO ACTION ON DELETE NO ACTION;
	GO

	ALTER TABLE [tb_pagamentos]
	ADD FOREIGN KEY([cd_cliente])
	REFERENCES [tb_clientes]([cd_cliente])
	ON UPDATE NO ACTION ON DELETE NO ACTION;
	GO