USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblItemOrcamento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItemOrcamento](
	[Id] [uniqueidentifier] NOT NULL,
	[IdOrcamento] [uniqueidentifier] NULL,
	[Ordem] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Quantidade] [int] NULL,
	[VlrItem] [decimal](7, 4) NULL,
	[VlrTotalItem] [decimal](7, 2) NULL,
	[DescontoItem] [decimal](7, 2) NULL,
 CONSTRAINT [PK_tblItemOrcamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblItemOrcamento]  WITH CHECK ADD  CONSTRAINT [FK_tblItemOrcamento_tblOrcamento] FOREIGN KEY([IdOrcamento])
REFERENCES [dbo].[tblOrcamento] ([Id])
GO
ALTER TABLE [dbo].[tblItemOrcamento] CHECK CONSTRAINT [FK_tblItemOrcamento_tblOrcamento]
GO
