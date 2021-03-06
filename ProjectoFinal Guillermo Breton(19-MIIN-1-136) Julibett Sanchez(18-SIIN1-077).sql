/*Guillermo Antonio Breton Valenzuela Mat: 19-MIIN-1-136 Julibett Mercedes Sanchez Abreu MAt: 18-SIIN-1-077 Sec. 0541*/



USE [master]
GO
/****** Object:  Database [MedSearchingPlus ]    Script Date: 09/04/2020 12:31:07 AM ******/
CREATE DATABASE [MedSearchingPlus ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedSearchingPlus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MedSearchingPlus .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MedSearchingPlus _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MedSearchingPlus _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MedSearchingPlus ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedSearchingPlus ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MedSearchingPlus ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET ARITHABORT OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MedSearchingPlus ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MedSearchingPlus ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MedSearchingPlus ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MedSearchingPlus ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MedSearchingPlus ] SET  MULTI_USER 
GO
ALTER DATABASE [MedSearchingPlus ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MedSearchingPlus ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MedSearchingPlus ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MedSearchingPlus ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MedSearchingPlus ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MedSearchingPlus ] SET QUERY_STORE = OFF
GO
USE [MedSearchingPlus ]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 09/04/2020 12:31:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Edad] [int] NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
	[Experiencia] [int] NULL,
	[HospitalID] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 09/04/2020 12:31:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[EspecialidadID] [varchar](50) NOT NULL,
	[Codigo] [int] NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[EspecialidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 09/04/2020 12:31:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[HospitalID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Ubicacion] [varchar](200) NULL,
	[EspecialidadID] [varchar](50) NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809447, N'Dr. Julio Pérez Matías ', 65, N'M', N'8098853124', N'N/A', 28, 10335)
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809548, N'Dra. Johanna Fadul Marmolejos ', 43, N'F', N'8296453484', N'fudulosa@hotmail.com', 17, 10237)
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809552, N'Dra. María De Jesús Ortega ', 52, N'F', N'8095132146', N'mdjo@hotmail.com', 8, 10133)
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809554, N'Dr. Milovan Medina Soto ', 60, N'M', N'8095652144', N'drmilovan@gmail.com', 13, 10222)
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809556, N'Dr. Darveculo José Matos Peña ', 41, N'M', N'8294554867', N'joseculomatos@gmail.com', 6, 10240)
INSERT [dbo].[Doctor] ([DoctorID], [Nombre], [Edad], [Sexo], [Telefono], [Email], [Experiencia], [HospitalID]) VALUES (809580, N'Dr. Moisés Sánchez Perdomo ', 32, N'M', N'8496412134', N'elmoisanchez@gmail.com', 1, 10334)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Cardiologia', 33)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Endocrinologia', 22)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Ginecologia', 40)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Neumologia', 34)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Oncologia', 37)
INSERT [dbo].[Especialidad] ([EspecialidadID], [Codigo]) VALUES (N'Otorrinolaringologia', 35)
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10133, N'Hospital General Plaza de la Salud ', N'Av. Ortega y Gasset, Ensanche La Fe, Santo Domingo, D.N', N'Cardiologia')
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10222, N'Hospital Traumatológico Dr. Ney Arias Lora ', N'Av. Konrad Adenauer (Prol. Charles de Gaulle, Santo Domingo Norte', N'Endocrinologia')
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10237, N'Hospital Traumatológico Dr. Ney Arias Lora ', N'Av. Konrad Adenauer (Prol. Charles de Gaulle, Santo Domingo Norte', N'Oncologia')
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10240, N'Hospital Traumatológico Dr. Ney Arias Lora ', N'Av. Konrad Adenauer (Prol. Charles de Gaulle, Santo Domingo Norte', N'Ginecologia')
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10334, N'Hospital Dr. Darío Contreras ', N'Calle Club Rotario, Santo Domingo Este 11503', N'Neumologia')
INSERT [dbo].[Hospital] ([HospitalID], [Nombre], [Ubicacion], [EspecialidadID]) VALUES (10335, N'Hospital Dr. Darío Contreras ', N'Calle Club Rotario, Santo Domingo Este 11503', N'Otorrinolaringologia')
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Hospital]
GO
ALTER TABLE [dbo].[Hospital]  WITH CHECK ADD  CONSTRAINT [FK_Hospital_Especialidad] FOREIGN KEY([EspecialidadID])
REFERENCES [dbo].[Especialidad] ([EspecialidadID])
GO
ALTER TABLE [dbo].[Hospital] CHECK CONSTRAINT [FK_Hospital_Especialidad]
GO
USE [master]
GO
ALTER DATABASE [MedSearchingPlus ] SET  READ_WRITE 
GO
