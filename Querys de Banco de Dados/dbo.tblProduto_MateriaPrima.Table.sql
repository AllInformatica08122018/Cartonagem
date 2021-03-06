USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblProduto_MateriaPrima]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto_MateriaPrima](
	[IdProduto] [uniqueidentifier] NOT NULL,
	[IdMateriaPrima] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProduto_MateriaPrima] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblProduto_MateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_MateriaPrima_tblMateriaPrima] FOREIGN KEY([IdMateriaPrima])
REFERENCES [dbo].[tblMateriaPrima] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_MateriaPrima] CHECK CONSTRAINT [FK_tblProduto_MateriaPrima_tblMateriaPrima]
GO
ALTER TABLE [dbo].[tblProduto_MateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_MateriaPrima_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_MateriaPrima] CHECK CONSTRAINT [FK_tblProduto_MateriaPrima_tblProduto]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entende-se Materia Prima, todos os itens que compoem o produto. Como Chapa de Papelão, tintas, grampos, Cola, Facas, Clichês etc...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProduto_MateriaPrima', @level2type=N'COLUMN',@level2name=N'IdMateriaPrima'
GO
