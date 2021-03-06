USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblDocumentos]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocumentos](
	[IdDocumento] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Descricao] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDocumentos] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblDocumentos] ADD  CONSTRAINT [DF_tblDocumentos_IdDocumento]  DEFAULT (newid()) FOR [IdDocumento]
GO
