SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PPTInvoiceAddresses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressLine1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[AddressLine2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[City] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Division] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[PostalCode] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[HomeAddressLine1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[HomeAddressLine2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[HomeCity] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[HomeDivision] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[HomePostalCode] [nvarchar](12) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[IsMain] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[StateId] [bigint] NULL,
	[HomeStateId] [bigint] NULL,
	[PPTInvoiceId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[IsHeadquarter] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[PPTInvoiceAddresses]  WITH CHECK ADD  CONSTRAINT [EPPTInvoice_PPTInvoiceAddresses] FOREIGN KEY([PPTInvoiceId])
REFERENCES [dbo].[PPTInvoices] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PPTInvoiceAddresses] CHECK CONSTRAINT [EPPTInvoice_PPTInvoiceAddresses]
GO
ALTER TABLE [dbo].[PPTInvoiceAddresses]  WITH CHECK ADD  CONSTRAINT [EPPTInvoiceAddress_HomeState] FOREIGN KEY([HomeStateId])
REFERENCES [dbo].[States] ([Id])
GO
ALTER TABLE [dbo].[PPTInvoiceAddresses] CHECK CONSTRAINT [EPPTInvoiceAddress_HomeState]
GO
ALTER TABLE [dbo].[PPTInvoiceAddresses]  WITH CHECK ADD  CONSTRAINT [EPPTInvoiceAddress_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
ALTER TABLE [dbo].[PPTInvoiceAddresses] CHECK CONSTRAINT [EPPTInvoiceAddress_State]
GO
