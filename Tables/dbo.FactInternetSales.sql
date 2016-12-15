CREATE TABLE [dbo].[FactInternetSales]
(
[ProductKey] [int] NOT NULL,
[OrderDateKey] [int] NOT NULL,
[DueDateKey] [int] NOT NULL,
[ShipDateKey] [int] NOT NULL,
[CustomerKey] [int] NOT NULL,
[PromotionKey] [int] NOT NULL,
[CurrencyKey] [int] NOT NULL,
[SalesTerritoryKey] [int] NOT NULL,
[SalesOrderNumber] [nvarchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[SalesOrderLineNumber] [tinyint] NOT NULL,
[RevisionNumber] [tinyint] NULL,
[OrderQuantity] [smallint] NULL,
[UnitPrice] [money] NULL,
[ExtendedAmount] [money] NULL,
[UnitPriceDiscountPct] [float] NULL,
[DiscountAmount] [float] NULL,
[ProductStandardCost] [money] NULL,
[TotalProductCost] [money] NULL,
[SalesAmount] [money] NULL,
[TaxAmt] [money] NULL,
[Freight] [money] NULL,
[CarrierTrackingNumber] [nvarchar] (25) COLLATE Latin1_General_CI_AS NULL,
[CustomerPONumber] [nvarchar] (25) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [AK_FactInternetSales_SalesOrderNumber_SalesOrderLineNumber] UNIQUE NONCLUSTERED  ([SalesOrderNumber], [SalesOrderLineNumber]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_CurrencyKey] ON [dbo].[FactInternetSales] ([CurrencyKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_CustomerKey] ON [dbo].[FactInternetSales] ([CustomerKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_DueDateKey] ON [dbo].[FactInternetSales] ([DueDateKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_OrderDateKey] ON [dbo].[FactInternetSales] ([OrderDateKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_ProductKey] ON [dbo].[FactInternetSales] ([ProductKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_PromotionKey] ON [dbo].[FactInternetSales] ([PromotionKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactInternetSales_ShipDateKey] ON [dbo].[FactInternetSales] ([ShipDateKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimCustomer] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimProduct] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimPromotion] FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimSalesTerritory] FOREIGN KEY ([SalesTerritoryKey]) REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimTime] FOREIGN KEY ([OrderDateKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimTime1] FOREIGN KEY ([DueDateKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
ALTER TABLE [dbo].[FactInternetSales] ADD CONSTRAINT [FK_FactInternetSales_DimTime2] FOREIGN KEY ([ShipDateKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
