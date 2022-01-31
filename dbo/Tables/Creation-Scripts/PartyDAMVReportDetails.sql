SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyDAMVReportDetails](
	[FirstName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[LastName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DateOfBirth] [date] NULL,
	[IdentityDocumentNumber] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IssueDate] [date] NULL,
	[IssuerPlace] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IssuerPlaceLatin] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IssuerName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[ValidDate] [date] NULL,
	[MiddleName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceCountryCode] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceCountryName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceCountryNameLatin] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceTerritorialUnitName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceDistrictName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[BirthPlaceMunicipalityName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DAIntegrationResponseId] [bigint] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[DocumentType] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DocumentTypeLatin] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[IssuerNameLatin] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PartyDAMVReportDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[PartyDAMVReportDetails]  WITH CHECK ADD  CONSTRAINT [EParty_PartyDAMVReportDetail] FOREIGN KEY([Id])
REFERENCES [dbo].[Parties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PartyDAMVReportDetails] CHECK CONSTRAINT [EParty_PartyDAMVReportDetail]
GO
ALTER TABLE [dbo].[PartyDAMVReportDetails]  WITH CHECK ADD  CONSTRAINT [EPartyDAMVReportDetail_DAIntegrationResponse] FOREIGN KEY([DAIntegrationResponseId])
REFERENCES [dbo].[DAIntegrationResponses] ([Id])
GO
ALTER TABLE [dbo].[PartyDAMVReportDetails] CHECK CONSTRAINT [EPartyDAMVReportDetail_DAIntegrationResponse]
GO
