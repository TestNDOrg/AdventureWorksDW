CREATE TABLE [dbo].[FactInternetSalesReason]
(
[SalesOrderNumber] [nvarchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[SalesOrderLineNumber] [tinyint] NOT NULL,
[SalesReasonKey] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInternetSalesReason] ADD CONSTRAINT [AK_FactInternetSalesReason_SalesOrderNumber_SalesOrderLineNumber_SalesReasonKey] UNIQUE NONCLUSTERED  ([SalesOrderNumber], [SalesOrderLineNumber], [SalesReasonKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInternetSalesReason] ADD CONSTRAINT [FK_FactInternetSalesReason_DimSalesReason] FOREIGN KEY ([SalesReasonKey]) REFERENCES [dbo].[DimSalesReason] ([SalesReasonKey])
GO
ALTER TABLE [dbo].[FactInternetSalesReason] ADD CONSTRAINT [FK_FactInternetSalesReason_FactInternetSales] FOREIGN KEY ([SalesOrderNumber], [SalesOrderLineNumber]) REFERENCES [dbo].[FactInternetSales] ([SalesOrderNumber], [SalesOrderLineNumber])
GO
