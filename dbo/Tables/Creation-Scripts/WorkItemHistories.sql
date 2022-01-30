SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemHistories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Reason] [nvarchar](19) COLLATE Latin1_General_CI_AS NOT NULL,
	[Status] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [datetimeoffset](7) NULL,
	[DueDate] [datetimeoffset](7) NULL,
	[WorkItemId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[OwnerUserId] [bigint] NULL,
	[PerformedById] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[WorkItemHistories]  WITH CHECK ADD  CONSTRAINT [EWorkItemHistory_OwnerUser] FOREIGN KEY([OwnerUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[WorkItemHistories] CHECK CONSTRAINT [EWorkItemHistory_OwnerUser]
GO
ALTER TABLE [dbo].[WorkItemHistories]  WITH CHECK ADD  CONSTRAINT [EWorkItemHistory_PerformedBy] FOREIGN KEY([PerformedById])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[WorkItemHistories] CHECK CONSTRAINT [EWorkItemHistory_PerformedBy]
GO
