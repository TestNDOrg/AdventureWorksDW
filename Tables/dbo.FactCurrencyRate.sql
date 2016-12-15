CREATE TABLE [dbo].[FactCurrencyRate]
(
[CurrencyKey] [int] NOT NULL,
[TimeKey] [int] NOT NULL,
[AverageRate] [float] NOT NULL,
[EndOfDayRate] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactCurrencyRate] ADD CONSTRAINT [FK_FactCurrencyRate_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
GO
ALTER TABLE [dbo].[FactCurrencyRate] ADD CONSTRAINT [FK_FactCurrencyRate_DimTime] FOREIGN KEY ([TimeKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
