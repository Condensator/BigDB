SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EOL_OdessaModels](
	[ManufacturerId] [bigint] NOT NULL,
	[BrandId] [smallint] NOT NULL,
	[BrandName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[VehTypeId] [smallint] NULL,
	[TypeName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsMPS] [bit] NULL,
	[ModelName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ModelId] [int] NOT NULL,
	[MakeId] [bigint] NOT NULL,
	[MakeName] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[OdessaModelname] [nvarchar](165) COLLATE Latin1_General_CI_AS NULL
)

GO
