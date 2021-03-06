/****** Object:  Database [_TRATAMIENTO_ERRORES]    Script Date: 13/05/2020 11:00:22 ******/
CREATE DATABASE [_TRATAMIENTO_ERRORES]

--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [_TRATAMIENTO_ERRORES].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET AUTO_CLOSE ON 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET  ENABLE_BROKER 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET READ_COMMITTED_SNAPSHOT OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET RECOVERY SIMPLE 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET  MULTI_USER 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET DELAYED_DURABILITY = DISABLED 
--GO
--ALTER DATABASE [_TRATAMIENTO_ERRORES] SET QUERY_STORE = OFF
--GO
--USE [_TRATAMIENTO_ERRORES]
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
----GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
--GO
USE [_TRATAMIENTO_ERRORES]
GO
/****** Object:  Table [dbo].[Bugs]    Script Date: 13/05/2020 11:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bugs](
	[id_bug] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[descripcion] [varchar](1000) NULL,
	[id_producto] [int] NOT NULL,
	[id_prioridad] [int] NULL,
	[id_criticidad] [int] NULL,
	[fecha_alta] [date] NOT NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [PK_Bugs] PRIMARY KEY CLUSTERED 
(
	[id_bug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criticidades]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criticidades](
	[id_criticidad] [int] IDENTITY(1,1) NOT NULL,
	[n_criticidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Criticidades] PRIMARY KEY CLUSTERED 
(
	[id_criticidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[n_estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_usuario]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_usuario](
	[id_estado_usuario] [int] NOT NULL,
	[n_estado_usuario] [varchar](50) NOT NULL,
 CONSTRAINT [estados_usuarios_pk] PRIMARY KEY CLUSTERED 
(
	[id_estado_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios](
	[id_formulario] [int] IDENTITY(1,1) NOT NULL,
	[n_formulario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[id_formulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historiales_Bug]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historiales_Bug](
	[id_bug] [int] NOT NULL,
	[id_detalle] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[responsable] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
	[asignado_a] [int] NULL,
 CONSTRAINT [PK_Historales_Bug] PRIMARY KEY CLUSTERED 
(
	[id_bug] ASC,
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id_perfil] [int] IDENTITY(1,1) NOT NULL,
	[n_perfil] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[id_formulario] [int] NOT NULL,
	[id_perfil] [int] NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[id_formulario] ASC,
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prioridades]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prioridades](
	[id_prioridad] [int] IDENTITY(1,1) NOT NULL,
	[n_prioridad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Prioridades] PRIMARY KEY CLUSTERED 
(
	[id_prioridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13/05/2020 11:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[n_usuario] [varchar](50) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[id_perfil] [int] NOT NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bugs] ON 

INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (2, N'Test', N'Test', 1, 1, 1, CAST(N'2017-09-23' AS Date), 4)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (5, N'TEST FIRST BUG', N'TEST FIRST BUG', 1, 1, 1, CAST(N'2017-09-23' AS Date), 4)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (6, N'Tercer bug test', N'Tercer bug test', 1, 2, 3, CAST(N'2017-09-24' AS Date), 4)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (12, N'PRUEBA 1', N'P', 1, 1, 1, CAST(N'2020-05-12' AS Date), 1)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (13, N'PRUEBA DE BUGS', N'PRUEBA', 1, 2, 2, CAST(N'2020-05-12' AS Date), 1)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (14, N'ERROR EN CLASE', N'ESTE ERROR LO CARGAMOS EN CLASE DE ZOOM', 1, 2, 1, CAST(N'2020-05-12' AS Date), 1)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (16, N'ULTIMO ERROR', N'ULTIMO', 1, 1, 1, CAST(N'2020-05-12' AS Date), 1)
INSERT [dbo].[Bugs] ([id_bug], [titulo], [descripcion], [id_producto], [id_prioridad], [id_criticidad], [fecha_alta], [id_estado]) VALUES (17, N'PRUEBA ULTIMA', N'PRUEBA ULTIMA', 1, 1, 1, CAST(N'2020-05-12' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Bugs] OFF
SET IDENTITY_INSERT [dbo].[Criticidades] ON 

INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (1, N'LEVE')
INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (2, N'GRAVE')
INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (3, N'INVALIDANTE')
INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (15, N'NUEVO')
INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (18, N'BUENO')
INSERT [dbo].[Criticidades] ([id_criticidad], [n_criticidad]) VALUES (19, N'FEO')
SET IDENTITY_INSERT [dbo].[Criticidades] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([id_estado], [n_estado]) VALUES (1, N'Nuevo')
INSERT [dbo].[Estados] ([id_estado], [n_estado]) VALUES (2, N'Asignado')
INSERT [dbo].[Estados] ([id_estado], [n_estado]) VALUES (3, N'Cerrado')
INSERT [dbo].[Estados] ([id_estado], [n_estado]) VALUES (4, N'En testing')
SET IDENTITY_INSERT [dbo].[Estados] OFF
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (1, N'Activo')
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (2, N'Inactivo')
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (3, N'En control de amisión')
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (4, N'Rechazado')
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (5, N'Baja Temporaria')
INSERT [dbo].[estados_usuario] ([id_estado_usuario], [n_estado_usuario]) VALUES (6, N'Baja Definitiva')
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (2, 1, CAST(N'2017-09-23' AS Date), 1, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (2, 2, CAST(N'2017-09-24' AS Date), 1, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (2, 3, CAST(N'2017-09-25' AS Date), 1, 2, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (2, 4, CAST(N'2017-10-04' AS Date), 1, 4, 2)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (2, 5, CAST(N'2017-10-04' AS Date), 1, 3, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (5, 1, CAST(N'2017-09-23' AS Date), 1, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (5, 2, CAST(N'2017-09-27' AS Date), 1, 2, 4)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (6, 1, CAST(N'2017-09-24' AS Date), 1, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (6, 2, CAST(N'2017-09-27' AS Date), 1, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (6, 3, CAST(N'2017-09-27' AS Date), 1, 2, 4)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (6, 4, CAST(N'2017-10-04' AS Date), 1, 4, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (12, 1, CAST(N'2020-05-12' AS Date), 8, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (13, 1, CAST(N'2020-05-12' AS Date), 8, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (14, 1, CAST(N'2020-05-12' AS Date), 8, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (16, 1, CAST(N'2020-05-12' AS Date), 8, 1, NULL)
INSERT [dbo].[Historiales_Bug] ([id_bug], [id_detalle], [fecha], [responsable], [id_estado], [asignado_a]) VALUES (17, 1, CAST(N'2020-05-12' AS Date), 8, 1, NULL)
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id_perfil], [n_perfil]) VALUES (1, N'Administrador')
INSERT [dbo].[Perfiles] ([id_perfil], [n_perfil]) VALUES (2, N'Tester')
INSERT [dbo].[Perfiles] ([id_perfil], [n_perfil]) VALUES (3, N'Desarrollador')
INSERT [dbo].[Perfiles] ([id_perfil], [n_perfil]) VALUES (4, N'Responsable de Reportes')
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
SET IDENTITY_INSERT [dbo].[Prioridades] ON 

INSERT [dbo].[Prioridades] ([id_prioridad], [n_prioridad]) VALUES (1, N'BAJA')
INSERT [dbo].[Prioridades] ([id_prioridad], [n_prioridad]) VALUES (2, N'MEDIA')
INSERT [dbo].[Prioridades] ([id_prioridad], [n_prioridad]) VALUES (3, N'ALTA')
INSERT [dbo].[Prioridades] ([id_prioridad], [n_prioridad]) VALUES (4, N'URGENTE')
SET IDENTITY_INSERT [dbo].[Prioridades] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [nombre]) VALUES (1, N'SOFTWARE GESTION II')
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (1, N'ADMIN', N'123', N'admin@bt.com', 1, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (2, N'acme', N'test123', N'test123', 2, 2)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (4, N'Test3', N'test', N'test2@bt.com', 3, 3)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (5, N'one21', N'fhkjasdhfa', N'fhkjasdhfa', 2, 4)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (6, N'Test11-09', N'123', N'test1109@bugs.com.ar', 3, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (7, N'Melisa', N'123', N'meli@gmail.com', 4, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (8, N'DAMIANO LUIS', N'321', N'luis.damiano@gmail.com', 1, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (9, N'LOPEZ', N'123', N'lopez@gmail.com', 2, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (10, N'SANCHEZ', N'444', N'sanchez@gmail.com', 1, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (11, N'PEREZ V', N'123', N'perez@gmail.com', 2, 1)
INSERT [dbo].[Users] ([id_usuario], [n_usuario], [password], [email], [id_perfil], [estado]) VALUES (12, N'LOPEZ JOSE', N'123', N'L@gmail.com', 1, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Bugs]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_Criticidades] FOREIGN KEY([id_criticidad])
REFERENCES [dbo].[Criticidades] ([id_criticidad])
GO
ALTER TABLE [dbo].[Bugs] CHECK CONSTRAINT [FK_Bugs_Criticidades]
GO
ALTER TABLE [dbo].[Bugs]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_Prioridades] FOREIGN KEY([id_prioridad])
REFERENCES [dbo].[Prioridades] ([id_prioridad])
GO
ALTER TABLE [dbo].[Bugs] CHECK CONSTRAINT [FK_Bugs_Prioridades]
GO
ALTER TABLE [dbo].[Bugs]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_Productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Bugs] CHECK CONSTRAINT [FK_Bugs_Productos]
GO
ALTER TABLE [dbo].[Bugs]  WITH CHECK ADD  CONSTRAINT [fk_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados] ([id_estado])
GO
ALTER TABLE [dbo].[Bugs] CHECK CONSTRAINT [fk_estado]
GO
ALTER TABLE [dbo].[Historiales_Bug]  WITH CHECK ADD  CONSTRAINT [FK_Historales_Bug_Bugs] FOREIGN KEY([id_bug])
REFERENCES [dbo].[Bugs] ([id_bug])
GO
ALTER TABLE [dbo].[Historiales_Bug] CHECK CONSTRAINT [FK_Historales_Bug_Bugs]
GO
ALTER TABLE [dbo].[Historiales_Bug]  WITH CHECK ADD  CONSTRAINT [FK_Historales_Bug_Estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados] ([id_estado])
GO
ALTER TABLE [dbo].[Historiales_Bug] CHECK CONSTRAINT [FK_Historales_Bug_Estados]
GO
ALTER TABLE [dbo].[Historiales_Bug]  WITH CHECK ADD  CONSTRAINT [FK_Historales_Bug_Users] FOREIGN KEY([responsable])
REFERENCES [dbo].[Users] ([id_usuario])
GO
ALTER TABLE [dbo].[Historiales_Bug] CHECK CONSTRAINT [FK_Historales_Bug_Users]
GO
ALTER TABLE [dbo].[Historiales_Bug]  WITH CHECK ADD  CONSTRAINT [FK_Historales_Bug_Users1] FOREIGN KEY([asignado_a])
REFERENCES [dbo].[Users] ([id_usuario])
GO
ALTER TABLE [dbo].[Historiales_Bug] CHECK CONSTRAINT [FK_Historales_Bug_Users1]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Formularios] FOREIGN KEY([id_formulario])
REFERENCES [dbo].[Formularios] ([id_formulario])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_Formularios]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[Perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_Perfiles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[Perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Perfiles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [users_estados_usuarios_pk] FOREIGN KEY([estado])
REFERENCES [dbo].[estados_usuario] ([id_estado_usuario])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [users_estados_usuarios_pk]
GO
USE [master]
GO
ALTER DATABASE [_TRATAMIENTO_ERRORES] SET  READ_WRITE 
GO
