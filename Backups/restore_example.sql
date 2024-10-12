USE [master]
GO
RESTORE DATABASE [WideWorldImporters] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\Backup\WideWorldImporters-Full.bak' 
WITH  FILE = 1,  
MOVE N'WWI_Primary' TO N'C:\SQLServer\WideWorldImporters.mdf',  
MOVE N'WWI_UserData' TO N'C:\SQLServer\WideWorldImporters_UserData.ndf', 
MOVE N'WWI_Log'  TO N'C:\SQLServer\WideWorldImporters.ldf',  
MOVE N'WWI_InMemory_Data_1' TO N'C:\SQLServer\WideWorldImporters_InMemory_Data_1', 
NOUNLOAD,  
STATS = 5
GO

USE [master]
GO
RESTORE DATABASE [WideWorldImportersDW] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\Backup\WideWorldImportersDW-Full.bak' 
WITH  FILE = 1,  
MOVE N'WWI_Primary' TO N'C:\SQLServer\WideWorldImportersDW.mdf',  
MOVE N'WWI_UserData' TO N'C:\SQLServer\WideWorldImportersDW_UserData.ndf',  
MOVE N'WWI_Log' TO N'C:\SQLServer\WideWorldImportersDW.ldf', 
MOVE N'WWIDW_InMemory_Data_1' TO N'C:\SQLServer\WideWorldImportersDW_InMemory_Data_1',  
NOUNLOAD,  
REPLACE,  
STATS = 5
GO
