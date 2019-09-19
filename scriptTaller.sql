USE [Taller]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 09/19/2019 17:22:05 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 09/19/2019 17:22:05 ******/
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
INSERT [dbo].[Roles] ([codRol], [nombre], [descripcion]) VALUES (1, N'Desarrollador', N'Encargado del desarrollo')
INSERT [dbo].[Roles] ([codRol], [nombre], [descripcion]) VALUES (2, N'Tester', N'Encargado de las pruebas')
/****** Object:  Table [dbo].[Modelos]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelos](
	[codModelo] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Marcas]    Script Date: 09/19/2019 17:22:05 ******/
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
/****** Object:  Table [dbo].[FormasPago]    Script Date: 09/19/2019 17:22:05 ******/
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
/****** Object:  Table [dbo].[Estados]    Script Date: 09/19/2019 17:22:05 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[dni] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[domicilio] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[fechaNacimiento] [date] NULL,
	[sexo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [sexo]) VALUES (1235565, N'Ferreyra', N'Hilda', N'Estrada 59', N'hildaxd22@yahoo.com', N'3514555455', NULL, CAST(0x15C50A00 AS Date), N'2')
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [sexo]) VALUES (16502936, N'Rodriguez', N'Anabel', NULL, NULL, NULL, NULL, NULL, N'1')
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [sexo]) VALUES (17879132, N'Perez', N'Jorge', N'Irigoyen 132', N'jorge.p@gmail.com', N'3518734512', NULL, CAST(0x2AF80A00 AS Date), N'1')
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [sexo]) VALUES (25445698, N'Novello', N'Pedro', N'P.L. Funes 125', N'pedrosnovello@gmail.com', N'3472545869', NULL, CAST(0x2D210B00 AS Date), N'1')
INSERT [dbo].[Clientes] ([dni], [apellido], [nombre], [domicilio], [email], [telefono], [celular], [fechaNacimiento], [sexo]) VALUES (41266417, N'Alvarez', N'Juan Carlos', N'Ituzaingó 715', N'juankalvarez@gmail.com', N'3514568792', NULL, CAST(0x72120B00 AS Date), N'1')
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[patente] [varchar](50) NOT NULL,
	[dni] [int] NOT NULL,
	[codMarca] [int] NULL,
	[codModelo] [int] NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[patente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion]) VALUES (N'AB200KL', 41266417, NULL, NULL, NULL)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion]) VALUES (N'GPK681', 1235565, NULL, NULL, NULL)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion]) VALUES (N'ILO269', 25445698, NULL, NULL, NULL)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion]) VALUES (N'KXK510', 1235565, NULL, NULL, NULL)
INSERT [dbo].[Vehiculos] ([patente], [dni], [codMarca], [codModelo], [descripcion]) VALUES (N'VHL132', 17879132, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[legajo] [int] IDENTITY(1,1) NOT NULL,
	[rol] [int] NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[domicilio] [varchar](40) NULL,
	[telefono] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[fechaNacim] [date] NULL,
	[fechaAlta] [datetime] NOT NULL,
	[codSexo] [int] NOT NULL,
	[usuario] [varchar](40) NOT NULL,
	[password] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password]) VALUES (16, 1, N'Francisco', N'Maurino', N'', N'123456741', N'', CAST(0x28400B00 AS Date), CAST(0x0000AACD00000000 AS DateTime), 1, N'fmaurino', N'123')
INSERT [dbo].[Empleados] ([legajo], [rol], [nombre], [apellido], [domicilio], [telefono], [celular], [fechaNacim], [fechaAlta], [codSexo], [usuario], [password]) VALUES (17, 2, N'Galileo', N'Gomez Maurino', NULL, NULL, NULL, NULL, CAST(0x0000AACD00000000 AS DateTime), 1, N'gali', N'wafwaf')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
/****** Object:  Table [dbo].[Repuestos]    Script Date: 09/19/2019 17:22:05 ******/
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
PRIMARY KEY CLUSTERED 
(
	[codRepuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordenes](
	[codOrden] [int] IDENTITY(1,1) NOT NULL,
	[codEstado] [int] NOT NULL,
	[patente] [varchar](50) NOT NULL,
	[dniCliente] [int] NOT NULL,
	[formaPago] [int] NULL,
	[cantidadCombustible] [int] NOT NULL,
	[kilometraje] [int] NOT NULL,
	[fechaAlta] [date] NOT NULL,
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
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (7, 1, N'VHL132', 17879132, 1, 9, 30000, CAST(0xEF3F0B00 AS Date), CAST(0xC53F0B00 AS Date), NULL, NULL, N'Falla motor', NULL, CAST(5000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (8, 2, N'GPK681', 1235565, 1, 5, 25000, CAST(0x0E400B00 AS Date), NULL, NULL, NULL, N'Carrocería dañada', NULL, CAST(30000.00 AS Decimal(8, 2)))
INSERT [dbo].[Ordenes] ([codOrden], [codEstado], [patente], [dniCliente], [formaPago], [cantidadCombustible], [kilometraje], [fechaAlta], [fechaCierre], [HoraAlta], [HoraCierre], [descripcionFalla], [fechaPago], [montoTotal]) VALUES (9, 2, N'ILO269', 25445698, 2, 3, 40000, CAST(0x593A0B00 AS Date), NULL, NULL, NULL, N'Embrague roto', NULL, CAST(20000.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Ordenes] OFF
/****** Object:  Table [dbo].[RepuestosxTrabajos]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepuestosxTrabajos](
	[codOrden] [int] NOT NULL,
	[codRepuesto] [int] NOT NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_RepuestosxTrabajos] PRIMARY KEY CLUSTERED 
(
	[codOrden] ASC,
	[codRepuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesOrdenTrabajo]    Script Date: 09/19/2019 17:22:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesOrdenTrabajo](
	[codOrden] [int] NOT NULL,
	[numTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[legajoEmpleado] [int] NOT NULL,
	[descripcion] [varchar](90) NOT NULL,
	[monto] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_DetallesOT] PRIMARY KEY CLUSTERED 
(
	[codOrden] ASC,
	[numTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_DetallesOT_Empleados]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[DetallesOrdenTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOT_Empleados] FOREIGN KEY([legajoEmpleado])
REFERENCES [dbo].[Empleados] ([legajo])
GO
ALTER TABLE [dbo].[DetallesOrdenTrabajo] CHECK CONSTRAINT [FK_DetallesOT_Empleados]
GO
/****** Object:  ForeignKey [FK_DetallesOT_Ordenes]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[DetallesOrdenTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOT_Ordenes] FOREIGN KEY([codOrden])
REFERENCES [dbo].[Ordenes] ([codOrden])
GO
ALTER TABLE [dbo].[DetallesOrdenTrabajo] CHECK CONSTRAINT [FK_DetallesOT_Ordenes]
GO
/****** Object:  ForeignKey [FK_Empleados_Roles]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Roles] FOREIGN KEY([rol])
REFERENCES [dbo].[Roles] ([codRol])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Roles]
GO
/****** Object:  ForeignKey [FK_Empleados_Sexos]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Sexos] FOREIGN KEY([codSexo])
REFERENCES [dbo].[Sexos] ([codSexo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Sexos]
GO
/****** Object:  ForeignKey [FK_Ordenes_Clientes]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Clientes] FOREIGN KEY([dniCliente])
REFERENCES [dbo].[Clientes] ([dni])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Clientes]
GO
/****** Object:  ForeignKey [FK_Ordenes_Estados]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Estados] FOREIGN KEY([codEstado])
REFERENCES [dbo].[Estados] ([codEstado])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Estados]
GO
/****** Object:  ForeignKey [FK_Ordenes_FormasPago]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_FormasPago] FOREIGN KEY([formaPago])
REFERENCES [dbo].[FormasPago] ([codFormaPago])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_FormasPago]
GO
/****** Object:  ForeignKey [FK_Ordenes_Vehiculos]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Vehiculos] FOREIGN KEY([patente])
REFERENCES [dbo].[Vehiculos] ([patente])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Vehiculos]
GO
/****** Object:  ForeignKey [FK_Repuestos_Marcas]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD  CONSTRAINT [FK_Repuestos_Marcas] FOREIGN KEY([codMarca])
REFERENCES [dbo].[Marcas] ([codMarca])
GO
ALTER TABLE [dbo].[Repuestos] CHECK CONSTRAINT [FK_Repuestos_Marcas]
GO
/****** Object:  ForeignKey [FK_Repuestos_Modelos]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD  CONSTRAINT [FK_Repuestos_Modelos] FOREIGN KEY([codModelo])
REFERENCES [dbo].[Modelos] ([codModelo])
GO
ALTER TABLE [dbo].[Repuestos] CHECK CONSTRAINT [FK_Repuestos_Modelos]
GO
/****** Object:  ForeignKey [FK_RxT_Ordenes]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[RepuestosxTrabajos]  WITH CHECK ADD  CONSTRAINT [FK_RxT_Ordenes] FOREIGN KEY([codOrden])
REFERENCES [dbo].[Ordenes] ([codOrden])
GO
ALTER TABLE [dbo].[RepuestosxTrabajos] CHECK CONSTRAINT [FK_RxT_Ordenes]
GO
/****** Object:  ForeignKey [FK_RxT_Repuestos]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[RepuestosxTrabajos]  WITH CHECK ADD  CONSTRAINT [FK_RxT_Repuestos] FOREIGN KEY([codRepuesto])
REFERENCES [dbo].[Repuestos] ([codRepuesto])
GO
ALTER TABLE [dbo].[RepuestosxTrabajos] CHECK CONSTRAINT [FK_RxT_Repuestos]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Clientes]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Clientes] FOREIGN KEY([dni])
REFERENCES [dbo].[Clientes] ([dni])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Clientes]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Marcas]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Marcas] FOREIGN KEY([codMarca])
REFERENCES [dbo].[Marcas] ([codMarca])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Marcas]
GO
/****** Object:  ForeignKey [FK_Vehiculos_Modelos]    Script Date: 09/19/2019 17:22:05 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Modelos] FOREIGN KEY([codModelo])
REFERENCES [dbo].[Modelos] ([codModelo])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Modelos]
GO
