CREATE TYPE [dbo].[LegalReliefPOCContract] AS TABLE(
	[Amount_Amount] [decimal](16, 2) NULL,
	[Amount_Currency] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[Id] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedTime] [datetimeoffset](7) NOT NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedTime] [datetimeoffset](7) NULL,
	[Include] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[ContractId] [bigint] NULL,
	[AcceleratedBalanceDetailId] [bigint] NULL,
	[LegalReliefProofOfClaimId] [bigint] NOT NULL,
	[Token] [int] NOT NULL,
	[RowVersion] [bigint] NULL
)
GO
