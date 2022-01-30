SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanCustomAmorts](
	[Id] [bigint] NOT NULL,
	[UploadCustomAmort] [bit] NOT NULL,
	[CustomAmortDocument_Source] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[CustomAmortDocument_Type] [nvarchar](5) COLLATE Latin1_General_CI_AS NULL,
	[CustomAmortDocument_Content] [varbinary](82) NULL,
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
ALTER TABLE [dbo].[LoanCustomAmorts]  WITH CHECK ADD  CONSTRAINT [ELoanFinance_LoanCustomAmort] FOREIGN KEY([Id])
REFERENCES [dbo].[LoanFinances] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoanCustomAmorts] CHECK CONSTRAINT [ELoanFinance_LoanCustomAmort]
GO
