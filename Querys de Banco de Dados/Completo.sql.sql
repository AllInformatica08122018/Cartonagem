USE [master]
GO
/****** Object:  Database [Cartonagem]    Script Date: 08/12/2018 12:12:26 ******/
CREATE DATABASE [Cartonagem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cartonagem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Cartonagem.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cartonagem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Cartonagem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cartonagem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cartonagem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cartonagem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cartonagem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cartonagem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cartonagem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cartonagem] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cartonagem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cartonagem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cartonagem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cartonagem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cartonagem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cartonagem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cartonagem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cartonagem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cartonagem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cartonagem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cartonagem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cartonagem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cartonagem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cartonagem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cartonagem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cartonagem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cartonagem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cartonagem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cartonagem] SET RECOVERY FULL 
GO
ALTER DATABASE [Cartonagem] SET  MULTI_USER 
GO
ALTER DATABASE [Cartonagem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cartonagem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cartonagem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cartonagem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cartonagem', N'ON'
GO
USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RazaoSocial] [nvarchar](200) NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCliente_Contato]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Contato](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdContato] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Contato] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCliente_Documento]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Documento](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Documento] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCliente_NotaFiscal]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_NotaFiscal](
	[IdNotaFiscal] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IdNotaFiscal] ASC,
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCliente_Telefone]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Telefone](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Telefone] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContato]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato](
	[IdContato] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Nome] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblContato] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContato_Documento]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato_Documento](
	[IdContato] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblContato_Documento] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContato_Empresa]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato_Empresa](
	[IdContato] [uniqueidentifier] NOT NULL,
	[IdEmpresa] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblContato_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC,
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDocumento_TipoDocumento]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblDocumentos]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblDuplicata]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuplicata](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdNotaFiscal] [uniqueidentifier] NULL,
	[Codigo] [nvarchar](50) NULL,
	[Valor] [decimal](7, 2) NULL,
	[Vencimento] [date] NULL,
	[Observacao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblDuplicata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmpresa]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblEmpresa_Documento]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Documento](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Documento] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmpresa_Endereco]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblEmpresa_Imagem]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Imagem](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdImagem] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Imagem] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdImagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmpresa_Sistema]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Sistema](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdSistema] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Sistema] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmpresa_Telefone]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Telefone](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Telefone] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEndereco]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblEndereco_TipoEndereco]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEndereco_TipoEndereco](
	[IdEndereco] [uniqueidentifier] NOT NULL,
	[IdTipoEndereco] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEndereco_TipoEndereco] PRIMARY KEY CLUSTERED 
(
	[IdEndereco] ASC,
	[IdTipoEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFornecedor]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFornecedor](
	[Id] [uniqueidentifier] NOT NULL,
	[IdEmpresa] [uniqueidentifier] NULL,
	[RazaoSocial] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblFornecedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFornecedor_NotaFiscal]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFornecedor_NotaFiscal](
	[IdNotaFiscal] [uniqueidentifier] NOT NULL,
	[IdFornecedor] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblFornecedor_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IdNotaFiscal] ASC,
	[IdFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImagens]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImagens](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](200) NULL,
	[Imagem] [image] NULL,
	[Observacao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblImagens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblItemNotaFiscal]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItemNotaFiscal](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdNota] [uniqueidentifier] NULL,
	[Ordem] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Quantidade] [int] NULL,
	[VlrItem] [decimal](7, 4) NULL,
	[VlrTotalItem] [decimal](7, 2) NULL,
	[DescontoItem] [decimal](7, 2) NULL,
 CONSTRAINT [PK_tblItemNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblItemOrcamento]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblItemPedido]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItemPedido](
	[Id] [uniqueidentifier] NOT NULL,
	[IdPedido] [uniqueidentifier] NULL,
	[Ordem] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Quantidade] [int] NULL,
	[VlrItem] [decimal](7, 4) NULL,
	[VlrTotalItem] [decimal](7, 2) NULL,
	[DescontoItem] [decimal](7, 2) NULL,
 CONSTRAINT [PK_tblItemPedido] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMateriaPrima]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriaPrima](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](200) NULL,
	[Codigo] [nvarchar](50) NULL,
	[IdFornecedor] [uniqueidentifier] NULL,
	[Valor] [decimal](7, 2) NULL,
	[IdUnidade] [uniqueidentifier] NULL,
	[IdTipoMateriaPrima] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblMateriaPrima] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMateriaPrima_TipoMateriaPrima]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima](
	[IdMateriaPrima] [uniqueidentifier] NOT NULL,
	[IdTipoMateriaPrima] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblMateriaPrima_TipoMateriaPrima] PRIMARY KEY CLUSTERED 
(
	[IdMateriaPrima] ASC,
	[IdTipoMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNotaFiscal]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotaFiscal](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [int] NULL,
	[RazaoSocial] [nvarchar](200) NULL,
	[ValorNota] [decimal](8, 2) NULL,
	[IdTipoNota] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOrcamento]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrcamento](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[Numero] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[VlrTotalOrcamento] [decimal](18, 2) NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblOrcamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPedido]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPedido](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Codigo] [int] NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[ValorTotal] [decimal](7, 2) NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblPedido] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProduto]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdFornecedor] [uniqueidentifier] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Comprimento] [int] NULL,
	[Largura] [int] NULL,
	[Altura] [int] NULL,
	[CompChapa] [int] NULL,
	[LargChapa] [int] NULL,
	[VlrProduto] [decimal](5, 2) NULL,
 CONSTRAINT [PK_tblProduto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProduto_Imagem]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblProduto_MateriaPrima]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblProduto_Unidades]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblSistema]    Script Date: 08/12/2018 12:12:26 ******/
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
/****** Object:  Table [dbo].[tblTelefone]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelefone](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Prefixo] [nvarchar](3) NULL,
	[Numero] [nvarchar](9) NULL,
	[IdTipoTelefone] [uniqueidentifier] NOT NULL,
	[ramal] [nvarchar](5) NULL,
 CONSTRAINT [PK_tblTelefone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTelefone_TipoTelefone]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelefone_TipoTelefone](
	[IdTelefone] [uniqueidentifier] NOT NULL,
	[IdTipoTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblTelefone_TipoTelefone] PRIMARY KEY CLUSTERED 
(
	[IdTelefone] ASC,
	[IdTipoTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTipoDocumento]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoDocumento](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Descrição] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTipoEndereco]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoEndereco](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Descricao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblTipoEndereco] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTipoMateriaPrima]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoMateriaPrima](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblTipoMateriaPrima] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTipoNotaFiscal]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoNotaFiscal](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblTipoNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTipoTelefone]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoTelefone](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblTipoTelefone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUnidades]    Script Date: 08/12/2018 12:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUnidades](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [varchar](5) NULL,
 CONSTRAINT [PK_tblUnidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblCliente] ADD  CONSTRAINT [DF_tblCliente_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblContato] ADD  CONSTRAINT [DF_tblContato_IdContato]  DEFAULT (newid()) FOR [IdContato]
GO
ALTER TABLE [dbo].[tblDocumentos] ADD  CONSTRAINT [DF_tblDocumentos_IdDocumento]  DEFAULT (newid()) FOR [IdDocumento]
GO
ALTER TABLE [dbo].[tblDuplicata] ADD  CONSTRAINT [DF_tblDuplicata_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblEmpresa] ADD  CONSTRAINT [DF_tblEmpresa_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[tblEndereco] ADD  CONSTRAINT [DF_tblEndereco_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblItemNotaFiscal] ADD  CONSTRAINT [DF_tblItemNotaFiscal_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblOrcamento] ADD  CONSTRAINT [DF_tblOrcamento_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblPedido] ADD  CONSTRAINT [DF_tblPedido_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblProduto] ADD  CONSTRAINT [DF_tblProduto_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblSistema] ADD  CONSTRAINT [DF_tblSistema_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblTelefone] ADD  CONSTRAINT [DF_tblTelefone_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblTipoDocumento] ADD  CONSTRAINT [DF_tblTipoDocumento_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblTipoEndereco] ADD  CONSTRAINT [DF_tblTipoEndereco_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblCliente_Contato]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Contato_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Contato] CHECK CONSTRAINT [FK_tblCliente_Contato_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Contato]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Contato_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblCliente_Contato] CHECK CONSTRAINT [FK_tblCliente_Contato_tblContato]
GO
ALTER TABLE [dbo].[tblCliente_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Documento_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Documento] CHECK CONSTRAINT [FK_tblCliente_Documento_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblCliente_Documento] CHECK CONSTRAINT [FK_tblCliente_Documento_tblDocumentos]
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_NotaFiscal_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal] CHECK CONSTRAINT [FK_tblCliente_NotaFiscal_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_NotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal] CHECK CONSTRAINT [FK_tblCliente_NotaFiscal_tblNotaFiscal]
GO
ALTER TABLE [dbo].[tblCliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Telefone_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Telefone] CHECK CONSTRAINT [FK_tblCliente_Telefone_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Telefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Telefone] CHECK CONSTRAINT [FK_tblCliente_Telefone_tblTelefone]
GO
ALTER TABLE [dbo].[tblContato_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Documento_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblContato_Documento] CHECK CONSTRAINT [FK_tblContato_Documento_tblContato]
GO
ALTER TABLE [dbo].[tblContato_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblContato_Documento] CHECK CONSTRAINT [FK_tblContato_Documento_tblDocumentos]
GO
ALTER TABLE [dbo].[tblContato_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Empresa_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblContato_Empresa] CHECK CONSTRAINT [FK_tblContato_Empresa_tblContato]
GO
ALTER TABLE [dbo].[tblContato_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Empresa_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblContato_Empresa] CHECK CONSTRAINT [FK_tblContato_Empresa_tblEmpresa]
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
ALTER TABLE [dbo].[tblDuplicata]  WITH CHECK ADD  CONSTRAINT [FK_tblDuplicata_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblDuplicata] CHECK CONSTRAINT [FK_tblDuplicata_tblNotaFiscal]
GO
ALTER TABLE [dbo].[tblEmpresa_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblEmpresa_Documento] CHECK CONSTRAINT [FK_tblEmpresa_Documento_tblDocumentos]
GO
ALTER TABLE [dbo].[tblEmpresa_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Documento_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Documento] CHECK CONSTRAINT [FK_tblEmpresa_Documento_tblEmpresa]
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
ALTER TABLE [dbo].[tblEmpresa_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Imagem_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem] CHECK CONSTRAINT [FK_tblEmpresa_Imagem_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Imagem_tblImagens] FOREIGN KEY([IdImagem])
REFERENCES [dbo].[tblImagens] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem] CHECK CONSTRAINT [FK_tblEmpresa_Imagem_tblImagens]
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Sistema_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema] CHECK CONSTRAINT [FK_tblEmpresa_Sistema_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Sistema_tblSistema] FOREIGN KEY([IdSistema])
REFERENCES [dbo].[tblSistema] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema] CHECK CONSTRAINT [FK_tblEmpresa_Sistema_tblSistema]
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Telefone_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone] CHECK CONSTRAINT [FK_tblEmpresa_Telefone_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Telefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone] CHECK CONSTRAINT [FK_tblEmpresa_Telefone_tblTelefone]
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEndereco_TipoEndereco_tblEndereco] FOREIGN KEY([IdEndereco])
REFERENCES [dbo].[tblEndereco] ([Id])
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco] CHECK CONSTRAINT [FK_tblEndereco_TipoEndereco_tblEndereco]
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEndereco_TipoEndereco_tblTipoEndereco] FOREIGN KEY([IdTipoEndereco])
REFERENCES [dbo].[tblTipoEndereco] ([Id])
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco] CHECK CONSTRAINT [FK_tblEndereco_TipoEndereco_tblTipoEndereco]
GO
ALTER TABLE [dbo].[tblFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_tblFornecedor_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblFornecedor] CHECK CONSTRAINT [FK_tblFornecedor_tblEmpresa]
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblFornecedor] FOREIGN KEY([IdFornecedor])
REFERENCES [dbo].[tblFornecedor] ([Id])
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal] CHECK CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblFornecedor]
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal] CHECK CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblNotaFiscal]
GO
ALTER TABLE [dbo].[tblItemNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblItemNotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNota])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblItemNotaFiscal] CHECK CONSTRAINT [FK_tblItemNotaFiscal_tblNotaFiscal]
GO
ALTER TABLE [dbo].[tblItemOrcamento]  WITH CHECK ADD  CONSTRAINT [FK_tblItemOrcamento_tblOrcamento] FOREIGN KEY([IdOrcamento])
REFERENCES [dbo].[tblOrcamento] ([Id])
GO
ALTER TABLE [dbo].[tblItemOrcamento] CHECK CONSTRAINT [FK_tblItemOrcamento_tblOrcamento]
GO
ALTER TABLE [dbo].[tblItemPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblItemPedido_tblPedido] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[tblPedido] ([Id])
GO
ALTER TABLE [dbo].[tblItemPedido] CHECK CONSTRAINT [FK_tblItemPedido_tblPedido]
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblMateriaPrima] FOREIGN KEY([IdMateriaPrima])
REFERENCES [dbo].[tblMateriaPrima] ([Id])
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima] CHECK CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblMateriaPrima]
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblTipoMateriaPrima] FOREIGN KEY([IdTipoMateriaPrima])
REFERENCES [dbo].[tblTipoMateriaPrima] ([Id])
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima] CHECK CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblTipoMateriaPrima]
GO
ALTER TABLE [dbo].[tblNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblNotaFiscal_tblTipoNotaFiscal] FOREIGN KEY([IdTipoNota])
REFERENCES [dbo].[tblTipoNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblNotaFiscal] CHECK CONSTRAINT [FK_tblNotaFiscal_tblTipoNotaFiscal]
GO
ALTER TABLE [dbo].[tblOrcamento]  WITH CHECK ADD  CONSTRAINT [FK_tblOrcamento_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblOrcamento] CHECK CONSTRAINT [FK_tblOrcamento_tblCliente]
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblPedido_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblPedido] CHECK CONSTRAINT [FK_tblPedido_tblCliente]
GO
ALTER TABLE [dbo].[tblProduto]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_tblFornecedor] FOREIGN KEY([IdFornecedor])
REFERENCES [dbo].[tblFornecedor] ([Id])
GO
ALTER TABLE [dbo].[tblProduto] CHECK CONSTRAINT [FK_tblProduto_tblFornecedor]
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
ALTER TABLE [dbo].[tblTelefone_TipoTelefone]  WITH CHECK ADD  CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone] CHECK CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTelefone]
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone]  WITH CHECK ADD  CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTipoTelefone] FOREIGN KEY([IdTipoTelefone])
REFERENCES [dbo].[tblTipoTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone] CHECK CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTipoTelefone]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entende-se Materia Prima, todos os itens que compoem o produto. Como Chapa de Papelão, tintas, grampos, Cola, Facas, Clichês etc...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProduto_MateriaPrima', @level2type=N'COLUMN',@level2name=N'IdMateriaPrima'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kg, Lts, Fardo etc...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblUnidades', @level2type=N'COLUMN',@level2name=N'Descricao'
GO
USE [master]
GO
ALTER DATABASE [Cartonagem] SET  READ_WRITE 
GO
