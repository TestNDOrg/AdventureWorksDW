CREATE TABLE [dbo].[FactFinance]
(
[TimeKey] [int] NULL,
[OrganizationKey] [int] NULL,
[DepartmentGroupKey] [int] NULL,
[ScenarioKey] [int] NULL,
[AccountKey] [int] NULL,
[Amount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactFinance] ADD CONSTRAINT [FK_FactFinance_DimAccount] FOREIGN KEY ([AccountKey]) REFERENCES [dbo].[DimAccount] ([AccountKey])
GO
ALTER TABLE [dbo].[FactFinance] ADD CONSTRAINT [FK_FactFinance_DimDepartmentGroup] FOREIGN KEY ([DepartmentGroupKey]) REFERENCES [dbo].[DimDepartmentGroup] ([DepartmentGroupKey])
GO
ALTER TABLE [dbo].[FactFinance] ADD CONSTRAINT [FK_FactFinance_DimOrganization] FOREIGN KEY ([OrganizationKey]) REFERENCES [dbo].[DimOrganization] ([OrganizationKey])
GO
ALTER TABLE [dbo].[FactFinance] ADD CONSTRAINT [FK_FactFinance_DimScenario] FOREIGN KEY ([ScenarioKey]) REFERENCES [dbo].[DimScenario] ([ScenarioKey])
GO
ALTER TABLE [dbo].[FactFinance] ADD CONSTRAINT [FK_FactFinance_DimTime] FOREIGN KEY ([TimeKey]) REFERENCES [dbo].[DimTime] ([TimeKey])
GO
