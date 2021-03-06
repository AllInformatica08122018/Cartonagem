USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblProduto_Unidades]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto_Unidades](
	[IdProduto] [uniqueidentifier] NOT NULL,
	[IdUnidades] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProduto_Unidades] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdUnidades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblProduto_Unidades]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_Unidades_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_Unidades] CHECK CONSTRAINT [FK_tblProduto_Unidades_tblProduto]
GO
ALTER TABLE [dbo].[tblProduto_Unidades]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_Unidades_tblUnidades] FOREIGN KEY([IdUnidades])
REFERENCES [dbo].[tblUnidades] ([Id])
GO
ALTER TABLE [dbo].[tblProduto_Unidades] CHECK CONSTRAINT [FK_tblProduto_Unidades_tblUnidades]
GO
