USE [Taller]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexos](
	[codSexo] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[codSexo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sexos] ([codSexo], [nombre]) VALUES (1, N'Masculino')
INSERT [dbo].[Sexos] ([codSexo], [nombre]) VALUES (2, N'Femenino')
/****** Object:  Table [dbo].[Roles]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[codRol] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[codRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Roles] ([codRol], [nombre], [descripcion]) VALUES (1, N'Administrador', N'Encargado de la ADM')
INSERT [dbo].[Roles] ([codRol], [nombre], [descripcion]) VALUES (2, N'Mecanico', N'Encargado de los arreglos')
/****** Object:  Table [dbo].[Marcas]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcas](
	[codMarca] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[codMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Marcas] ([codMarca], [nombre], [descripcion]) VALUES (1, N'Renault', NULL)
INSERT [dbo].[Marcas] ([codMarca], [nombre], [descripcion]) VALUES (2, N'BMW', NULL)
/****** Object:  Table [dbo].[FormasPago]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormasPago](
	[codFormaPago] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_FormasPago] PRIMARY KEY CLUSTERED 
(
	[codFormaPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FormasPago] ([codFormaPago], [nombre], [descripcion]) VALUES (1, N'Efectivo', NULL)
INSERT [dbo].[FormasPago] ([codFormaPago], [nombre], [descripcion]) VALUES (2, N'Crédito', NULL)
INSERT [dbo].[FormasPago] ([codFormaPago], [nombre], [descripcion]) VALUES (3, N'Débito', NULL)
/****** Object:  Table [dbo].[Estados]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[codEstado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[codEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estados] ([codEstado], [nombre], [descripcion]) VALUES (1, N'Pendiente', NULL)
INSERT [dbo].[Estados] ([codEstado], [nombre], [descripcion]) VALUES (2, N'Abierta', NULL)
INSERT [dbo].[Estados] ([codEstado], [nombre], [descripcion]) VALUES (3, N'Cerrada', NULL)
INSERT [dbo].[Estados] ([codEstado], [nombre], [descripcion]) VALUES (4, N'Cobrada', NULL)
/****** Object:  Table [dbo].[Empleados]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[legajo] [int] IDENTITY(1,1) NOT NULL,
	[rol] [int] NULL,
	[nombre] [varchar](40) NULL,
	[apellido] [varchar](40) NULL,
	[domicilio] [varchar](40) NULL,
	[telefono] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[fechaNacim] [date] NULL,
	[fechaAlta] [datetime] NULL,
	[codSexo] [int] NULL,
	[usuario] [varchar](40) NULL,
	[password] [varchar](40) NULL,
	[borrado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (1, 2, N'Mauricio Jorge', N'Zapata', N'Ituzaingo 715', N'441628', N'441629', CAST(0x22220B00 AS Date), CAST(0x0000A95000000000 AS DateTime), 1, N'mzapata', N'noesunaclave', 0)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (5, 1, N'Francisco', N'Maurino', N'Montevideo 500', N'', N'11122234', CAST(0x1F1B0B00 AS Date), CAST(0x0000A95000000000 AS DateTime), 1, N'fmaurino', N'notasafepass', 0)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (6, 1, N'Isaias', N'Avalle', N'Chacabuco 300', N'1234567', N'', CAST(0xF71E0B00 AS Date), CAST(0x0000AABD011CB140 AS DateTime), 1, N'iavalle', N'asd', 0)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (17, 2, N'Galileo', N'Gomez Maurino', N'', N'', N'', CAST(0x2D400B00 AS Date), CAST(0x0000AACD00000000 AS DateTime), 1, N'gali', N'gali', 1)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (21, 1, N'Hector', N'sadasd', N'asdsad', N'sadasd', N'sadsadasd', CAST(0x2D400B00 AS Date), CAST(0x0000AAD20172B978 AS DateTime), 2, N'gali', N'123', 1)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (22, 1, N'Ricardo', N'Montaner', N'Lugones 670', N'3533422197', N'3533441578', CAST(0x411C0B00 AS Date), CAST(0x0000AAD20179DB40 AS DateTime), 1, N'Ricky', N'monti123', 0)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (23, 2, N'Galileo', N'Gomez Maurino', N'', N'', N'', CAST(0x3B400B00 AS Date), CAST(0x0000AAE001128EB8 AS DateTime), 1, N'ggmaurino', N'123', 1)
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password], [borrado]) VALUES (24, 1, N'galileo', N'gomez', N'Lugones 670', N'3533422197', N'3533441578', CAST(0x3B400B00 AS Date), CAST(0x0000AAE00121C734 AS DateTime), 1, N'asdasd', N'asd', 1)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
/****** Object:  Table [dbo].[Modelos]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelos](
	[codModelo] [int] NOT NULL,
	[codMarca] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Modelos] PRIMARY KEY CLUSTERED 
(
	[codModelo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Modelos] ([codModelo], [codMarca], [nombre], [descripcion]) VALUES (1, 1, N'Clio', NULL)
INSERT [dbo].[Modelos] ([codModelo], [codMarca], [nombre], [descripcion]) VALUES (2, 1, N'Sandero', NULL)
INSERT [dbo].[Modelos] ([codModelo], [codMarca], [nombre], [descripcion]) VALUES (3, 2, N'i3', NULL)
INSERT [dbo].[Modelos] ([codModelo], [codMarca], [nombre], [descripcion]) VALUES (4, 2, N'M240i Coupé', NULL)
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[dni] [int] NOT NULL,
	[apellido] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[domicilio] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[fechaNacimiento] [date] NULL,
	[codSexo] [int] NULL,
	[borrado] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (123, N'sadadsasd', N'fsafasf', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (213, N'das', N'dsa', N'', N'', N'', N'', CAST(0x35400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (4545, N'kx', N'dsa', N'', N'', N'', N'', CAST(0x35400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (4546, N'aaa', N'aa', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 1, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (5555, N'Muñoz', N'Lisandro', N'', N'', N'', N'', CAST(0x7C160B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (8889, N'dsadsa', N'ddd22', N'', N'', N'', N'', CAST(0x35400B00 AS Date), 1, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (12322, N'saa', N'dsa', N'', N'', N'', N'', CAST(0x35400B00 AS Date), 1, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (34564, N'fasfad', N'sdasfd', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (34565, N'trefs', N'567', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (41034, N'asdasd', N'daas', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 1, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (454654, N'Aguirre', N'Marta', N'Avellaneda 573', N'marty23@yahoo.com.cl', N'1232133', N'423213', CAST(0xE7A40A00 AS Date), 2, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (1235565, N'Ferreyra', N'Hilda', N'Estrada 59', N'hildaxd22@yahoo.com', N'3514555455', NULL, CAST(0x15C50A00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (3464545, N'asdasd', N'sadasd', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 1, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (4567546, N'Ca', N'Mi', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 1)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (4567755, N'Prueba', N'Pepe', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (12353678, N'Casas', N'Ernesto', N'', N'', N'', N'', CAST(0x46400B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (12365917, N'Maurino', N'Francisco', N'', N'', N'', N'', CAST(0x3C400B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (17879132, N'Perez', N'Jorge', N'Irigoyen 132', N'jorge.p@gmail.com', N'3518734512', NULL, CAST(0x2AF80A00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (25445698, N'Novello', N'Pedro', N'P.L. Funes 125', N'pedrosnovello@gmail.com', N'3472545869', NULL, CAST(0x2D210B00 AS Date), 2, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (41034037, N'Zapata', N'Mauricio', N'Ituzaingo 715', N'mauriciozapata3081@gmail.com', N'', N'3533441628', CAST(0x19220B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (41035678, N'Menendez', N'Rosa', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (41266417, N'Alvarez', N'Juan Carlos', N'Ituzaingó 715', N'juankalvarez@gmail.com', N'3514568792', NULL, CAST(0x72120B00 AS Date), 1, 0)
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [codSexo], [borrado]) VALUES (49876987, N'La Del Barrio', N'Pepita', N'', N'', N'', N'', CAST(0x34400B00 AS Date), 2, 0)
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[patente] [varchar](50) NOT NULL,
	[dni] [int] NULL,
	[codMarca] [int] NULL,
	[codModelo] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'AB200KL', 41034037, 2, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'ABC', 12365917, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'dsadsa', 12322, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'dsadsa2', 12322, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'GLX233', 12365917, 1, 1, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'GPK681', 41034037, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'GXL123', 41034037, 2, NULL, NULL, 1)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'HGL412', 12353678, 2, 4, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'HJGLD', 123, 2, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'ILO269', 25445698, 2, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'jajajaj', 213, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'KXK510', 1235565, 2, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'pll222', 8889, 1, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'saddas', 4545, 2, NULL, NULL, 0)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion], [borrado]) VALUES (N'VHL132', 17879132, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[Repuestos]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Repuestos](
	[codRepuesto] [int] IDENTITY(1,1) NOT NULL,
	[codMarca] [int] NULL,
	[codModelo] [int] NULL,
	[nombre] [varchar](40) NULL,
	[descripcion] [varchar](50) NULL,
	[precioUnitario] [decimal](8, 2) NULL,
	[stock] [int] NULL,
	[fabricante] [varchar](50) NULL,
	[borrado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codRepuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Repuestos] ON
INSERT [dbo].[Repuestos] ([codRepuesto], [codMarca], [codModelo], [nombre], [descripcion], [precioUnitario], [stock], [fabricante], [borrado]) VALUES (6, 1, 3, N'Bujia', N'Bujia Renault', CAST(500.00 AS Decimal(8, 2)), 3, N'', 0)
INSERT [dbo].[Repuestos] ([codRepuesto], [codMarca], [codModelo], [nombre], [descripcion], [precioUnitario], [stock], [fabricante], [borrado]) VALUES (7, 2, 4, N'Prueba', N'rtgfas', CAST(455.00 AS Decimal(8, 2)), 1, N'', 0)
INSERT [dbo].[Repuestos] ([codRepuesto], [codMarca], [codModelo], [nombre], [descripcion], [precioUnitario], [stock], [fabricante], [borrado]) VALUES (8, 1, 2, N'asdasdas', N'', CAST(4564.00 AS Decimal(8, 2)), 0, N'sadsadsad', 0)
SET IDENTITY_INSERT [dbo].[Repuestos] OFF
/****** Object:  Table [dbo].[Ordenes]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordenes](
	[codOrden] [int] IDENTITY(1,1) NOT NULL,
	[codEstado] [int] NULL,
	[patente] [varchar](50) NULL,
	[dniCliente] [int] NULL,
	[formaPago] [int] NULL,
	[cantidadCombustible] [int] NULL,
	[kilometraje] [int] NULL,
	[fechaAlta] [date] NULL,
	[fechaCierre] [date] NULL,
	[HoraAlta] [time](7) NULL,
	[HoraCierre] [time](7) NULL,
	[descripcionFalla] [varchar](90) NULL,
	[fechaPago] [date] NULL,
	[montoTotal] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[codOrden] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ordenes] ON
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (7, 1, N'VHL132', 17879132, NULL, 9, 30000, CAST(0xEF3F0B00 AS Date), CAST(0xF83F0B00 AS Date), CAST(0x0700DCB245850000 AS Time), CAST(0x0700A133845B0000 AS Time), N'Falla motor', NULL, CAST(50000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (8, 2, N'AB200KL', 41266417, NULL, 25, 45123, CAST(0x0E400B00 AS Date), CAST(0x1F400B00 AS Date), CAST(0x0780BD01AE850000 AS Time), CAST(0x0780EC2344620000 AS Time), N'Cambio Filtros', NULL, CAST(4500.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (9, 2, N'GPK681', 1235565, NULL, 17, 250400, CAST(0xCA310B00 AS Date), CAST(0xB13F0B00 AS Date), CAST(0x078008E28A9B0000 AS Time), CAST(0x078070C8B2890000 AS Time), N'Cambio Correas', NULL, CAST(40000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (10, 3, N'ILO269', 25445698, NULL, 15, 89005, CAST(0x37330B00 AS Date), CAST(0xE63F0B00 AS Date), CAST(0x078034158C9F0000 AS Time), CAST(0x078000CBD1910000 AS Time), N'Reparación Inyectores', NULL, CAST(3000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (11, 4, N'KXK510', 1235565, 2, 33, 950452, CAST(0x343D0B00 AS Date), CAST(0xF83F0B00 AS Date), CAST(0x0780E9AA5F9A0000 AS Time), CAST(0x0780B0E3119D0000 AS Time), N'Cambio Bujías', CAST(0x03400B00 AS Date), CAST(6000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (16, 2, N'GLX233', 12365917, 3, 123, 12312, CAST(0x46400B00 AS Date), CAST(0x5B950A00 AS Date), NULL, NULL, N'asasdad', CAST(0x00000000 AS Date), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (17, 2, N'GLX233', 12365917, 3, 123, 12312, CAST(0x46400B00 AS Date), CAST(0x5B950A00 AS Date), NULL, NULL, N'asasdad', CAST(0x00000000 AS Date), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (34, 2, N'GLX233', 12365917, 3, 123, 123, CAST(0x46400B00 AS Date), CAST(0x5B950A00 AS Date), NULL, NULL, N'asd', CAST(0x00000000 AS Date), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (35, 2, N'GLX233', 12365917, 3, 12, 30000, CAST(0x46400B00 AS Date), CAST(0x5B950A00 AS Date), NULL, NULL, N'Descripcion OT', CAST(0x00000000 AS Date), CAST(2455.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (36, 2, N'HGL412', 12353678, 3, 12, 123123, CAST(0x46400B00 AS Date), CAST(0x5B950A00 AS Date), NULL, NULL, N'Descripcion de una falla', CAST(0x00000000 AS Date), CAST(0.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Ordenes] OFF
/****** Object:  Table [dbo].[DetallesOrdenTrabajo]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesOrdenTrabajo](
	[codOrden] [int] NOT NULL,
	[numTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[legajoEmpleado] [int] NULL,
	[descripcion] [varchar](90) NULL,
	[monto] [decimal](8, 2) NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_DetallesOT] PRIMARY KEY CLUSTERED 
(
	[codOrden] ASC,
	[numTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DetallesOrdenTrabajo] ON
INSERT [dbo].[DetallesOrdenTrabajo] ([codOrden], [numTrabajo], [legajoEmpleado], [descripcion], [monto], [borrado]) VALUES (34, 1, 5, N'asd', CAST(623.00 AS Decimal(8, 2)), 0)
INSERT [dbo].[DetallesOrdenTrabajo] ([codOrden], [numTrabajo], [legajoEmpleado], [descripcion], [monto], [borrado]) VALUES (35, 2, 5, N'trabajo 1', CAST(1455.00 AS Decimal(8, 2)), 0)
INSERT [dbo].[DetallesOrdenTrabajo] ([codOrden], [numTrabajo], [legajoEmpleado], [descripcion], [monto], [borrado]) VALUES (35, 3, 5, N'trabajo 2', CAST(1000.00 AS Decimal(8, 2)), 0)
SET IDENTITY_INSERT [dbo].[DetallesOrdenTrabajo] OFF
/****** Object:  Table [dbo].[RepuestosxTrabajos]    Script Date: 10/20/2019 01:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepuestosxTrabajos](
	[codOrden] [int] NOT NULL,
	[codRepuesto] [int] NOT NULL,
	[numTrabajo] [int] NOT NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_RepuestosxTrabajos] PRIMARY KEY CLUSTERED 
(
	[codOrden] ASC,
	[codRepuesto] ASC,
	[numTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RepuestosxTrabajos] ([codOrden], [codRepuesto], [numTrabajo], [cantidad]) VALUES (34, 6, 1, 1)
INSERT [dbo].[RepuestosxTrabajos] ([codOrden], [codRepuesto], [numTrabajo], [cantidad]) VALUES (35, 6, 2, 1)
INSERT [dbo].[RepuestosxTrabajos] ([codOrden], [codRepuesto], [numTrabajo], [cantidad]) VALUES (35, 7, 2, 1)
/****** Object:  Default [DF__DetallesO__borra__22AA2996]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[DetallesOrdenTrabajo] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Empleados__borra__1FCDBCEB]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Empleados] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Repuestos__borra__21B6055D]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Repuestos] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Vehiculos__borra__20C1E124]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Vehiculos] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  ForeignKey [FK_Clientes_Sexo]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Sexo] FOREIGN KEY([codSexo])
REFERENCES [dbo].[Sexos] ([codSexo])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Sexo]
GO
/****** Object:  ForeignKey [FK_DetallesOT_Empleados]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[DetallesOrdenTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOT_Empleados] FOREIGN KEY([legajoEmpleado])
REFERENCES [dbo].[Empleados] ([legajo])
GO
ALTER TABLE [dbo].[DetallesOrdenTrabajo] CHECK CONSTRAINT [FK_DetallesOT_Empleados]
GO
/****** Object:  ForeignKey [FK_DetallesOT_Ordenes]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[DetallesOrdenTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOT_Ordenes] FOREIGN KEY([codOrden])
REFERENCES [dbo].[Ordenes] ([codOrden])
GO
ALTER TABLE [dbo].[DetallesOrdenTrabajo] CHECK CONSTRAINT [FK_DetallesOT_Ordenes]
GO
/****** Object:  ForeignKey [FK_Empleados_Roles]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Roles] FOREIGN KEY([rol])
REFERENCES [dbo].[Roles] ([codRol])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Roles]
GO
/****** Object:  ForeignKey [FK_Empleados_Sexos]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Sexos] FOREIGN KEY([codSexo])
REFERENCES [dbo].[Sexos] ([codSexo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Sexos]
GO
/****** Object:  ForeignKey [FK_Modelos_Marcas]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Modelos]  WITH CHECK ADD  CONSTRAINT [FK_Modelos_Marcas] FOREIGN KEY([codMarca])
REFERENCES [dbo].[Marcas] ([codMarca])
GO
ALTER TABLE [dbo].[Modelos] CHECK CONSTRAINT [FK_Modelos_Marcas]
GO
/****** Object:  ForeignKey [FK_Ordenes_Clientes]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Clientes] FOREIGN KEY([dniCliente])
REFERENCES [dbo].[Clientes] ([dni])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Clientes]
GO
/****** Object:  ForeignKey [FK_Ordenes_Estados]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Estados] FOREIGN KEY([codEstado])
REFERENCES [dbo].[Estados] ([codEstado])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Estados]
GO
/****** Object:  ForeignKey [FK_Ordenes_FormasPago]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_FormasPago] FOREIGN KEY([formaPago])
REFERENCES [dbo].[FormasPago] ([codFormaPago])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_FormasPago]
GO
/****** Object:  ForeignKey [FK_Ordenes_Vehiculos]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Vehiculos] FOREIGN KEY([patente])
REFERENCES [dbo].[Vehiculos] ([patente])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Vehiculos]
GO
/****** Object:  ForeignKey [FK_Repuestos_Marcas]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD  CONSTRAINT [FK_Repuestos_Marcas] FOREIGN KEY([codMarca])
REFERENCES [dbo].[Marcas] ([codMarca])
GO
ALTER TABLE [dbo].[Repuestos] CHECK CONSTRAINT [FK_Repuestos_Marcas]
GO
/****** Object:  ForeignKey [FK_Repuestos_Modelos]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD  CONSTRAINT [FK_Repuestos_Modelos] FOREIGN KEY([codModelo])
REFERENCES [dbo].[Modelos] ([codModelo])
GO
ALTER TABLE [dbo].[Repuestos] CHECK CONSTRAINT [FK_Repuestos_Modelos]
GO
/****** Object:  ForeignKey [FK_RxT_DetallesOrdenTrabajo]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[RepuestosxTrabajos]  WITH CHECK ADD  CONSTRAINT [FK_RxT_DetallesOrdenTrabajo] FOREIGN KEY([codOrden], [numTrabajo])
REFERENCES [dbo].[DetallesOrdenTrabajo] ([codOrden], [numTrabajo])
GO
ALTER TABLE [dbo].[RepuestosxTrabajos] CHECK CONSTRAINT [FK_RxT_DetallesOrdenTrabajo]
GO
/****** Object:  ForeignKey [FK_RxT_Repuestos]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[RepuestosxTrabajos]  WITH CHECK ADD  CONSTRAINT [FK_RxT_Repuestos] FOREIGN KEY([codRepuesto])
REFERENCES [dbo].[Repuestos] ([codRepuesto])
GO
ALTER TABLE [dbo].[RepuestosxTrabajos] CHECK CONSTRAINT [FK_RxT_Repuestos]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Clientes]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Clientes] FOREIGN KEY([dni])
REFERENCES [dbo].[Clientes] ([dni])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Clientes]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Marcas]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Marcas] FOREIGN KEY([codMarca])
REFERENCES [dbo].[Marcas] ([codMarca])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Marcas]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Modelos]    Script Date: 10/20/2019 01:40:04 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Modelos] FOREIGN KEY([codModelo])
REFERENCES [dbo].[Modelos] ([codModelo])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Modelos]
GO
