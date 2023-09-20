USE [master]
GO
/****** Object:  Database [InstrumentoVALE]    Script Date: 20/09/2023 14:54:08 ******/
CREATE DATABASE [InstrumentoVALE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IntrumentoVALE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\InstrumentoVALE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IntrumentoVALE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\InstrumentoVALE_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [InstrumentoVALE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InstrumentoVALE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InstrumentoVALE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET ARITHABORT OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InstrumentoVALE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InstrumentoVALE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InstrumentoVALE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InstrumentoVALE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET RECOVERY FULL 
GO
ALTER DATABASE [InstrumentoVALE] SET  MULTI_USER 
GO
ALTER DATABASE [InstrumentoVALE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InstrumentoVALE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InstrumentoVALE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InstrumentoVALE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InstrumentoVALE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InstrumentoVALE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'InstrumentoVALE', N'ON'
GO
ALTER DATABASE [InstrumentoVALE] SET QUERY_STORE = OFF
GO
USE [InstrumentoVALE]
GO
/****** Object:  Table [dbo].[Acciones]    Script Date: 20/09/2023 14:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acciones](
	[IdAccion] [int] NOT NULL,
	[NombreAccion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Acciones] PRIMARY KEY CLUSTERED 
(
	[IdAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condiciones]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condiciones](
	[IdCondicion] [int] NOT NULL,
	[NombreCondicion] [nvarchar](200) NOT NULL,
	[IdRango] [int] NOT NULL,
	[IdSeccion] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesPerinatalesVale] PRIMARY KEY CLUSTERED 
(
	[IdCondicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionesEncuestado]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesEncuestado](
	[IdCondicionEncuestado] [int] NOT NULL,
	[NombreCondicionEncuestado] [nvarchar](50) NOT NULL,
	[DescripcionCondicion] [nvarchar](500) NOT NULL,
	[IdAccion] [int] NOT NULL,
	[Puntaje] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesEncuestado] PRIMARY KEY CLUSTERED 
(
	[IdCondicionEncuestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionesEstructurales]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesEstructurales](
	[IdCondicionEstructural] [int] NOT NULL,
	[NombreCondicion] [nvarchar](50) NOT NULL,
	[IdRango] [int] NOT NULL,
	[IdSeccion] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesEstructurales] PRIMARY KEY CLUSTERED 
(
	[IdCondicionEstructural] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionesEstructuralesIntegridades]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesEstructuralesIntegridades](
	[IdIntegridad] [int] NOT NULL,
	[IdCondicionEstructural] [int] NOT NULL,
	[IdInstrumentoVale] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesEstructuralesIntegridades] PRIMARY KEY CLUSTERED 
(
	[IdIntegridad] ASC,
	[IdCondicionEstructural] ASC,
	[IdInstrumentoVale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionesEstructuralesPresencias]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesEstructuralesPresencias](
	[IdPresencia] [int] NOT NULL,
	[IdCondicionEstructural] [int] NOT NULL,
	[IdInstrumentoVale] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesEstructuralesPresencias] PRIMARY KEY CLUSTERED 
(
	[IdPresencia] ASC,
	[IdCondicionEstructural] ASC,
	[IdInstrumentoVale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel](
	[IdEncuestaIndiceDeBarthel] [int] NOT NULL,
	[IdAccion] [int] NOT NULL,
	[IdCondicionEncuestado] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesRespuestasEncuestasIndiceDeBarthel] PRIMARY KEY CLUSTERED 
(
	[IdEncuestaIndiceDeBarthel] ASC,
	[IdAccion] ASC,
	[IdCondicionEncuestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encuestados]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encuestados](
	[IdEncuestado] [int] NOT NULL,
	[NombreEncuestado] [nvarchar](50) NOT NULL,
	[Genero] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Encuestados] PRIMARY KEY CLUSTERED 
(
	[IdEncuestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EncuestasIndiceDeBarthel]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncuestasIndiceDeBarthel](
	[IdEncuestaIndiceDeBarthel] [int] NOT NULL,
	[IdEncuestado] [int] NOT NULL,
	[Puntuacion] [int] NULL,
 CONSTRAINT [PK_EncuestasIndiceDeBarthel] PRIMARY KEY CLUSTERED 
(
	[IdEncuestaIndiceDeBarthel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EscalaLawtonBrody](
	[IdEscalaLawtonBrody] [int] NOT NULL,
	[IdEncuestado] [int] NOT NULL,
 CONSTRAINT [PK_EscalaLawtonBrody_1] PRIMARY KEY CLUSTERED 
(
	[IdEscalaLawtonBrody] ASC,
	[IdEncuestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FamiliasApgarFamiliar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamiliasApgarFamiliar](
	[IdApgarFamiliar] [int] NOT NULL,
	[IdFamiliaApgarFamiliar] [int] NOT NULL,
	[IdPacienteApgarFamiliar] [int] NOT NULL,
 CONSTRAINT [PK_FamiliasApgarFamiliar_1] PRIMARY KEY CLUSTERED 
(
	[IdApgarFamiliar] ASC,
	[IdFamiliaApgarFamiliar] ASC,
	[IdPacienteApgarFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstrumentoApgarFamiliar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstrumentoApgarFamiliar](
	[IdApgarFamiliar] [int] NOT NULL,
	[NombreApgarFamiliar] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_InstrumentoApgarFamiliar] PRIMARY KEY CLUSTERED 
(
	[IdApgarFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstrumentoVale]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstrumentoVale](
	[IdInstrumentoVale] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
 CONSTRAINT [PK_InstrumentoVale] PRIMARY KEY CLUSTERED 
(
	[IdInstrumentoVale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Integridades]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integridades](
	[IdIntegridad] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Integridades] PRIMARY KEY CLUSTERED 
(
	[IdIntegridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsEscalaLawtonBrody](
	[IdItemEscalaLawtonBrody] [int] NOT NULL,
	[NombreItemEscalaLawtonBrody] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ItemsEscalaLawtonBrody] PRIMARY KEY CLUSTERED 
(
	[IdItemEscalaLawtonBrody] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsValoracionReportes]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsValoracionReportes](
	[IdItemValoracionReporte] [int] NOT NULL,
	[NombreItemValoracion] [nvarchar](200) NOT NULL,
	[IdSeccion] [int] NOT NULL,
	[IdRango] [int] NOT NULL,
	[ApoyoObservacion] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ItemsValoracionReportes] PRIMARY KEY CLUSTERED 
(
	[IdItemValoracionReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsValoracionReportesRespuestasValoracionReportes]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes](
	[IdInstrumentoVale] [int] NOT NULL,
	[IdItemsValoracionReporte] [int] NOT NULL,
	[IdRespuestaValoracionReporte] [int] NOT NULL,
 CONSTRAINT [PK_ItemsValoracionReportesRespuestasValoracionReportes] PRIMARY KEY CLUSTERED 
(
	[IdInstrumentoVale] ASC,
	[IdItemsValoracionReporte] ASC,
	[IdRespuestaValoracionReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsValoracionReportesRespuestasVestibular]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular](
	[IdInstrumentoVale] [int] NOT NULL,
	[IdItemVestibularReporte] [int] NOT NULL,
	[IdRespuestaVestibular] [int] NOT NULL,
 CONSTRAINT [PK_ItemsValoracionReportesRespuestasVestibular] PRIMARY KEY CLUSTERED 
(
	[IdInstrumentoVale] ASC,
	[IdItemVestibularReporte] ASC,
	[IdRespuestaVestibular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemsVestibularesReportes]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsVestibularesReportes](
	[IdItemVestibularReporte] [int] NOT NULL,
	[NombreItemVestibular] [nvarchar](200) NOT NULL,
	[IdSeccion] [int] NOT NULL,
	[IdRango] [int] NOT NULL,
	[ApoyoObservacionVestibular] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ItemsVestibularesReportes] PRIMARY KEY CLUSTERED 
(
	[IdItemVestibularReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[IdPaciente] [int] NOT NULL,
	[NombrePaciente] [nvarchar](50) NOT NULL,
	[NombreAcudiente] [nvarchar](50) NOT NULL,
	[SemanasGestacion] [int] NULL,
	[FechaNacimiento] [date] NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesApgarFamiliar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesApgarFamiliar](
	[IdPacienteApgarFamiliar] [int] NOT NULL,
	[NomprePacienteApgarFamiliar] [nvarchar](100) NOT NULL,
	[RolFamiliar] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PacientesApgarFamiliar] PRIMARY KEY CLUSTERED 
(
	[IdPacienteApgarFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonasEncuestadas]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonasEncuestadas](
	[IdEncuestado] [int] NOT NULL,
	[NombreEncuestado] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PersonasEncuestadas] PRIMARY KEY CLUSTERED 
(
	[IdEncuestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntaFuncionApgar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntaFuncionApgar](
	[IdPreguntaFuncion] [int] NOT NULL,
	[NombrePreguntaFuncion] [nvarchar](200) NOT NULL,
	[Componente] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PreguntaFuncionApgar] PRIMARY KEY CLUSTERED 
(
	[IdPreguntaFuncion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntaFuncionApgarResultados]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntaFuncionApgarResultados](
	[IdApgarFamiliar] [int] NOT NULL,
	[IdPreguntaFuncionApgar] [int] NOT NULL,
	[IdResultadoApgarFamiliar] [int] NOT NULL,
 CONSTRAINT [PK_PreguntaFuncionApgarResultados] PRIMARY KEY CLUSTERED 
(
	[IdApgarFamiliar] ASC,
	[IdPreguntaFuncionApgar] ASC,
	[IdResultadoApgarFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntasEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntasEscalaLawtonBrody](
	[IdPreguntasEscalaLawtonBrody] [int] NOT NULL,
	[NombrePreguntasEscalaLawtonBrody] [nvarchar](50) NOT NULL,
	[IdItemEscalaLawtonBrody] [int] NOT NULL,
 CONSTRAINT [PK_PreguntasEscalaLawtonBrody] PRIMARY KEY CLUSTERED 
(
	[IdPreguntasEscalaLawtonBrody] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntasRespuestasEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntasRespuestasEscalaLawtonBrody](
	[IdEscalaLawtonBrody] [int] NOT NULL,
	[IdPreguntaEscalaLawtonBrody] [int] NOT NULL,
	[IdRespuestaEscalaLawtonBrody] [int] NOT NULL,
 CONSTRAINT [PK_PreguntasRespuestasEscalaLawtonBrody] PRIMARY KEY CLUSTERED 
(
	[IdEscalaLawtonBrody] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presencias]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presencias](
	[IdPresencia] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Presencias] PRIMARY KEY CLUSTERED 
(
	[IdPresencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangoEdades]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangoEdades](
	[IdRango] [int] NOT NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_RangoEdad] PRIMARY KEY CLUSTERED 
(
	[IdRango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasEscalaLawtonBrody](
	[IdRespuestaEscalaLawtonBrody] [int] NOT NULL,
	[NombreRespuestaEscalaLawtonBrody] [nvarchar](50) NOT NULL,
	[Puntaje] [int] NULL,
 CONSTRAINT [PK_RespuestasEscalaLawtonBrody] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaEscalaLawtonBrody] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasVale]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasVale](
	[IdRespuestaCondicion] [int] NOT NULL,
	[NombreRespuestaCondicion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RespuestasVale] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaCondicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasValoracionReportes]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasValoracionReportes](
	[IdRespuestaValoracionReportes] [int] NOT NULL,
	[NombreRespuestaValoracionReporte] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RespuestasValoracionReportes] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaValoracionReportes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasVestibular]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasVestibular](
	[IdRespuestaVestibular] [int] NOT NULL,
	[NombreRespuestaVestibular] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RespuestasVestibular] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaVestibular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadosApgarFamiliar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadosApgarFamiliar](
	[IdResultadoApgarFamiliar] [int] NOT NULL,
	[NombreResultadosApgar] [nchar](10) NOT NULL,
	[Puntaje] [int] NOT NULL,
 CONSTRAINT [PK_ResultadosApgarFamiliar_1] PRIMARY KEY CLUSTERED 
(
	[IdResultadoApgarFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RiesgosGeneralesCondicionesRespuestasVale]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale](
	[IdRespuestaVale] [int] NOT NULL,
	[IdCondicion] [int] NOT NULL,
	[IdInstrumentoVale] [int] NOT NULL,
 CONSTRAINT [PK_CondicionesPerinatalesRespuestasVale] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaVale] ASC,
	[IdCondicion] ASC,
	[IdInstrumentoVale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secciones]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secciones](
	[IdSección] [int] NOT NULL,
	[NombreSeccion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Secciones] PRIMARY KEY CLUSTERED 
(
	[IdSección] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (1, N'Comer')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (2, N'Bañarse')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (3, N'Vestirse')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (4, N'Aseo Personal')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (5, N'Deposicion')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (6, N'Miccion')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (7, N'Uso del Retrete')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (8, N'Trasladarse Silla/Cama')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (9, N'Desplazamiento')
GO
INSERT [dbo].[Acciones] ([IdAccion], [NombreAccion]) VALUES (10, N'Vestirse')
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (17, N'Bajo peso al nacer (menor de 1500 gr)', 11, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (18, N'Nació antes de las 30 semanas de
gestación (Prematuro extremo)
', 11, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (19, N'Estancia superior a 30 días en la unidad
de cuidados intensivos o intermedios
neonatales.', 11, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (20, N'¿Antes, durante o poco después del
nacimiento hubo alguna complicación?
(escribir la descripción del padre o
acudiente): ', 12, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (21, N'¿El niño / niña ha sido diagnosticado(a)
con alguna condición de salud? ¿cuál
diagnóstico? (escribir el reporte del padre
o acudiente)', 12, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (22, N'¿Hay alguna condición de riesgo social
(maltrato, abandono, otras) en la que se
encuentre el niño? (escribir el reporte del
padre o acudiente)
', 12, 13)
GO
INSERT [dbo].[Condiciones] ([IdCondicion], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (23, N'¿El niño presenta dificultades en el
aprendizaje de la lectura y la escritura o
en su desempeño escolar? (escribir el
reporte del padre o acudiente)', 12, 13)
GO
INSERT [dbo].[CondicionesEncuestado] ([IdCondicionEncuestado], [NombreCondicionEncuestado], [DescripcionCondicion], [IdAccion], [Puntaje]) VALUES (61, N'Independiente', N'Independiente. Capaz de comer por sí solo en un tiempo razonable. La  comida puede ser cocinada y servida por otra persona', 1, 10)
GO
INSERT [dbo].[CondicionesEncuestado] ([IdCondicionEncuestado], [NombreCondicionEncuestado], [DescripcionCondicion], [IdAccion], [Puntaje]) VALUES (62, N'Dependiente', N'Necesita algún tipo de ayuda o supervisión', 2, 0)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (24, N'Orejas
', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (25, N'Labios
', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (26, N'Lengua', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (27, N'Nariz', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (28, N'Paladar', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (29, N'Ojos
', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (30, N'Dientes (acorde a la edad)
', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (31, N'Cuello', 12, 14)
GO
INSERT [dbo].[CondicionesEstructurales] ([IdCondicionEstructural], [NombreCondicion], [IdRango], [IdSeccion]) VALUES (32, N'Hombros', 12, 14)
GO
INSERT [dbo].[CondicionesEstructuralesIntegridades] ([IdIntegridad], [IdCondicionEstructural], [IdInstrumentoVale]) VALUES (33, 26, 37)
GO
INSERT [dbo].[CondicionesEstructuralesIntegridades] ([IdIntegridad], [IdCondicionEstructural], [IdInstrumentoVale]) VALUES (34, 24, 37)
GO
INSERT [dbo].[CondicionesEstructuralesPresencias] ([IdPresencia], [IdCondicionEstructural], [IdInstrumentoVale]) VALUES (39, 26, 37)
GO
INSERT [dbo].[CondicionesEstructuralesPresencias] ([IdPresencia], [IdCondicionEstructural], [IdInstrumentoVale]) VALUES (40, 24, 38)
GO
INSERT [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel] ([IdEncuestaIndiceDeBarthel], [IdAccion], [IdCondicionEncuestado]) VALUES (62, 2, 62)
GO
INSERT [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel] ([IdEncuestaIndiceDeBarthel], [IdAccion], [IdCondicionEncuestado]) VALUES (67, 1, 61)
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (63, N'Juan Trespalacios', N'M')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (64, N'Dubier Castaño', N'M')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (65, N'Alejandra Medina', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (66, N'Daniel perez', N'M')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (67, N'Mariana Pajon', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (68, N'Juanita Velz', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (69, N'Carolina Vasquez', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (70, N'Dayana Gonzalez', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (71, N'Dirina Gonzalez', N'F')
GO
INSERT [dbo].[Encuestados] ([IdEncuestado], [NombreEncuestado], [Genero]) VALUES (72, N'Juan Perez', N'M')
GO
INSERT [dbo].[EncuestasIndiceDeBarthel] ([IdEncuestaIndiceDeBarthel], [IdEncuestado], [Puntuacion]) VALUES (62, 65, NULL)
GO
INSERT [dbo].[EncuestasIndiceDeBarthel] ([IdEncuestaIndiceDeBarthel], [IdEncuestado], [Puntuacion]) VALUES (67, 66, NULL)
GO
INSERT [dbo].[EscalaLawtonBrody] ([IdEscalaLawtonBrody], [IdEncuestado]) VALUES (76, 63)
GO
INSERT [dbo].[EscalaLawtonBrody] ([IdEscalaLawtonBrody], [IdEncuestado]) VALUES (77, 64)
GO
INSERT [dbo].[FamiliasApgarFamiliar] ([IdApgarFamiliar], [IdFamiliaApgarFamiliar], [IdPacienteApgarFamiliar]) VALUES (55, 57, 53)
GO
INSERT [dbo].[FamiliasApgarFamiliar] ([IdApgarFamiliar], [IdFamiliaApgarFamiliar], [IdPacienteApgarFamiliar]) VALUES (56, 58, 54)
GO
INSERT [dbo].[InstrumentoApgarFamiliar] ([IdApgarFamiliar], [NombreApgarFamiliar]) VALUES (55, N'Apgar')
GO
INSERT [dbo].[InstrumentoApgarFamiliar] ([IdApgarFamiliar], [NombreApgarFamiliar]) VALUES (56, N'Apgar')
GO
INSERT [dbo].[InstrumentoVale] ([IdInstrumentoVale], [IdPaciente]) VALUES (37, 35)
GO
INSERT [dbo].[InstrumentoVale] ([IdInstrumentoVale], [IdPaciente]) VALUES (38, 36)
GO
INSERT [dbo].[Integridades] ([IdIntegridad], [Nombre]) VALUES (33, N'SI')
GO
INSERT [dbo].[Integridades] ([IdIntegridad], [Nombre]) VALUES (34, N'NO')
GO
INSERT [dbo].[ItemsEscalaLawtonBrody] ([IdItemEscalaLawtonBrody], [NombreItemEscalaLawtonBrody]) VALUES (72, N'Utiliza el teléfono por iniciativa propia')
GO
INSERT [dbo].[ItemsEscalaLawtonBrody] ([IdItemEscalaLawtonBrody], [NombreItemEscalaLawtonBrody]) VALUES (74, N'Realiza todas las compras necesarias independientemente')
GO
INSERT [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte], [NombreItemValoracion], [IdSeccion], [IdRango], [ApoyoObservacion]) VALUES (40, N'Cuando en casa se cierra una
puerta, se cae un objeto o se
escucha un ruido muy fuerte ¿el
bebé se mueve, se queda quieto
o llora?', 15, 11, N' El evaluador produce un ruido
fuerte fuera del campo visual,
pero cerca del bebé y observa
que emite alguna respuesta
como: sobresalto, llorar,
interrumpir actividad
')
GO
INSERT [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte], [NombreItemValoracion], [IdSeccion], [IdRango], [ApoyoObservacion]) VALUES (41, N'¿Usted siente diferencias en el
llanto del bebé dependiendo si es
por hambre, por sueño, porque
está mojado, o de mal humor?', 15, 11, N'El evaluador observa (si tiene
oportunidad) que el bebé emite
llantos diferenciados según
necesidades y situaciones
')
GO
INSERT [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte], [NombreItemValoracion], [IdSeccion], [IdRango], [ApoyoObservacion]) VALUES (42, N' ¿El bebé succiona con fuerza el
alimento u otros objetos?
', 15, 11, N'El evaluador observa la
succión mientras el bebé se
alimenta
')
GO
INSERT [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte], [NombreItemValoracion], [IdSeccion], [IdRango], [ApoyoObservacion]) VALUES (43, N'Cuando le habla al bebé,
¿él/ella la/lo mira?
', 15, 11, N'El evaluador observa que el
bebé mira al interlocutor cuando
este le habla ')
GO
INSERT [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte], [NombreItemValoracion], [IdSeccion], [IdRango], [ApoyoObservacion]) VALUES (44, N'Cuando se escucha una puerta,
timbre u otro sonido familiar ¿el
bebé voltea la cabeza buscando
el sonido?', 15, 11, N'El evaluador aplaude fuerte
fuera del campo visual pero
cerca del bebé y observa que el
bebé ubica la fuente sonora')
GO
INSERT [dbo].[ItemsValoracionReportesRespuestasValoracionReportes] ([IdInstrumentoVale], [IdItemsValoracionReporte], [IdRespuestaValoracionReporte]) VALUES (37, 40, 45)
GO
INSERT [dbo].[ItemsValoracionReportesRespuestasValoracionReportes] ([IdInstrumentoVale], [IdItemsValoracionReporte], [IdRespuestaValoracionReporte]) VALUES (38, 41, 46)
GO
INSERT [dbo].[ItemsValoracionReportesRespuestasVestibular] ([IdInstrumentoVale], [IdItemVestibularReporte], [IdRespuestaVestibular]) VALUES (37, 47, 50)
GO
INSERT [dbo].[ItemsValoracionReportesRespuestasVestibular] ([IdInstrumentoVale], [IdItemVestibularReporte], [IdRespuestaVestibular]) VALUES (38, 49, 51)
GO
INSERT [dbo].[ItemsVestibularesReportes] ([IdItemVestibularReporte], [NombreItemVestibular], [IdSeccion], [IdRango], [ApoyoObservacionVestibular]) VALUES (47, N'El niño/a disfruta actividades de
movimientos del cuerpo como
columpiarse, girar, dar botes, saltar?', 48, 12, N' El evaluador le solicita al
niño/a que dé una vuelta
sobre su propio eje y observa
que mantiene el equilibrio')
GO
INSERT [dbo].[ItemsVestibularesReportes] ([IdItemVestibularReporte], [NombreItemVestibular], [IdSeccion], [IdRango], [ApoyoObservacionVestibular]) VALUES (49, N'¿El niño/a disfruta dar algunas
vueltas sobre sí mismo, sin caerse?
', 48, 12, N': El evaluador le pide al
niño/a que dé tres vueltas
sobre su propio eje, y observa
que mantiene el equilibrio al
detenerse.
')
GO
INSERT [dbo].[Pacientes] ([IdPaciente], [NombrePaciente], [NombreAcudiente], [SemanasGestacion], [FechaNacimiento]) VALUES (35, N'Yesid Murillo', N'Isabella Taborda', 25, CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Pacientes] ([IdPaciente], [NombrePaciente], [NombreAcudiente], [SemanasGestacion], [FechaNacimiento]) VALUES (36, N'Gustavo Lopera', N'Jennifer Parra', 30, CAST(N'2020-08-20' AS Date))
GO
INSERT [dbo].[PacientesApgarFamiliar] ([IdPacienteApgarFamiliar], [NomprePacienteApgarFamiliar], [RolFamiliar]) VALUES (53, N'Isabella Taborda Osorio', N'Hija')
GO
INSERT [dbo].[PacientesApgarFamiliar] ([IdPacienteApgarFamiliar], [NomprePacienteApgarFamiliar], [RolFamiliar]) VALUES (54, N'Yeison Murillo', N'Hijo')
GO
INSERT [dbo].[PacientesApgarFamiliar] ([IdPacienteApgarFamiliar], [NomprePacienteApgarFamiliar], [RolFamiliar]) VALUES (55, N'Daniel Quintero', N'Hijo')
GO
INSERT [dbo].[PersonasEncuestadas] ([IdEncuestado], [NombreEncuestado]) VALUES (65, N'Hernando Diaz')
GO
INSERT [dbo].[PersonasEncuestadas] ([IdEncuestado], [NombreEncuestado]) VALUES (66, N'Estiven Atehortua')
GO
INSERT [dbo].[PreguntaFuncionApgar] ([IdPreguntaFuncion], [NombrePreguntaFuncion], [Componente]) VALUES (57, N'¿Conversan entre ustedes los problemas
que tienen en casa? ', N'Participación')
GO
INSERT [dbo].[PreguntaFuncionApgar] ([IdPreguntaFuncion], [NombrePreguntaFuncion], [Componente]) VALUES (58, N'Está satisfecho con la ayuda que recibe de
su familia cuando tiene un problema? ', N'Adaptación')
GO
INSERT [dbo].[PreguntaFuncionApgarResultados] ([IdApgarFamiliar], [IdPreguntaFuncionApgar], [IdResultadoApgarFamiliar]) VALUES (55, 58, 60)
GO
INSERT [dbo].[PreguntaFuncionApgarResultados] ([IdApgarFamiliar], [IdPreguntaFuncionApgar], [IdResultadoApgarFamiliar]) VALUES (56, 57, 59)
GO
INSERT [dbo].[PreguntasEscalaLawtonBrody] ([IdPreguntasEscalaLawtonBrody], [NombrePreguntasEscalaLawtonBrody], [IdItemEscalaLawtonBrody]) VALUES (71, N'CAPACIDAD PARA USAR EL TELÉFONO', 72)
GO
INSERT [dbo].[PreguntasEscalaLawtonBrody] ([IdPreguntasEscalaLawtonBrody], [NombrePreguntasEscalaLawtonBrody], [IdItemEscalaLawtonBrody]) VALUES (73, N'HACER COMPRAS', 74)
GO
INSERT [dbo].[PreguntasRespuestasEscalaLawtonBrody] ([IdEscalaLawtonBrody], [IdPreguntaEscalaLawtonBrody], [IdRespuestaEscalaLawtonBrody]) VALUES (76, 71, 74)
GO
INSERT [dbo].[PreguntasRespuestasEscalaLawtonBrody] ([IdEscalaLawtonBrody], [IdPreguntaEscalaLawtonBrody], [IdRespuestaEscalaLawtonBrody]) VALUES (77, 73, 75)
GO
INSERT [dbo].[Presencias] ([IdPresencia], [Nombre]) VALUES (39, N'SI')
GO
INSERT [dbo].[Presencias] ([IdPresencia], [Nombre]) VALUES (40, N'NO')
GO
INSERT [dbo].[RangoEdades] ([IdRango], [Edad]) VALUES (11, 0)
GO
INSERT [dbo].[RangoEdades] ([IdRango], [Edad]) VALUES (12, 3)
GO
INSERT [dbo].[RespuestasEscalaLawtonBrody] ([IdRespuestaEscalaLawtonBrody], [NombreRespuestaEscalaLawtonBrody], [Puntaje]) VALUES (74, N'1', NULL)
GO
INSERT [dbo].[RespuestasEscalaLawtonBrody] ([IdRespuestaEscalaLawtonBrody], [NombreRespuestaEscalaLawtonBrody], [Puntaje]) VALUES (75, N'1', NULL)
GO
INSERT [dbo].[RespuestasVale] ([IdRespuestaCondicion], [NombreRespuestaCondicion]) VALUES (52, N'SI')
GO
INSERT [dbo].[RespuestasVale] ([IdRespuestaCondicion], [NombreRespuestaCondicion]) VALUES (53, N'NO')
GO
INSERT [dbo].[RespuestasValoracionReportes] ([IdRespuestaValoracionReportes], [NombreRespuestaValoracionReporte]) VALUES (45, N'SI')
GO
INSERT [dbo].[RespuestasValoracionReportes] ([IdRespuestaValoracionReportes], [NombreRespuestaValoracionReporte]) VALUES (46, N'NO')
GO
INSERT [dbo].[RespuestasVestibular] ([IdRespuestaVestibular], [NombreRespuestaVestibular]) VALUES (50, N'SI')
GO
INSERT [dbo].[RespuestasVestibular] ([IdRespuestaVestibular], [NombreRespuestaVestibular]) VALUES (51, N'NO')
GO
INSERT [dbo].[ResultadosApgarFamiliar] ([IdResultadoApgarFamiliar], [NombreResultadosApgar], [Puntaje]) VALUES (59, N'Nunca     ', 0)
GO
INSERT [dbo].[ResultadosApgarFamiliar] ([IdResultadoApgarFamiliar], [NombreResultadosApgar], [Puntaje]) VALUES (60, N'Casi Nunca', 1)
GO
INSERT [dbo].[RiesgosGeneralesCondicionesRespuestasVale] ([IdRespuestaVale], [IdCondicion], [IdInstrumentoVale]) VALUES (52, 17, 37)
GO
INSERT [dbo].[RiesgosGeneralesCondicionesRespuestasVale] ([IdRespuestaVale], [IdCondicion], [IdInstrumentoVale]) VALUES (53, 18, 38)
GO
INSERT [dbo].[Secciones] ([IdSección], [NombreSeccion]) VALUES (13, N'CONDICIONES PERINATALES Y
POSNATALES
')
GO
INSERT [dbo].[Secciones] ([IdSección], [NombreSeccion]) VALUES (14, N'CONDICIONES ESTRUCTURALES:')
GO
INSERT [dbo].[Secciones] ([IdSección], [NombreSeccion]) VALUES (15, N'ITEMS DE VALORACIÓN')
GO
INSERT [dbo].[Secciones] ([IdSección], [NombreSeccion]) VALUES (48, N'ITEMS DE VALORACIÓN VESTIBULAR')
GO
ALTER TABLE [dbo].[Condiciones]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesPerinatalesVale_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdades] ([IdRango])
GO
ALTER TABLE [dbo].[Condiciones] CHECK CONSTRAINT [FK_CondicionesPerinatalesVale_RangoEdad]
GO
ALTER TABLE [dbo].[Condiciones]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesPerinatalesVale_Secciones] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Secciones] ([IdSección])
GO
ALTER TABLE [dbo].[Condiciones] CHECK CONSTRAINT [FK_CondicionesPerinatalesVale_Secciones]
GO
ALTER TABLE [dbo].[CondicionesEncuestado]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEncuestado_Acciones] FOREIGN KEY([IdAccion])
REFERENCES [dbo].[Acciones] ([IdAccion])
GO
ALTER TABLE [dbo].[CondicionesEncuestado] CHECK CONSTRAINT [FK_CondicionesEncuestado_Acciones]
GO
ALTER TABLE [dbo].[CondicionesEstructurales]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructurales_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdades] ([IdRango])
GO
ALTER TABLE [dbo].[CondicionesEstructurales] CHECK CONSTRAINT [FK_CondicionesEstructurales_RangoEdad]
GO
ALTER TABLE [dbo].[CondicionesEstructurales]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructurales_Secciones] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Secciones] ([IdSección])
GO
ALTER TABLE [dbo].[CondicionesEstructurales] CHECK CONSTRAINT [FK_CondicionesEstructurales_Secciones]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesIntegridades_CondicionesEstructurales] FOREIGN KEY([IdCondicionEstructural])
REFERENCES [dbo].[CondicionesEstructurales] ([IdCondicionEstructural])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades] CHECK CONSTRAINT [FK_CondicionesEstructuralesIntegridades_CondicionesEstructurales]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesIntegridades_InstrumentoVale] FOREIGN KEY([IdInstrumentoVale])
REFERENCES [dbo].[InstrumentoVale] ([IdInstrumentoVale])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades] CHECK CONSTRAINT [FK_CondicionesEstructuralesIntegridades_InstrumentoVale]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesIntegridades_Integridades] FOREIGN KEY([IdIntegridad])
REFERENCES [dbo].[Integridades] ([IdIntegridad])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesIntegridades] CHECK CONSTRAINT [FK_CondicionesEstructuralesIntegridades_Integridades]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesPresencias_CondicionesEstructurales] FOREIGN KEY([IdCondicionEstructural])
REFERENCES [dbo].[CondicionesEstructurales] ([IdCondicionEstructural])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias] CHECK CONSTRAINT [FK_CondicionesEstructuralesPresencias_CondicionesEstructurales]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesPresencias_InstrumentoVale] FOREIGN KEY([IdInstrumentoVale])
REFERENCES [dbo].[InstrumentoVale] ([IdInstrumentoVale])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias] CHECK CONSTRAINT [FK_CondicionesEstructuralesPresencias_InstrumentoVale]
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesEstructuralesPresencias_Presencias] FOREIGN KEY([IdPresencia])
REFERENCES [dbo].[Presencias] ([IdPresencia])
GO
ALTER TABLE [dbo].[CondicionesEstructuralesPresencias] CHECK CONSTRAINT [FK_CondicionesEstructuralesPresencias_Presencias]
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_Acciones] FOREIGN KEY([IdAccion])
REFERENCES [dbo].[Acciones] ([IdAccion])
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel] CHECK CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_Acciones]
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_CondicionesEncuestado1] FOREIGN KEY([IdCondicionEncuestado])
REFERENCES [dbo].[CondicionesEncuestado] ([IdCondicionEncuestado])
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel] CHECK CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_CondicionesEncuestado1]
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_EncuestasIndiceDeBarthel1] FOREIGN KEY([IdEncuestaIndiceDeBarthel])
REFERENCES [dbo].[EncuestasIndiceDeBarthel] ([IdEncuestaIndiceDeBarthel])
GO
ALTER TABLE [dbo].[CondicionesRespuestasEncuestasIndiceDeBarthel] CHECK CONSTRAINT [FK_CondicionesRespuestasEncuestasIndiceDeBarthel_EncuestasIndiceDeBarthel1]
GO
ALTER TABLE [dbo].[EncuestasIndiceDeBarthel]  WITH CHECK ADD  CONSTRAINT [FK_EncuestasIndiceDeBarthel_PersonasEncuestadas] FOREIGN KEY([IdEncuestado])
REFERENCES [dbo].[PersonasEncuestadas] ([IdEncuestado])
GO
ALTER TABLE [dbo].[EncuestasIndiceDeBarthel] CHECK CONSTRAINT [FK_EncuestasIndiceDeBarthel_PersonasEncuestadas]
GO
ALTER TABLE [dbo].[EscalaLawtonBrody]  WITH CHECK ADD  CONSTRAINT [FK_EscalaLawtonBrody_Encuestados] FOREIGN KEY([IdEncuestado])
REFERENCES [dbo].[Encuestados] ([IdEncuestado])
GO
ALTER TABLE [dbo].[EscalaLawtonBrody] CHECK CONSTRAINT [FK_EscalaLawtonBrody_Encuestados]
GO
ALTER TABLE [dbo].[EscalaLawtonBrody]  WITH CHECK ADD  CONSTRAINT [FK_EscalaLawtonBrody_PreguntasRespuestasEscalaLawtonBrody] FOREIGN KEY([IdEscalaLawtonBrody])
REFERENCES [dbo].[PreguntasRespuestasEscalaLawtonBrody] ([IdEscalaLawtonBrody])
GO
ALTER TABLE [dbo].[EscalaLawtonBrody] CHECK CONSTRAINT [FK_EscalaLawtonBrody_PreguntasRespuestasEscalaLawtonBrody]
GO
ALTER TABLE [dbo].[FamiliasApgarFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_FamiliasApgarFamiliar_InstrumentoApgarFamiliar] FOREIGN KEY([IdApgarFamiliar])
REFERENCES [dbo].[InstrumentoApgarFamiliar] ([IdApgarFamiliar])
GO
ALTER TABLE [dbo].[FamiliasApgarFamiliar] CHECK CONSTRAINT [FK_FamiliasApgarFamiliar_InstrumentoApgarFamiliar]
GO
ALTER TABLE [dbo].[FamiliasApgarFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_FamiliasApgarFamiliar_PacientesApgarFamiliar] FOREIGN KEY([IdPacienteApgarFamiliar])
REFERENCES [dbo].[PacientesApgarFamiliar] ([IdPacienteApgarFamiliar])
GO
ALTER TABLE [dbo].[FamiliasApgarFamiliar] CHECK CONSTRAINT [FK_FamiliasApgarFamiliar_PacientesApgarFamiliar]
GO
ALTER TABLE [dbo].[InstrumentoVale]  WITH CHECK ADD  CONSTRAINT [FK_InstrumentoVale_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Pacientes] ([IdPaciente])
GO
ALTER TABLE [dbo].[InstrumentoVale] CHECK CONSTRAINT [FK_InstrumentoVale_Paciente]
GO
ALTER TABLE [dbo].[ItemsValoracionReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportes_RangoEdades] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdades] ([IdRango])
GO
ALTER TABLE [dbo].[ItemsValoracionReportes] CHECK CONSTRAINT [FK_ItemsValoracionReportes_RangoEdades]
GO
ALTER TABLE [dbo].[ItemsValoracionReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportes_Secciones] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Secciones] ([IdSección])
GO
ALTER TABLE [dbo].[ItemsValoracionReportes] CHECK CONSTRAINT [FK_ItemsValoracionReportes_Secciones]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_InstrumentoVale] FOREIGN KEY([IdInstrumentoVale])
REFERENCES [dbo].[InstrumentoVale] ([IdInstrumentoVale])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_InstrumentoVale]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_ItemsValoracionReportes] FOREIGN KEY([IdItemsValoracionReporte])
REFERENCES [dbo].[ItemsValoracionReportes] ([IdItemValoracionReporte])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_ItemsValoracionReportes]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_RespuestasValoracionReportes] FOREIGN KEY([IdRespuestaValoracionReporte])
REFERENCES [dbo].[RespuestasValoracionReportes] ([IdRespuestaValoracionReportes])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasValoracionReportes] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasValoracionReportes_RespuestasValoracionReportes]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_InstrumentoVale] FOREIGN KEY([IdInstrumentoVale])
REFERENCES [dbo].[InstrumentoVale] ([IdInstrumentoVale])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_InstrumentoVale]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_ItemsVestibularesReportes] FOREIGN KEY([IdItemVestibularReporte])
REFERENCES [dbo].[ItemsVestibularesReportes] ([IdItemVestibularReporte])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_ItemsVestibularesReportes]
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular]  WITH CHECK ADD  CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_RespuestasVestibular] FOREIGN KEY([IdRespuestaVestibular])
REFERENCES [dbo].[RespuestasVestibular] ([IdRespuestaVestibular])
GO
ALTER TABLE [dbo].[ItemsValoracionReportesRespuestasVestibular] CHECK CONSTRAINT [FK_ItemsValoracionReportesRespuestasVestibular_RespuestasVestibular]
GO
ALTER TABLE [dbo].[ItemsVestibularesReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsVestibularesReportes_RangoEdades] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdades] ([IdRango])
GO
ALTER TABLE [dbo].[ItemsVestibularesReportes] CHECK CONSTRAINT [FK_ItemsVestibularesReportes_RangoEdades]
GO
ALTER TABLE [dbo].[ItemsVestibularesReportes]  WITH CHECK ADD  CONSTRAINT [FK_ItemsVestibularesReportes_Secciones] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Secciones] ([IdSección])
GO
ALTER TABLE [dbo].[ItemsVestibularesReportes] CHECK CONSTRAINT [FK_ItemsVestibularesReportes_Secciones]
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaFuncionApgarResultados_InstrumentoApgarFamiliar] FOREIGN KEY([IdApgarFamiliar])
REFERENCES [dbo].[InstrumentoApgarFamiliar] ([IdApgarFamiliar])
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados] CHECK CONSTRAINT [FK_PreguntaFuncionApgarResultados_InstrumentoApgarFamiliar]
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaFuncionApgarResultados_PreguntaFuncionApgar] FOREIGN KEY([IdPreguntaFuncionApgar])
REFERENCES [dbo].[PreguntaFuncionApgar] ([IdPreguntaFuncion])
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados] CHECK CONSTRAINT [FK_PreguntaFuncionApgarResultados_PreguntaFuncionApgar]
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaFuncionApgarResultados_ResultadosApgarFamiliar] FOREIGN KEY([IdResultadoApgarFamiliar])
REFERENCES [dbo].[ResultadosApgarFamiliar] ([IdResultadoApgarFamiliar])
GO
ALTER TABLE [dbo].[PreguntaFuncionApgarResultados] CHECK CONSTRAINT [FK_PreguntaFuncionApgarResultados_ResultadosApgarFamiliar]
GO
ALTER TABLE [dbo].[PreguntasEscalaLawtonBrody]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasEscalaLawtonBrody_ItemsEscalaLawtonBrody] FOREIGN KEY([IdItemEscalaLawtonBrody])
REFERENCES [dbo].[ItemsEscalaLawtonBrody] ([IdItemEscalaLawtonBrody])
GO
ALTER TABLE [dbo].[PreguntasEscalaLawtonBrody] CHECK CONSTRAINT [FK_PreguntasEscalaLawtonBrody_ItemsEscalaLawtonBrody]
GO
ALTER TABLE [dbo].[PreguntasRespuestasEscalaLawtonBrody]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasRespuestasEscalaLawtonBrody_PreguntasEscalaLawtonBrody] FOREIGN KEY([IdPreguntaEscalaLawtonBrody])
REFERENCES [dbo].[PreguntasEscalaLawtonBrody] ([IdPreguntasEscalaLawtonBrody])
GO
ALTER TABLE [dbo].[PreguntasRespuestasEscalaLawtonBrody] CHECK CONSTRAINT [FK_PreguntasRespuestasEscalaLawtonBrody_PreguntasEscalaLawtonBrody]
GO
ALTER TABLE [dbo].[PreguntasRespuestasEscalaLawtonBrody]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasRespuestasEscalaLawtonBrody_RespuestasEscalaLawtonBrody] FOREIGN KEY([IdRespuestaEscalaLawtonBrody])
REFERENCES [dbo].[RespuestasEscalaLawtonBrody] ([IdRespuestaEscalaLawtonBrody])
GO
ALTER TABLE [dbo].[PreguntasRespuestasEscalaLawtonBrody] CHECK CONSTRAINT [FK_PreguntasRespuestasEscalaLawtonBrody_RespuestasEscalaLawtonBrody]
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_CondicionesPerinatalesVale] FOREIGN KEY([IdCondicion])
REFERENCES [dbo].[Condiciones] ([IdCondicion])
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale] CHECK CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_CondicionesPerinatalesVale]
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_InstrumentoVale] FOREIGN KEY([IdInstrumentoVale])
REFERENCES [dbo].[InstrumentoVale] ([IdInstrumentoVale])
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale] CHECK CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_InstrumentoVale]
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale]  WITH CHECK ADD  CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_RespuestasVale] FOREIGN KEY([IdRespuestaVale])
REFERENCES [dbo].[RespuestasVale] ([IdRespuestaCondicion])
GO
ALTER TABLE [dbo].[RiesgosGeneralesCondicionesRespuestasVale] CHECK CONSTRAINT [FK_CondicionesPerinatalesRespuestasVale_RespuestasVale]
GO
ALTER TABLE [dbo].[Integridades]  WITH CHECK ADD  CONSTRAINT [CK_Integridades] CHECK  (([Nombre]='Si' OR [Nombre]='No'))
GO
ALTER TABLE [dbo].[Integridades] CHECK CONSTRAINT [CK_Integridades]
GO
ALTER TABLE [dbo].[Presencias]  WITH CHECK ADD  CONSTRAINT [CK_Presencias] CHECK  (([Nombre]='Si' OR [Nombre]='No'))
GO
ALTER TABLE [dbo].[Presencias] CHECK CONSTRAINT [CK_Presencias]
GO
ALTER TABLE [dbo].[RespuestasVale]  WITH CHECK ADD  CONSTRAINT [CK_RespuestasVale] CHECK  (([NombreRespuestaCondicion]='Si' OR [NombreRespuestaCondicion]='No'))
GO
ALTER TABLE [dbo].[RespuestasVale] CHECK CONSTRAINT [CK_RespuestasVale]
GO
ALTER TABLE [dbo].[RespuestasValoracionReportes]  WITH CHECK ADD  CONSTRAINT [CK_RespuestasValoracionReportes] CHECK  (([NombreRespuestaValoracionReporte]='Si' OR [NombreRespuestaValoracionReporte]='No'))
GO
ALTER TABLE [dbo].[RespuestasValoracionReportes] CHECK CONSTRAINT [CK_RespuestasValoracionReportes]
GO
ALTER TABLE [dbo].[RespuestasVestibular]  WITH CHECK ADD  CONSTRAINT [CK_RespuestasVestibular] CHECK  (([NombreRespuestaVestibular]='Si' OR [NombreRespuestaVestibular]='No'))
GO
ALTER TABLE [dbo].[RespuestasVestibular] CHECK CONSTRAINT [CK_RespuestasVestibular]
GO
/****** Object:  StoredProcedure [dbo].[GestionarEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GestionarEscalaLawtonBrody]
(
    @IdRespuestaEscalaLawtonBrody INT,
    @NombreRespuestaEscalaLawtonBrody VARCHAR(255)
)
AS
BEGIN
    DECLARE @Error NVARCHAR(MAX) = '';

    -- Realizar las validaciones pertinentes según el dominio de valores de cada campo

    IF LEN(@NombreRespuestaEscalaLawtonBrody) = 0 OR @NombreRespuestaEscalaLawtonBrody IS NULL
    BEGIN
        SET @Error = 'El nombre de la respuesta no puede estar en blanco o ser nulo.';
    END;

    -- Verificar si el registro ya existe

    IF EXISTS (SELECT 1 FROM RespuestasEscalaLawtonBrody WHERE IdRespuestaEscalaLawtonBrody = @IdRespuestaEscalaLawtonBrody)
    BEGIN
        -- Actualizar el registro existente

        UPDATE RespuestasEscalaLawtonBrody
        SET NombreRespuestaEscalaLawtonBrody = @NombreRespuestaEscalaLawtonBrody
        WHERE IdRespuestaEscalaLawtonBrody = @IdRespuestaEscalaLawtonBrody;
    END
    ELSE
    BEGIN
        -- Insertar un nuevo registro

        INSERT INTO RespuestasEscalaLawtonBrody (IdRespuestaEscalaLawtonBrody, NombreRespuestaEscalaLawtonBrody)
        VALUES (@IdRespuestaEscalaLawtonBrody, @NombreRespuestaEscalaLawtonBrody);
    END;

    -- Eliminar el registro si se proporciona un ID

    IF @IdRespuestaEscalaLawtonBrody IS NOT NULL
    BEGIN
        DELETE FROM RespuestasEscalaLawtonBrody
        WHERE IdRespuestaEscalaLawtonBrody = @IdRespuestaEscalaLawtonBrody;
    END;

    -- Manejo de errores

    IF @Error != ''
    BEGIN
        THROW 51000, @Error, 1;
        RETURN;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[GestionarIndiceDeBarthel]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GestionarIndiceDeBarthel]
(
    @IdEncuestaIndiceDeBarthel INT,
    @IdEncuestado INT,
    @Puntuacion INT
)
AS
BEGIN
    DECLARE @Error NVARCHAR(MAX) = '';

    -- Realizar las validaciones pertinentes según el dominio de valores de cada campo
    IF @Puntuacion < 0 OR @Puntuacion > 100
    BEGIN
        SET @Error = 'La puntuación debe estar en el rango de 0 a 100.';
    END;

    -- Verificar si el registro ya existe
    IF EXISTS (SELECT 1 FROM EncuestasIndiceDeBarthel WHERE IdEncuestaIndiceDeBarthel = @IdEncuestaIndiceDeBarthel)
    BEGIN
        -- Actualizar el registro existente
        UPDATE EncuestasIndiceDeBarthel
        SET IdEncuestado = @IdEncuestado
            -- Actualiza otras columnas aquí
        WHERE IdEncuestaIndiceDeBarthel = @IdEncuestaIndiceDeBarthel; -- Corrección: eliminar la coma después de @IdEncuestaIndiceDeBarthel
    END
    ELSE
    BEGIN
        -- Insertar un nuevo registro
        INSERT INTO EncuestasIndiceDeBarthel (IdEncuestaIndiceDeBarthel, IdEncuestado, Puntuacion)
        VALUES (@IdEncuestaIndiceDeBarthel, @IdEncuestado, @Puntuacion); -- Corrección: especificar las columnas y valores correspondientes
    END;

    -- Eliminar el registro si se proporciona un ID
    IF @IdEncuestaIndiceDeBarthel IS NOT NULL
    BEGIN
        DELETE FROM EncuestasIndiceDeBarthel
        WHERE IdEncuestaIndiceDeBarthel = @IdEncuestaIndiceDeBarthel;
    END;

    -- Manejo de errores
    IF @Error != ''
    BEGIN
        THROW 51000, @Error, 1;
        RETURN;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[GestionarInstrumentoVALE]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Almacenar, actualizar o eliminar el instrumento VALE. Se deben realizar las validaciones pertinentes de acuerdo con el dominio de
-- valores de cada campo. Si no se cumplen se debe retornar un error
-- indicando los errores encontrados.

CREATE PROCEDURE [dbo].[GestionarInstrumentoVALE]
(
    @IdInstrumentoVALE INT,
    @IdPaciente INT
)
AS
BEGIN
    DECLARE @Error NVARCHAR(MAX) = '';

    
    IF NOT EXISTS (SELECT 1 FROM InstrumentoVALE WHERE IdInstrumentoVALE = @IdInstrumentoVALE)
    BEGIN
        SET @Error = 'El registro del instrumento VALE no existe para el paciente.';
    END;

    IF @Error = ''
    BEGIN
        
        IF @IdInstrumentoVALE IS NOT NULL
        BEGIN
            
            UPDATE InstrumentoVALE
            SET IdPaciente = @IdPaciente
            WHERE IdInstrumentoVALE = @IdInstrumentoVALE;
        END
        ELSE
        BEGIN
            
            INSERT INTO InstrumentoVALE (IdPaciente)
            VALUES (@IdPaciente);
        END;
    END
    ELSE
    BEGIN
        
        THROW 51000, @Error, 1;
        RETURN;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_APGAR_Familiar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Almacenar, actualizar o eliminar el APGAR Familiar. Se deben realizar las validaciones pertinentes de acuerdo con el dominio de valores de
-- cada campo. Si no se cumplen se debe retornar un error indicando los
-- errores encontrados.

CREATE PROCEDURE [dbo].[sp_APGAR_Familiar]
    @IdPacienteApgarFamiliar INT,
    @NombrePacienteApgarFamiliar VARCHAR(50),
    @RolFamiliar VARCHAR(50)
AS
BEGIN
   
    IF EXISTS (SELECT 1 FROM PacientesApgarFamiliar WHERE IdPacienteApgarFamiliar = @IdPacienteApgarFamiliar)
    BEGIN
        
        UPDATE PacientesApgarFamiliar
        SET @NombrePacienteApgarFamiliar = @NombrePacienteApgarFamiliar,
            RolFamiliar = @RolFamiliar
        WHERE IdPacienteApgarFamiliar = @IdPacienteApgarFamiliar;
    END
    ELSE
    BEGIN
        
        INSERT INTO PacientesApgarFamiliar (IdPacienteApgarFamiliar, NomprePacienteApgarFamiliar, RolFamiliar)
        VALUES (@IdPacienteApgarFamiliar, @NombrePacienteApgarFamiliar, @RolFamiliar);
    END;
    
    
    IF @IdPacienteApgarFamiliar IS NOT NULL
    BEGIN
        DELETE FROM PacientesApgarFamiliar
        WHERE IdPacienteApgarFamiliar = @IdPacienteApgarFamiliar;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarPacientesMayorPuntajeAPGAR]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Mostrar los pacientes que tengan el mayor puntaje en el APGAR Familiar.
CREATE PROCEDURE [dbo].[sp_MostrarPacientesMayorPuntajeAPGAR]
AS
BEGIN
    
    DECLARE @MaxPuntaje INT;
    SELECT @MaxPuntaje = MAX(Puntaje) FROM ResultadosApgarFamiliar;

    
    SELECT
        P.*,
        R.Puntaje
    FROM
        Pacientes P
    INNER JOIN
        ResultadosApgarFamiliar R ON P.IdPaciente = R.IdPacienteApgarFamiliar
    WHERE
        R.Puntaje = @MaxPuntaje;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarPacientesMenoresDe2Anios]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MostrarPacientesMenoresDe2Anios]
AS
BEGIN
    -- Obtener la fecha actual
    DECLARE @FechaActual DATE = GETDATE();
    
    -- Calcular la fecha límite de nacimiento (30 semanas atrás)
    DECLARE @FechaNacimientoLimite DATE = DATEADD(WEEK, -30, @FechaActual);

    -- Seleccionar los pacientes menores de 2 años que nacieron antes de 30 semanas de gestación
    SELECT
        P.IdPaciente,
        P.NombrePaciente,
        P.FechaNacimiento,
        P.SemanasGestacion
    FROM
        Pacientes AS P
    WHERE
        DATEDIFF(YEAR, P.FechaNacimiento, @FechaActual) < 2  -- Menos de 2 años de edad
        AND P.FechaNacimiento < @FechaNacimientoLimite  -- Nacidos antes de 30 semanas de gestación
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarPacientesMenoresDe2AniosV2]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MostrarPacientesMenoresDe2AniosV2]
AS
BEGIN
    -- Obtener la fecha actual
    DECLARE @FechaActual DATE = GETDATE();
    
    -- Calcular la fecha límite de nacimiento (30 semanas atrás)
    DECLARE @FechaNacimientoLimite DATE = DATEADD(WEEK, -30, @FechaActual);

    -- Seleccionar los pacientes menores de 2 años que nacieron antes de 30 semanas de gestación
    SELECT
        IdPaciente,
        NombrePaciente,
        FechaNacimiento,
        SemanasGestacion
    FROM
        Pacientes
    WHERE
        DATEDIFF(YEAR, FechaNacimiento, @FechaActual) < 2  -- Menos de 2 años de edad
        AND FechaNacimiento < @FechaNacimientoLimite  -- Nacidos antes de 30 semanas de gestación
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerAPGARFamiliar]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Obtener el APGAR Familiar de uno o varios pacientes con su puntaje e interpretación. Debe permitir filtro por fechas o número de
--documento.
CREATE PROCEDURE [dbo].[sp_ObtenerAPGARFamiliar]
    @FechaInicio DATE,
    @FechaFin DATE,
    @NumeroDocumento VARCHAR(20)
AS
BEGIN
    
    SELECT
        PA.*,
        CASE
            WHEN PA.Puntaje >= 18 THEN 'Buena Función Familiar'
            WHEN PA.Puntaje BETWEEN 14 AND 17 THEN 'Disfunción Familiar Leve'
            WHEN PA.Puntaje BETWEEN 10 AND 13 THEN 'Disfunción Familiar Moderada'
            WHEN PA.Puntaje <= 9 THEN 'Disfunción Familiar Severa'
            ELSE 'No Clasificado'
        END AS Interpretacion
    FROM
        PacientesApgarFamiliar PA
    INNER JOIN
        Pacientes P ON PA.IdPacienteApgarFamiliar = P.IdPaciente
    WHERE
        (P.FechaNacimiento BETWEEN @FechaInicio AND @FechaFin OR @FechaInicio IS NULL OR @FechaFin IS NULL)
        AND (P.NumeroDocumento = @NumeroDocumento OR @NumeroDocumento IS NULL OR @NumeroDocumento = '')
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerEscalaLawtonBrody]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerEscalaLawtonBrody]
    @FechaInicio DATE = NULL,
    @FechaFin DATE = NULL,
    @NumeroDocumento INT = NULL
AS
BEGIN
    SELECT
        RL.IdRespuestaEscalaLawtonBrody,
        RL.IdPaciente,
        P.Nombre AS NombrePaciente,
        RL.FechaEvaluacion,
        RL.Puntaje,
        CASE
            WHEN RL.Puntaje >= 8 THEN 'Totalmente independiente'
            WHEN RL.Puntaje >= 5 THEN 'Moderadamente independiente'
            ELSE 'Dependiente'
        END AS Interpretacion
    FROM RespuestasEscalaLawtonBrody AS RL
    INNER JOIN Paciente AS P ON RL.IdPaciente = P.IdPaciente
    WHERE
        (@FechaInicio IS NULL OR RL.FechaEvaluacion >= @FechaInicio)
        AND (@FechaFin IS NULL OR RL.FechaEvaluacion <= @FechaFin)
        AND (@NumeroDocumento IS NULL OR P.NumeroDocumento = @NumeroDocumento)
    ORDER BY RL.FechaEvaluacion DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerIndiceDeBarthel]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Obtener el índice de Barthel de uno o varios pacientes. Debe
--permitir filtro por fechas o número de documento.
CREATE PROCEDURE [dbo].[sp_ObtenerIndiceDeBarthel]
    @FechaInicio DATE = NULL,
    @FechaFin DATE = NULL,
    @NumeroDocumento VARCHAR(20) = NULL
AS
BEGIN
    SELECT
        P.*,
        E.*  
    FROM
        Pacientes P
    INNER JOIN
        EncuestasIndiceDeBarthel E ON P.IdPaciente = E.IdPacienteEncuestado
    WHERE
        (@FechaInicio IS NULL OR E.FechaEncuesta >= @FechaInicio) AND
        (@FechaFin IS NULL OR E.FechaEncuesta <= @FechaFin) AND
        (@NumeroDocumento IS NULL OR P.NumeroDocumento = @NumeroDocumento);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerInstrumentoVALE]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Obtener el instrumento VALE de uno o varios pacientes. Se debe agrupar por para cada tipo de valoración: Riesgos generales,
--Condiciones Estructurales, Ítems de valoración, Calificación. Debe permitir filtro por fechas o número de documento.
CREATE PROCEDURE [dbo].[sp_ObtenerInstrumentoVALE]
    @FechaInicio DATE,
    @FechaFin DATE,
    @NumeroDocumentoPaciente INT
AS
BEGIN
    SELECT
        IV.IdInstrumentoVale,
        IV.FechaCreacion,
        IV.NumeroDocumentoPaciente,
        RG.IdCondicion AS IdRiesgoGeneral,
        RG.Descripcion AS RiesgoGeneral,
        CE.IdCondicion AS IdCondicionEstructural,
        CE.Descripcion AS CondicionEstructural,
        IVR.IdItemValoracion AS IdItemValoracion,
        IVR.Descripcion AS ItemValoracion,
        IVR.Calificacion
    FROM InstrumentoVALE IV
    LEFT JOIN RiesgosGeneralesCondicionesRespuestasVale RG ON IV.IdInstrumentoVale = RG.IdInstrumentoVale
    LEFT JOIN CondicionesEstructuralesRespuestasVale CE ON IV.IdInstrumentoVale = CE.IdInstrumentoVale
    LEFT JOIN ItemsValoracionReportesRespuestasValoracionReportes IVR ON IV.IdInstrumentoVale = IVR.IdInstrumentoVale
    
    WHERE
        IV.FechaCreacion BETWEEN @FechaInicio AND @FechaFin 
        AND (IV.NumeroDocumentoPaciente = @NumeroDocumentoPaciente OR @NumeroDocumentoPaciente IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_PuntajeMasRepetidoBarthel]    Script Date: 20/09/2023 14:54:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ¿Cuál es el puntaje que más se repite en el índice de Barthel?
CREATE PROCEDURE [dbo].[sp_PuntajeMasRepetidoBarthel]
AS
BEGIN
    SELECT TOP 1
        Puntuacion,
        COUNT(*) AS Repeticiones
    FROM
        EncuestasIndiceDeBarthel
    GROUP BY
        Puntuacion
    ORDER BY
        Repeticiones DESC;
END
GO
USE [master]
GO
ALTER DATABASE [InstrumentoVALE] SET  READ_WRITE 
GO
