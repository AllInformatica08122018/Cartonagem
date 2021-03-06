USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblDocumento_TipoDocumento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocumento_TipoDocumento](
	[IdDocumento] [uniqueidentifier] NOT NULL,
	[IdTipoDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblDocumento_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC,
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblDocumento_TipoDocumento]  WITH CHECK ADD  CONSTRAINT [FK_tblDocumento_TipoDocumento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblDocumento_TipoDocumento] CHECK CONSTRAINT [FK_tblDocumento_TipoDocumento_tblDocumentos]
GO
ALTER TABLE [dbo].[tblDocumento_TipoDocumento]  WITH CHECK ADD  CONSTRAINT [FK_tblDocumento_TipoDocumento_tblTipoDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[tblTipoDocumento] ([Id])
GO
ALTER TABLE [dbo].[tblDocumento_TipoDocumento] CHECK CONSTRAINT [FK_tblDocumento_TipoDocumento_tblTipoDocumento]
GO
