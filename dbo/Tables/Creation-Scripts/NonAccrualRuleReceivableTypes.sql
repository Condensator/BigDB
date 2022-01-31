SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonAccrualRuleReceivableTypes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[ReceivableTypeId] [bigint] NULL,
	[NonAccrualRuleTemplateId] [bigint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [dbo].[NonAccrualRuleReceivableTypes]  WITH CHECK ADD  CONSTRAINT [ENonAccrualRuleReceivableType_ReceivableType] FOREIGN KEY([ReceivableTypeId])
REFERENCES [dbo].[ReceivableTypes] ([Id])
GO
ALTER TABLE [dbo].[NonAccrualRuleReceivableTypes] CHECK CONSTRAINT [ENonAccrualRuleReceivableType_ReceivableType]
GO
ALTER TABLE [dbo].[NonAccrualRuleReceivableTypes]  WITH CHECK ADD  CONSTRAINT [ENonAccrualRuleTemplate_NonAccrualRuleReceivableTypes] FOREIGN KEY([NonAccrualRuleTemplateId])
REFERENCES [dbo].[NonAccrualRuleTemplates] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NonAccrualRuleReceivableTypes] CHECK CONSTRAINT [ENonAccrualRuleTemplate_NonAccrualRuleReceivableTypes]
GO
