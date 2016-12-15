IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ncl_appuser')
CREATE LOGIN [ncl_appuser] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [ncl_appuser] FOR LOGIN [ncl_appuser]
GO
