CREATE TYPE [dbo].[VendorPayoffTemplateAssignment] AS TABLE(
	[IsDefault] [bit] NOT NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[IsActive] [bit] NOT NULL,
	[IsAvailableInVendorPortal] [bit] NOT NULL,
	[PayOffTemplateId] [bigint] NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO