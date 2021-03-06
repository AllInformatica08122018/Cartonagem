USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa_Endereco]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Endereco](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdEndereco] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Endereco] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa_Endereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Endereco_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Endereco] CHECK CONSTRAINT [FK_tblEmpresa_Endereco_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Endereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Endereco_tblEndereco] FOREIGN KEY([IdEndereco])
REFERENCES [dbo].[tblEndereco] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Endereco] CHECK CONSTRAINT [FK_tblEmpresa_Endereco_tblEndereco]
GO
