USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblSistema]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSistema](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Nome] [varchar](200) NULL,
	[NrVersao] [nchar](10) NULL,
 CONSTRAINT [PK_tblSistema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblSistema] ADD  CONSTRAINT [DF_tblSistema_Id]  DEFAULT (newid()) FOR [Id]
GO
