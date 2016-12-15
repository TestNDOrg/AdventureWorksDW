IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'I3Q\clive.pickering')
CREATE LOGIN [I3Q\clive.pickering] FROM WINDOWS
GO
CREATE USER [test] FOR LOGIN [I3Q\clive.pickering]
GO
