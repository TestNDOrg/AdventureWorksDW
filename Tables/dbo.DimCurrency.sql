CREATE TABLE [dbo].[DimCurrency]
(
[CurrencyKey] [int] NOT NULL IDENTITY(1, 1),
[CurrencyAlternateKey] [nchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[CurrencyName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] ADD CONSTRAINT [PK_DimCurrency_CurrencyKey] PRIMARY KEY CLUSTERED  ([CurrencyKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] ADD CONSTRAINT [AK_DimCurrency_CurrencyAlternateKey] UNIQUE NONCLUSTERED  ([CurrencyAlternateKey]) ON [PRIMARY]
GO
