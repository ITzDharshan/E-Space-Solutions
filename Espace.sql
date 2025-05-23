USE [ESpace_Solution]
GO
/****** Object:  Table [dbo].[Colonist]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colonist](
	[ColonizationID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[SurName] [varchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[Qualification] [varchar](100) NULL,
	[Age] [int] NULL,
	[EarthAddress] [varchar](255) NULL,
	[Gender] [varchar](20) NULL,
	[ContactNo] [varchar](15) NULL,
	[CivilStatus] [varchar](20) NULL,
	[NumberOfDependents] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColonizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dependent]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dependent](
	[DependentID] [int] IDENTITY(1,1) NOT NULL,
	[ColonizationID] [int] NULL,
	[Name] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Age] [int] NULL,
	[Gender] [varchar](10) NULL,
	[Relationship] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DependentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[HouseID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfRooms] [int] NOT NULL,
	[SquareFeet] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jet]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jet](
	[JetID] [int] IDENTITY(1,1) NOT NULL,
	[JetCode] [varchar](50) NULL,
	[PilotID] [int] NULL,
	[EnginePower] [varchar](50) NULL,
	[MadeYear] [int] NULL,
	[Weight] [decimal](10, 2) NULL,
	[NumberOfSeats] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[JetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[ColonizationID] [int] NOT NULL,
	[Categories] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pilot]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilot](
	[PilotID] [int] IDENTITY(1,1) NOT NULL,
	[PilotName] [varchar](100) NOT NULL,
	[Qualification] [varchar](100) NOT NULL,
	[Level] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PilotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[ReportType] [varchar](100) NOT NULL,
	[ReportMessage] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripID] [int] IDENTITY(1,1) NOT NULL,
	[ColonizationID] [int] NULL,
	[DependentID] [int] NULL,
	[PilotID] [int] NULL,
	[JetCode] [varchar](50) NULL,
	[LaunchDate] [date] NULL,
	[ReturnDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/8/2025 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Role] [varchar](30) NOT NULL,
	[MobileNumber] [varchar](15) NULL,
	[Password] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Colonist] ON 

INSERT [dbo].[Colonist] ([ColonizationID], [FirstName], [MiddleName], [SurName], [DateOfBirth], [Qualification], [Age], [EarthAddress], [Gender], [ContactNo], [CivilStatus], [NumberOfDependents]) VALUES (1, N'Huslte', N'Mind', N'Co.', CAST(N'2025-03-07' AS Date), N'UnderGraduate', 23, N'Sri Lanka, Hatton.', N'Male ', N'0712345678', N'Single', 3)
SET IDENTITY_INSERT [dbo].[Colonist] OFF
GO
SET IDENTITY_INSERT [dbo].[Dependent] ON 

INSERT [dbo].[Dependent] ([DependentID], [ColonizationID], [Name], [DateOfBirth], [Age], [Gender], [Relationship]) VALUES (1, 1, N'HV. Jack sparrow', CAST(N'1995-12-14' AS Date), 18, N'Male ', N'Brother')
INSERT [dbo].[Dependent] ([DependentID], [ColonizationID], [Name], [DateOfBirth], [Age], [Gender], [Relationship]) VALUES (2, 1, N'Lisa Spark', CAST(N'2001-04-20' AS Date), 22, N'Female', N'Sister')
INSERT [dbo].[Dependent] ([DependentID], [ColonizationID], [Name], [DateOfBirth], [Age], [Gender], [Relationship]) VALUES (3, 2, N'Nelson', CAST(N'2024-12-17' AS Date), 19, N'Male ', N'Friend')
SET IDENTITY_INSERT [dbo].[Dependent] OFF
GO
SET IDENTITY_INSERT [dbo].[House] ON 

INSERT [dbo].[House] ([HouseID], [NumberOfRooms], [SquareFeet]) VALUES (1, 5, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[House] ([HouseID], [NumberOfRooms], [SquareFeet]) VALUES (3, 6, CAST(5500.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[House] OFF
GO
SET IDENTITY_INSERT [dbo].[Jet] ON 

INSERT [dbo].[Jet] ([JetID], [JetCode], [PilotID], [EnginePower], [MadeYear], [Weight], [NumberOfSeats]) VALUES (2, N'TigerV86', 1, N'6000 HP', 2002, CAST(5000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Jet] ([JetID], [JetCode], [PilotID], [EnginePower], [MadeYear], [Weight], [NumberOfSeats]) VALUES (3, N'VSt689', 1, N'6500 HP', 1990, CAST(4000.00 AS Decimal(10, 2)), 9)
SET IDENTITY_INSERT [dbo].[Jet] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobID], [ColonizationID], [Categories]) VALUES (1, 1, N'Mechanical')
INSERT [dbo].[Job] ([JobID], [ColonizationID], [Categories]) VALUES (2, 1, N'Research & Observation')
INSERT [dbo].[Job] ([JobID], [ColonizationID], [Categories]) VALUES (3, 2, N'Medical')
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Pilot] ON 

INSERT [dbo].[Pilot] ([PilotID], [PilotName], [Qualification], [Level]) VALUES (1, N'Wilbur and Orville Wright', N'Captain', N'Airo Sciencs Master Flight Engineer')
INSERT [dbo].[Pilot] ([PilotID], [PilotName], [Qualification], [Level]) VALUES (2, N'Joshap', N'Captain', N'Filght Captain')
SET IDENTITY_INSERT [dbo].[Pilot] OFF
GO
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (1, 1, N'Colonist Report', N'Medical supplies shortage reported by Unit 5.')
INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (2, 1, N'Trip Report with Passengers', N'Passenger manifest verified for Flight 11A. All safe.')
INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (3, 1, N'Jet Detail Report', N'Jet SX-03 passed all diagnostics. Ready for launch.')
INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (4, 1, N'Housing Report', N'Unit 9A ventilation issue resolved. Residents returned.')
INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (5, 1, N'Job Assignment Report', N'Assigned to Dome Maintenance team.')
INSERT [dbo].[Report] ([ReportID], [ID], [ReportType], [ReportMessage]) VALUES (6, 2, N'Jet Detail Report', N'Jet SX-03 passed all diagnostics. Ready for launch.')
SET IDENTITY_INSERT [dbo].[Report] OFF
GO
SET IDENTITY_INSERT [dbo].[Trip] ON 

INSERT [dbo].[Trip] ([TripID], [ColonizationID], [DependentID], [PilotID], [JetCode], [LaunchDate], [ReturnDate]) VALUES (1, 1, 1, 1, N'TigerV86', CAST(N'2025-05-01' AS Date), CAST(N'2025-05-04' AS Date))
INSERT [dbo].[Trip] ([TripID], [ColonizationID], [DependentID], [PilotID], [JetCode], [LaunchDate], [ReturnDate]) VALUES (2, 2, 2, 1, N'VSt689', CAST(N'2025-04-11' AS Date), CAST(N'2025-04-29' AS Date))
SET IDENTITY_INSERT [dbo].[Trip] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Username], [Role], [MobileNumber], [Password]) VALUES (1, N'admin_user', N'Admin', N'0771234567', N'admin123')
INSERT [dbo].[User] ([UserID], [Username], [Role], [MobileNumber], [Password]) VALUES (2, N'data_operator1', N'Data Entry Operator', N'0712345678', N'data123')
INSERT [dbo].[User] ([UserID], [Username], [Role], [MobileNumber], [Password]) VALUES (3, N'sys_admin', N'System Administrator', N'0759876543', N'system123')
INSERT [dbo].[User] ([UserID], [Username], [Role], [MobileNumber], [Password]) VALUES (4, N'colony_super1', N'Colony Superintendent', N'0761122334', N'colony123')
INSERT [dbo].[User] ([UserID], [Username], [Role], [MobileNumber], [Password]) VALUES (5, N'pilot_1', N'Pilot', N'0785566778', N'pilot123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD CHECK  (([Role]='Pilot' OR [Role]='Colony Superintendent' OR [Role]='System Administrator' OR [Role]='Data Entry Operator' OR [Role]='Admin'))
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD CHECK  (([Role]='Pilot' OR [Role]='Colony Superintendent' OR [Role]='System Administrator' OR [Role]='Data Entry Operator' OR [Role]='Admin'))
GO
