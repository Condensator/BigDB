CREATE TYPE [dbo].[BranchContact] AS TABLE(
	[Prefix] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[FirstName] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[MiddleName] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[LastName] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[LastName2] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[FullName] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumber1] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[ExtensionNumber1] [nvarchar](5) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumber2] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[ExtensionNumber2] [nvarchar](5) COLLATE Latin1_General_CI_AS NULL,
	[MobilePhoneNumber] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[FaxNumber] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[EMailId] [nvarchar](70) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[MailingAddressId] [bigint] NULL,
	[BranchId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO