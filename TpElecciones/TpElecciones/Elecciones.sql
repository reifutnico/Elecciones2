USE [master]
GO
/****** Object:  Database [Elecciones]    Script Date: 30/7/2023 19:06:28 ******/
CREATE DATABASE [Elecciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Elecciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Elecciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Elecciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Elecciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Elecciones] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Elecciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Elecciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Elecciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Elecciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Elecciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Elecciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [Elecciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Elecciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Elecciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Elecciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Elecciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Elecciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Elecciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Elecciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Elecciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Elecciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Elecciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Elecciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Elecciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Elecciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Elecciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Elecciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Elecciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Elecciones] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Elecciones] SET  MULTI_USER 
GO
ALTER DATABASE [Elecciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Elecciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Elecciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Elecciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Elecciones] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Elecciones] SET QUERY_STORE = OFF
GO
USE [Elecciones]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 30/7/2023 19:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] IDENTITY(1,1) NOT NULL,
	[IdPartido] [int] NOT NULL,
	[Apellido] [nchar](50) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [nchar](50) NOT NULL,
	[Postulacion] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 30/7/2023 19:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Logo] [nvarchar](4000) NOT NULL,
	[SitioWeb] [nvarchar](4000) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[IdPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 1, N'Bermejo', N'Adolfo', CAST(N'1971-08-06' AS Date), N'adolfo bermejo - FPT.png', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (5, 1, N'Arricau', N'Carolina', CAST(N'1982-07-01' AS Date), N'carolina arricau - FPT.png', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (6, 1, N'Recalde', N'Mariano', CAST(N'1968-09-08' AS Date), N'mariano recalde - FPT.png', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (7, 1, N'Sapag', N'Silvia', CAST(N'1963-05-25' AS Date), N'silvia sapag - FPT.jpg', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (8, 2, N'Alfaro', N'Gustavo', CAST(N'1962-08-14' AS Date), N'gustavo alfaro - JxC.png', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (10, 2, N'Ruso', N'Miguel Angel', CAST(N'1956-04-09' AS Date), N'miguel angel russo - JxC.png', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (11, 2, N'Alvarez Rivero', N'Carmen', CAST(N'1978-06-26' AS Date), N'carmen alvarez rivero - JxC.jpg', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (13, 2, N'Scarpin', N'Dionisio', CAST(N'1967-04-07' AS Date), N'dionisio scarpin - JxC.jpg', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (15, 3, N'Vanini', N'Estafania', CAST(N'1990-06-21' AS Date), N'estefania banini - PL.jpg', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (16, 3, N'Bedoya', N'Julian', CAST(N'1984-02-23' AS Date), N'julian bedoya - PL.jpg', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (17, 3, N'Ameal', N'Jorge', CAST(N'1948-10-19' AS Date), N'Jorge Ameal - Pl.png', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (18, 3, N'Demichelis', N'Martin', CAST(N'1980-12-20' AS Date), N'Martin Demichelis - PL.png', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (20, 4, N'Palermo', N'Martin', CAST(N'1973-11-07' AS Date), N'Martin Palermo - BOCA.jpg', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (21, 4, N'Rodriguez', N'Yamila', CAST(N'1998-01-24' AS Date), N'yamila rodriguez - BOCA.png', N'Diputado')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (22, 4, N'Kleiman', N'Axel', CAST(N'1969-09-27' AS Date), N'Axel Kleiman - BOCA.jpg', N'Senador')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (24, 4, N'Riquelme', N'Juan Roman', CAST(N'1978-06-24' AS Date), N'Juan Roman Riquelme - BOCA.jpg', N'Senador')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
SET IDENTITY_INSERT [dbo].[Partido] ON 

INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Frente de todos', N'frente de todos logo.png', N'https://www.frentedetodos.org/', CAST(N'2019-06-12' AS Date), 2, 2)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Juntos por el Cambio', N'Juntos por el Cambio logo.png', N'https://jxc.com.ar/', CAST(N'2019-06-12' AS Date), 2, 2)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'partido liberal', N'partido liberal logo.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-07-14' AS Date), 2, 2)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (4, N'boca', N'boca logo.png', N'https://www.bocajuniors.com.ar/', CAST(N'1905-04-03' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[Partido] OFF
GO
USE [master]
GO
ALTER DATABASE [Elecciones] SET  READ_WRITE 
GO
