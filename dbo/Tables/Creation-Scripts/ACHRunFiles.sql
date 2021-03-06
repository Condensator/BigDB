SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACHRunFiles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileLocation] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ACHRunId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[ACHRunFiles]  WITH CHECK ADD  CONSTRAINT [EACHRun_ACHRunFiles] FOREIGN KEY([ACHRunId])
REFERENCES [dbo].[ACHRuns] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ACHRunFiles] CHECK CONSTRAINT [EACHRun_ACHRunFiles]
GO
