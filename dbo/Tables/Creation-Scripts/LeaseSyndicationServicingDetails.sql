SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaseSyndicationServicingDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [date] NULL,
	[IsServiced] [bit] NOT NULL,
	[IsCobrand] [bit] NOT NULL,
	[IsPerfectPay] [bit] NOT NULL,
	[IsCollected] [bit] NOT NULL,
	[IsPrivateLabel] [bit] NOT NULL,
	[PropertyTaxResponsibility] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[RemitToId] [bigint] NULL,
	[LeaseSyndicationId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[LeaseSyndicationServicingDetails]  WITH CHECK ADD  CONSTRAINT [ELeaseSyndication_LeaseSyndicationServicingDetails] FOREIGN KEY([LeaseSyndicationId])
REFERENCES [dbo].[LeaseSyndications] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaseSyndicationServicingDetails] CHECK CONSTRAINT [ELeaseSyndication_LeaseSyndicationServicingDetails]
GO
ALTER TABLE [dbo].[LeaseSyndicationServicingDetails]  WITH CHECK ADD  CONSTRAINT [ELeaseSyndicationServicingDetail_RemitTo] FOREIGN KEY([RemitToId])
REFERENCES [dbo].[RemitToes] ([Id])
GO
ALTER TABLE [dbo].[LeaseSyndicationServicingDetails] CHECK CONSTRAINT [ELeaseSyndicationServicingDetail_RemitTo]
GO
