SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorForUsers](
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[VendorId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[LanguageId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[VendorForUsers]  WITH CHECK ADD  CONSTRAINT [EUser_VendorForUser] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorForUsers] CHECK CONSTRAINT [EUser_VendorForUser]
GO
ALTER TABLE [dbo].[VendorForUsers]  WITH CHECK ADD  CONSTRAINT [EVendorForUser_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[LanguageConfigs] ([Id])
GO
ALTER TABLE [dbo].[VendorForUsers] CHECK CONSTRAINT [EVendorForUser_Language]
GO
ALTER TABLE [dbo].[VendorForUsers]  WITH CHECK ADD  CONSTRAINT [EVendorForUser_Vendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[VendorForUsers] CHECK CONSTRAINT [EVendorForUser_Vendor]
GO
