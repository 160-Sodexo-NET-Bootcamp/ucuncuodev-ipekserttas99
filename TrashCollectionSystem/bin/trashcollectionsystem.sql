USE [trashcollectionsystem]
GO
/****** Object:  Table [dbo].[Container]    Script Date: 5.01.2022 23:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Container](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContainerName] [nvarchar](50) NULL,
	[Latitude] [decimal](10, 6) NULL,
	[Longitude] [decimal](10, 6) NULL,
	[VehicleId] [int] NULL,
 CONSTRAINT [PK_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 5.01.2022 23:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleName] [nvarchar](50) NULL,
	[VehiclePlate] [nvarchar](14) NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
