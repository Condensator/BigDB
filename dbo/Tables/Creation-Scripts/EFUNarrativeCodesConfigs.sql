SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EFUNarrativeCodesConfigs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NumericCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[AlphaCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RowVersion] [timestamp] NOT NULL,
	[PortfolioId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[EFUNarrativeCodesConfigs]  WITH CHECK ADD  CONSTRAINT [EEFUNarrativeCodesConfig_Portfolio] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolios] ([Id])
GO
ALTER TABLE [dbo].[EFUNarrativeCodesConfigs] CHECK CONSTRAINT [EEFUNarrativeCodesConfig_Portfolio]
GO
