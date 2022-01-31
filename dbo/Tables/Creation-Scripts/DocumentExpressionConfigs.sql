SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentExpressionConfigs](
	[Alias] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Expression] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[DocumentEntityConfigId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[DocumentExpressionConfigs]  WITH CHECK ADD  CONSTRAINT [EDocumentExpressionConfig_DocumentEntityConfig] FOREIGN KEY([DocumentEntityConfigId])
REFERENCES [dbo].[DocumentEntityConfigs] ([Id])
GO
ALTER TABLE [dbo].[DocumentExpressionConfigs] CHECK CONSTRAINT [EDocumentExpressionConfig_DocumentEntityConfig]
GO