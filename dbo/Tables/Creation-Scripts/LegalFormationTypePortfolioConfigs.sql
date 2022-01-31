SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalFormationTypePortfolioConfigs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PortfolioId] [bigint] NOT NULL,
	[LegalFormationTypeConfigId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[LegalFormationTypePortfolioConfigs]  WITH CHECK ADD  CONSTRAINT [ELegalFormationTypePortfolioConfig_LegalFormationTypeConfig] FOREIGN KEY([LegalFormationTypeConfigId])
REFERENCES [dbo].[LegalFormationTypeConfigs] ([Id])
GO
ALTER TABLE [dbo].[LegalFormationTypePortfolioConfigs] CHECK CONSTRAINT [ELegalFormationTypePortfolioConfig_LegalFormationTypeConfig]
GO
ALTER TABLE [dbo].[LegalFormationTypePortfolioConfigs]  WITH CHECK ADD  CONSTRAINT [ELegalFormationTypePortfolioConfig_Portfolio] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolios] ([Id])
GO
ALTER TABLE [dbo].[LegalFormationTypePortfolioConfigs] CHECK CONSTRAINT [ELegalFormationTypePortfolioConfig_Portfolio]
GO
