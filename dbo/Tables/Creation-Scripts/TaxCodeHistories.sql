SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxCodeHistories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [date] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[TaxCodeId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[TaxCodeHistories]  WITH CHECK ADD  CONSTRAINT [ETaxCode_TaxCodeHistories] FOREIGN KEY([TaxCodeId])
REFERENCES [dbo].[TaxCodes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaxCodeHistories] CHECK CONSTRAINT [ETaxCode_TaxCodeHistories]
GO
