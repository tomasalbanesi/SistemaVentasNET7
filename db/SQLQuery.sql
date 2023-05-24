USE [master]
GO
/****** Object:  Database [DB_SistemaVentasNET7]    Script Date: 24/5/2023 19:49:23 ******/
CREATE DATABASE [DB_SistemaVentasNET7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SistemaVentasNET7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_SistemaVentasNET7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_SistemaVentasNET7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_SistemaVentasNET7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SistemaVentasNET7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_SistemaVentasNET7', N'ON'
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET QUERY_STORE = OFF
GO
USE [DB_SistemaVentasNET7]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[EsActivo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesVentas]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesVentas](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [decimal](10, 2) NULL,
	[Total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Icono] [varchar](50) NULL,
	[Url] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenusRoles]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenusRoles](
	[IdMenuRol] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NULL,
	[IdRol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenuRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumerosDocumentos]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumerosDocumentos](
	[IdNumeroDocumento] [int] IDENTITY(1,1) NOT NULL,
	[UltimoNumero] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNumeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[IdCategoria] [int] NULL,
	[Stock] [int] NULL,
	[Precio] [decimal](10, 2) NULL,
	[EsActivo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](100) NULL,
	[Correo] [varchar](40) NULL,
	[IdRol] [int] NULL,
	[Clave] [varchar](40) NULL,
	[EsActivo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 24/5/2023 19:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](40) NULL,
	[TipoPago] [varchar](50) NULL,
	[Total] [decimal](10, 2) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (1, N'Laptops', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (2, N'Monitores', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (3, N'Teclados', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (4, N'Auriculares', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (5, N'Memorias', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [EsActivo], [FechaRegistro]) VALUES (6, N'Accesorios', 1, CAST(N'2023-01-12T22:18:07.303' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (1, N'DashBoard', N'dashboard', N'/pages/dashboard')
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (2, N'Usuarios', N'group', N'/pages/usuarios')
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (3, N'Productos', N'collections_bookmark', N'/pages/productos')
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (4, N'Venta', N'currency_exchange', N'/pages/venta')
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (5, N'Historial Ventas', N'edit_note', N'/pages/historial_venta')
GO
INSERT [dbo].[Menus] ([IdMenu], [Nombre], [Icono], [Url]) VALUES (6, N'Reportes', N'receipt', N'/pages/reportes')
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[MenusRoles] ON 
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (1, 1, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (2, 2, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (3, 3, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (4, 4, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (5, 5, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (6, 6, 1)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (7, 4, 2)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (8, 5, 2)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (9, 3, 3)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (10, 4, 3)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (11, 5, 3)
GO
INSERT [dbo].[MenusRoles] ([IdMenuRol], [IdMenu], [IdRol]) VALUES (12, 6, 3)
GO
SET IDENTITY_INSERT [dbo].[MenusRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[NumerosDocumentos] ON 
GO
INSERT [dbo].[NumerosDocumentos] ([IdNumeroDocumento], [UltimoNumero], [FechaRegistro]) VALUES (1, 1, CAST(N'2023-05-24T19:45:58.480' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[NumerosDocumentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (1, N'laptop samsung book pro', 1, 20, CAST(2500.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (2, N'laptop lenovo idea pad', 1, 30, CAST(2200.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (3, N'laptop asus zenbook duo', 1, 30, CAST(2100.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (4, N'monitor teros gaming te-2', 2, 25, CAST(1050.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (5, N'monitor samsung curvo', 2, 15, CAST(1400.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (6, N'monitor huawei gamer', 2, 10, CAST(1350.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (7, N'teclado seisen gamer', 3, 10, CAST(800.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (8, N'teclado antryx gamer', 3, 10, CAST(1000.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (9, N'teclado logitech', 3, 10, CAST(1000.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (10, N'auricular logitech gamer', 4, 15, CAST(800.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (11, N'auricular hyperx gamer', 4, 20, CAST(680.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (12, N'auricular redragon rgb', 4, 25, CAST(950.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (13, N'memoria kingston rgb', 5, 10, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (14, N'ventilador cooler master', 6, 20, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (15, N'mini ventilador lenono', 6, 15, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-01-12T22:18:07.313' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [Nombre], [IdCategoria], [Stock], [Precio], [EsActivo], [FechaRegistro]) VALUES (1002, N'Celular', 6, 15, CAST(50000.00 AS Decimal(10, 2)), 1, CAST(N'2023-05-24T19:45:39.217' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([IdRol], [Nombre], [FechaRegistro]) VALUES (1, N'Administrador', CAST(N'2023-01-12T22:18:07.273' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Nombre], [FechaRegistro]) VALUES (2, N'Empleado', CAST(N'2023-01-12T22:18:07.273' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Nombre], [FechaRegistro]) VALUES (3, N'Supervisor', CAST(N'2023-01-12T22:18:07.273' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreCompleto], [Correo], [IdRol], [Clave], [EsActivo], [FechaRegistro]) VALUES (1, N'codigo estudiante', N'code@example.com', 1, N'123', 1, CAST(N'2023-01-12T22:18:07.293' AS DateTime))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreCompleto], [Correo], [IdRol], [Clave], [EsActivo], [FechaRegistro]) VALUES (2, N'ATA SS Client 1', N'atassclient1@gmail.com', 1, N'123', 1, CAST(N'2023-05-23T22:26:32.057' AS DateTime))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreCompleto], [Correo], [IdRol], [Clave], [EsActivo], [FechaRegistro]) VALUES (3, N'ATA SS Client 2', N'atassclient2@gmail.com', 2, N'123', 1, CAST(N'2023-05-24T19:31:05.897' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 
GO
INSERT [dbo].[Ventas] ([IdVenta], [NumeroDocumento], [TipoPago], [Total], [FechaRegistro]) VALUES (1, N'0001', N'Efectivo', CAST(25000000.00 AS Decimal(10, 2)), CAST(N'2023-05-24T19:45:58.537' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[Categorias] ADD  DEFAULT ((1)) FOR [EsActivo]
GO
ALTER TABLE [dbo].[Categorias] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[NumerosDocumentos] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Productos] ADD  DEFAULT ((1)) FOR [EsActivo]
GO
ALTER TABLE [dbo].[Productos] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [EsActivo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[DetallesVentas]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[DetallesVentas]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Ventas] ([IdVenta])
GO
ALTER TABLE [dbo].[MenusRoles]  WITH CHECK ADD FOREIGN KEY([IdMenu])
REFERENCES [dbo].[Menus] ([IdMenu])
GO
ALTER TABLE [dbo].[MenusRoles]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
USE [master]
GO
ALTER DATABASE [DB_SistemaVentasNET7] SET  READ_WRITE 
GO
