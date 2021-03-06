USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Descricao] [nvarchar](200) NULL,
	[IdSistema] [uniqueidentifier] NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblEmpresa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa] ADD  CONSTRAINT [DF_tblEmpresa_id]  DEFAULT (newid()) FOR [id]
GO
