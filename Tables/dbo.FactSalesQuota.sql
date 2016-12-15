CREATE TABLE [dbo].[FactSalesQuota]
(
[EmployeeKey] [int] NULL,
[TimeKey] [int] NULL,
[CalendarYear] [char] (4) COLLATE Latin1_General_CI_AS NULL,
[CalendarQuarter] [tinyint] NULL,
[SalesAmountQuota] [money] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactSalesQuota_EmployeeKey] ON [dbo].[FactSalesQuota] ([EmployeeKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactSalesQuota_TimeKey] ON [dbo].[FactSalesQuota] ([TimeKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactSalesQuota] ADD CONSTRAINT [FK_FactSalesQuota_DimEmployee] FOREIGN KEY ([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[FactSalesQuota] ADD CONSTRAINT [FK_FactSalesQuota_DimTime] FOREIGN KEY ([TimeKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
