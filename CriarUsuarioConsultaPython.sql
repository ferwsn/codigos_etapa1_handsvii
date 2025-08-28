	-- Criar usuário para consulta em Python (enunciado .e)
	USE master;
	GO
	
	CREATE LOGIN consulta_python WITH PASSWORD = '!Consulta1';
	GO

	USE	handsvii;
	GO

	CREATE USER consulta_python FOR LOGIN consulta_python;
	GO

	EXECUTE sp_addrolemember 'db_datareader', 'consulta_python';
	GO