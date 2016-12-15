CREATE TABLE [dbo].[DatabaseLog]
(
[DatabaseLogID] [int] NOT NULL IDENTITY(1, 1),
[PostTime] [datetime] NOT NULL,
[DatabaseUser] [sys].[sysname] NOT NULL,
[Event] [sys].[sysname] NOT NULL,
[Schema] [sys].[sysname] NULL,
[Object] [sys].[sysname] NULL,
[TSQL] [nvarchar] (max) COLLATE Latin1_General_CI_AS NOT NULL,
[XmlEvent] [xml] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
