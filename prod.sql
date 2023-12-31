USE [master]
GO
/****** Object:  Database [aSdacha]    Script Date: 21.12.2023 22:39:34 ******/
CREATE DATABASE [aSdacha]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aSdacha', FILENAME = N'K:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\aSdacha.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aSdacha_log', FILENAME = N'K:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\aSdacha_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aSdacha] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aSdacha].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aSdacha] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aSdacha] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aSdacha] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aSdacha] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aSdacha] SET ARITHABORT OFF 
GO
ALTER DATABASE [aSdacha] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aSdacha] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aSdacha] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aSdacha] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aSdacha] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aSdacha] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aSdacha] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aSdacha] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aSdacha] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aSdacha] SET  DISABLE_BROKER 
GO
ALTER DATABASE [aSdacha] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aSdacha] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aSdacha] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aSdacha] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aSdacha] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aSdacha] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aSdacha] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aSdacha] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aSdacha] SET  MULTI_USER 
GO
ALTER DATABASE [aSdacha] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aSdacha] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aSdacha] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aSdacha] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aSdacha] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aSdacha] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [aSdacha] SET QUERY_STORE = OFF
GO
USE [aSdacha]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NULL,
	[LoginDateTime] [datetime] NULL,
	[TypeVxod] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merch]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [text] NOT NULL,
	[manufacturer] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[code] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
	[total_cost] [int] NULL,
	[delivery_days] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[point]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[point](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sostav]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sostav](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orders] [int] NOT NULL,
	[id_merch] [int] NOT NULL,
	[count] [int] NULL,
	[quantity] [int] NULL,
	[total_cost] [int] NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_sostav] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_user]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 21.12.2023 22:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1, 1, CAST(N'2023-12-21T22:15:40.097' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2, 3, CAST(N'2023-12-21T22:20:55.367' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3, 3, CAST(N'2023-12-21T22:23:11.343' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4, 3, CAST(N'2023-12-21T22:25:34.313' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5, 3, CAST(N'2023-12-21T22:32:10.490' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6, NULL, CAST(N'2023-12-21T22:32:26.790' AS DateTime), N'Не успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (7, 2, CAST(N'2023-12-21T22:32:40.440' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (8, 4, CAST(N'2023-12-21T22:34:25.713' AS DateTime), N'Успешно')
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[merch] ON 

INSERT [dbo].[merch] ([id], [photo], [name], [description], [manufacturer], [price], [discount]) VALUES (1, N'/photo/torgpom.jpg', N'Торговое помещение', N'Сдается торговое помещение', N'Продопт-Регион', 155000, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [description], [manufacturer], [price], [discount]) VALUES (2, N'/photo/stoyanka.jpg', N'Стоянка', N'Расположенна на земельном участке 3000 м2.', N'Продопт-Регион', 105000, 12)
INSERT [dbo].[merch] ([id], [photo], [name], [description], [manufacturer], [price], [discount]) VALUES (3, N'/photo/svoboda.jpg', N'Помещение свободного назначения', N'В настоящее время помещение используется под швейный цех.', N'Продопт-Регион', 55000, 10)
INSERT [dbo].[merch] ([id], [photo], [name], [description], [manufacturer], [price], [discount]) VALUES (4, N'/photo/biznes.jpg', N'Помещение под бизнес', N'Мы с готовы вам предложить в аренду складские, офисные, производственные помещения, а также помещения свободного назначения.', N'Продопт-Регион', 280000, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [description], [manufacturer], [price], [discount]) VALUES (5, N'/photo/svoboda2.jpg', N'Помещение свободного назначения', N'Под ваши нужды', N'Продопт-Регион', 520000, NULL)
SET IDENTITY_INSERT [dbo].[merch] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (4, 3, 1, 1, CAST(N'2023-12-21' AS Date), 862, 105000, 12, 104988, 6)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[point] ON 

INSERT [dbo].[point] ([id], [name]) VALUES (1, N'Помещение №1')
INSERT [dbo].[point] ([id], [name]) VALUES (2, N'Помещение №2')
INSERT [dbo].[point] ([id], [name]) VALUES (3, N'Помещение №3')
INSERT [dbo].[point] ([id], [name]) VALUES (4, N'Помещение №4')
INSERT [dbo].[point] ([id], [name]) VALUES (5, N'Помещение №5')
SET IDENTITY_INSERT [dbo].[point] OFF
GO
SET IDENTITY_INSERT [dbo].[sostav] ON 

INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (1, 4, 2, 1, 1, 105000, 12)
SET IDENTITY_INSERT [dbo].[sostav] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [status_name]) VALUES (1, N'Новый')
INSERT [dbo].[status] ([id], [status_name]) VALUES (2, N'Оформляется')
INSERT [dbo].[status] ([id], [status_name]) VALUES (3, N'Завершен')
INSERT [dbo].[status] ([id], [status_name]) VALUES (4, N'Ожидает оплаты')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[type_user] ON 

INSERT [dbo].[type_user] ([id], [role]) VALUES (1, N'Администратор')
INSERT [dbo].[type_user] ([id], [role]) VALUES (2, N'Менеджер')
INSERT [dbo].[type_user] ([id], [role]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[type_user] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (1, N'natali', N'nat1221', N'Наталия', N'/res/nat.png', 1)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (2, N'dasha', N'ad12345', N'Дарья', N'/res/dasha.png', 2)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (3, N'delpanDDD', N'12345', N'Степан', N'/res/delp.png', 3)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (4, N'client', N'12345', N'Имя', NULL, 3)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_users]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_point] FOREIGN KEY([id_point])
REFERENCES [dbo].[point] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_point]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_merch] FOREIGN KEY([id_merch])
REFERENCES [dbo].[merch] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_merch]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_orders] FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_orders]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type_user] FOREIGN KEY([id_type])
REFERENCES [dbo].[type_user] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type_user]
GO
USE [master]
GO
ALTER DATABASE [aSdacha] SET  READ_WRITE 
GO
