USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblProduto_Imagem]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto_Imagem](
	[IdProduto] [uniqueidentifier] NOT NULL,
	[IdImagem] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProduto_Imagem] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdImagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblProduto_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_Imagem_tblImagens] FOREIGN KEY([IdImagem])
REFERENCES [dbo].[tblImagens] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_Imagem] CHECK CONSTRAINT [FK_tblProduto_Imagem_tblImagens]
GO
ALTER TABLE [dbo].[tblProduto_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_Imagem_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_Imagem] CHECK CONSTRAINT [FK_tblProduto_Imagem_tblProduto]
GO
