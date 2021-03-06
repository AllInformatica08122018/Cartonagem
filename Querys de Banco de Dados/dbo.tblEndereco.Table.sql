USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEndereco]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEndereco](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Logradouro] [nvarchar](100) NULL,
	[Endereco] [nvarchar](200) NULL,
	[numero] [nvarchar](10) NULL,
	[IdCep] [uniqueidentifier] NULL,
	[IdEstado] [uniqueidentifier] NULL,
	[IdTipoEndereco] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblEndereco] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEndereco] ADD  CONSTRAINT [DF_tblEndereco_Id]  DEFAULT (newid()) FOR [Id]
GO
