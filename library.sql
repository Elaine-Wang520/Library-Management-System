/****** Object:  Table [dbo].[BookAdmin]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookAdmin](
	[AdId] [varchar](20) NOT NULL,
	[AdName] [varchar](20) NOT NULL,
	[AdPassord] [varchar](20) NOT NULL,
	[AdPhone] [varchar](20) NOT NULL,
	[AdEmail] [varchar](20) NULL,
 CONSTRAINT [PK_BookAdmin] PRIMARY KEY CLUSTERED 
(
	[AdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookInfo]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookInfo](
	[BookId] [varchar](20) NOT NULL,
	[BookName] [varchar](20) NOT NULL,
	[Author] [varchar](20) NOT NULL,
	[Translator] [varchar](20) NULL,
	[Price] [float] NOT NULL,
	[ISBNCode] [varchar](20) NOT NULL,
	[ComeUpTime] [datetime] NOT NULL,
	[PublishCompany] [varchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[EnteringMen] [varchar](20) NOT NULL,
	[EnteringDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BookInfo] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BorrowRecords]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BorrowRecords](
	[BorrowID] [int] NOT NULL,
	[UserId] [varchar](20) NOT NULL,
	[BookId] [varchar](20) NOT NULL,
	[BookName] [varchar](20) NOT NULL,
	[BorrowTime] [datetime] NOT NULL,
	[ShouldTime] [datetime] NOT NULL,
	[ReturnTime] [datetime] NULL,
	[State] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BorrowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemAdmin]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemAdmin](
	[AdminId] [varchar](20) NOT NULL,
	[AdminName] [varchar](20) NOT NULL,
	[AdminPassword] [varchar](20) NOT NULL,
	[AdminPhone] [varchar](20) NOT NULL,
	[AdminEmail] [varchar](20) NULL,
 CONSTRAINT [PK_SystemAdmin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User1]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User1](
	[UserId] [varchar](20) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_User1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/12/27 ������ 13:21:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [varchar](20) NOT NULL,
	[Departments] [varchar](20) NOT NULL,
	[Major] [varchar](20) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[Max] [int] NOT NULL,
	[Time] [int] NOT NULL,
	[LendedNum] [int] NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11503070304', N'Ңΰ', N'123466', N'13982255796', N'8557@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990107', N'����ѩ', N'123467', N'13982255797', N'8558@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990110', N'����', N'123468', N'13982255798', N'8559@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990114', N'������', N'123469', N'13982255799', N'8560@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990128', N'����', N'123470', N'13982255800', N'8561@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990202', N'�Ͼ���', N'123471', N'13982255801', N'8562@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990318', N'����', N'123472', N'13982255802', N'8563@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990508', N'Ҷ����', N'123456', N'13982255786', N'8547@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990509', N'ëΰ', N'123457', N'13982255787', N'8548@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990513', N'����', N'123458', N'13982255788', N'8549@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990517', N'������', N'123459', N'13982255789', N'8550@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990518', N'���', N'123460', N'13982255790', N'8551@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990533', N'������', N'123461', N'13982255791', N'8552@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990535', N'����', N'123462', N'13982255792', N'8553@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990630', N'��ǿ', N'123473', N'13982255803', N'8564@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990707', N'����', N'123463', N'13982255793', N'8554@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990717', N'��ƽƽ', N'123464', N'13982255794', N'8555@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990803', N'����ʢ', N'123465', N'13982255795', N'8556@qq.com')
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'1', N'���μ�', N'С��', N'��1', 22, N'12345', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'10', N'PHP', N'��6', N'��10', 31, N'12354', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'11', N'Linux', N'��7', N'��11', 32, N'12355', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'12', N'���ݿ�', N'��8', N'��12', 33, N'12356', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'13', N'����ϵͳ', N'��9', N'��13', 34, N'12357', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'14', N'webӦ��', N'��10', N'��14', 35, N'12358', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'15', N'������', N'��11', N'��15', 36, N'12359', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'2', N'ˮ䰴�', N'С��', N'��2', 23, N'12346', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'3', N'��¥��', N'С��', N'��3', 24, N'12347', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'4', N'��������', N'С��', N'��4', 25, N'12348', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'5', N'C++', N'��1', N'��5', 26, N'12349', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'6', N'C����', N'��2', N'��6', 27, N'12350', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'7', N'Java', N'��3', N'��7', 28, N'12351', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'8', N'Python', N'��4', N'��8', 29, N'12352', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'�廪������', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (1, N'11603990232', N'1', N'���μ�', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-15 13:20:12.000' AS DateTime), CAST(N'2019-05-30 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (2, N'11603990234', N'10', N'PHP', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-16 13:20:12.000' AS DateTime), CAST(N'2019-05-31 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (3, N'11603990236', N'11', N'Linux', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-17 13:20:12.000' AS DateTime), CAST(N'2019-06-01 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (4, N'11603990305', N'12', N'���ݿ�', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-18 13:20:12.000' AS DateTime), CAST(N'2019-06-02 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (5, N'11603990308', N'13', N'����ϵͳ', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-19 13:20:12.000' AS DateTime), CAST(N'2019-06-03 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (6, N'11603990309', N'14', N'webӦ��', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-20 13:20:12.000' AS DateTime), CAST(N'2019-06-04 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (7, N'11603990310', N'15', N'������', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-21 13:20:12.000' AS DateTime), CAST(N'2019-06-05 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (8, N'11603990312', N'2', N'ˮ䰴�', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-22 13:20:12.000' AS DateTime), CAST(N'2019-05-30 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (9, N'11603990315', N'3', N'��¥��', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-23 13:20:12.000' AS DateTime), CAST(N'2019-05-31 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (10, N'11603990322', N'4', N'��������', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-24 13:20:12.000' AS DateTime), CAST(N'2019-06-01 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (11, N'11603990333', N'5', N'C++', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-25 13:20:12.000' AS DateTime), CAST(N'2019-06-02 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (12, N'11603990337', N'6', N'C����', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-26 13:20:12.000' AS DateTime), CAST(N'2019-06-03 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (13, N'11603990401', N'7', N'Java', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-27 13:20:12.000' AS DateTime), CAST(N'2019-06-04 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (14, N'11603990403', N'8', N'Python', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-28 13:20:12.000' AS DateTime), CAST(N'2019-06-05 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[SystemAdmin] ([AdminId], [AdminName], [AdminPassword], [AdminPhone], [AdminEmail]) VALUES (N'11603990211', N'����', N'19980708', N'13983485376', N'85@qq.com')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990232', N'�ع�˫', N'123463')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990234', N'����', N'123515')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990236', N'�����', N'123547')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990305', N'����', N'123508')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990308', N'�˽�', N'123509')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990309', N'����', N'123510')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990310', N'������', N'123516')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990312', N'��Ϧ��', N'123517')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990315', N'ŷ����', N'123518')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990322', N'����', N'123519')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990333', N'������', N'123464')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990337', N'������', N'123465')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990401', N'������', N'123466')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990403', N'���Ϻ�', N'123467')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990404', N'�｣��', N'123520')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990410', N'����', N'123468')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990411', N'����', N'123546')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990413', N'������', N'123469')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990418', N'�ķ���', N'123470')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990421', N'������', N'123471')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990422', N'����ƽ', N'123472')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990423', N'�', N'123473')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990425', N'ë��', N'123474')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990426', N'����', N'123545')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990431', N'����ɭ', N'123475')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990432', N'����', N'123476')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990434', N'�ص���', N'123477')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990436', N'��ѧ��', N'123478')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990437', N'��ȫһ', N'123479')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990438', N'��Ө', N'123521')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990439', N'��ٻ��', N'123480')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990502', N'����', N'123522')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990505', N'������', N'123481')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990512', N'��־��', N'123482')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990521', N'������', N'123483')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990523', N'Ԭ����', N'123523')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990528', N'������', N'123484')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990532', N'������', N'123524')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990537', N'������', N'123485')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990601', N'��Ƿ�', N'123486')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990603', N'����', N'123487')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990608', N'�Ʒ�˹', N'123488')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990612', N'����÷', N'123489')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990613', N'����', N'123525')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990619', N'���Ŵ�', N'123490')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990622', N'����', N'123491')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990625', N'����', N'123492')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990626', N'¬����', N'123493')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990627', N'�´�', N'123494')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990628', N'���', N'123495')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990632', N'�����', N'123526')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990633', N'�źƲ�', N'123527')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990638', N'��˧�', N'123496')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990639', N'Ӧ��԰', N'123497')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990702', N'����', N'123498')
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990232', N'�����', N'�ƿ�', N'15826995854', N'158@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990234', N'�����', N'�ƿ�', N'15826995855', N'159@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990236', N'�����', N'�ƿ�', N'15826995856', N'160@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990305', N'�����', N'�ƿ�', N'15826995857', N'161@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990308', N'�����', N'�ƿ�', N'15826995858', N'162@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990309', N'�����', N'�ƿ�', N'15826995859', N'163@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990310', N'�����', N'�ƿ�', N'15826995860', N'164@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990312', N'�����', N'�ƿ�', N'15826995861', N'165@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990315', N'�����', N'�ƿ�', N'15826995862', N'166@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990322', N'�����', N'�ƿ�', N'15826995863', N'167@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990333', N'�����', N'�ƿ�', N'15826995864', N'168@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990337', N'�����', N'�ƿ�', N'15826995865', N'169@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990401', N'�����', N'�ƿ�', N'15826995866', N'170@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990403', N'�����', N'�ƿ�', N'15826995867', N'171@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990404', N'�����', N'�ƿ�', N'15826995868', N'172@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990410', N'�����', N'�ƿ�', N'15826995869', N'173@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990411', N'�����', N'�ƿ�', N'15826995870', N'174@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990413', N'�����', N'�ƿ�', N'15826995871', N'175@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990418', N'�����', N'�ƿ�', N'15826995872', N'176@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990421', N'�����', N'�ƿ�', N'15826995873', N'177@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990422', N'�����', N'�ƿ�', N'15826995874', N'178@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990423', N'�����', N'�ƿ�', N'15826995875', N'179@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990425', N'�����', N'�ƿ�', N'15826995876', N'180@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990426', N'�����', N'�ƿ�', N'15826995877', N'181@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990431', N'�����', N'�ƿ�', N'15826995878', N'182@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990432', N'�����', N'�ƿ�', N'15826995879', N'183@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990434', N'�����', N'�ƿ�', N'15826995880', N'184@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990436', N'�����', N'�ƿ�', N'15826995881', N'185@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990437', N'�����', N'�ƿ�', N'15826995882', N'186@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990438', N'�����', N'�ƿ�', N'15826995883', N'187@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990439', N'�����', N'�ƿ�', N'15826995884', N'188@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990502', N'�����', N'�ƿ�', N'15826995885', N'189@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990505', N'�����', N'�ƿ�', N'15826995886', N'190@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990512', N'�����', N'�ƿ�', N'15826995887', N'191@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990521', N'�����', N'�ƿ�', N'15826995888', N'192@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990523', N'�����', N'�ƿ�', N'15826995889', N'193@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990528', N'�����', N'�ƿ�', N'15826995890', N'194@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990532', N'�����', N'�ƿ�', N'15826995891', N'195@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990537', N'�����', N'�ƿ�', N'15826995892', N'196@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990601', N'�����', N'�ƿ�', N'15826995893', N'197@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990603', N'�����', N'�ƿ�', N'15826995894', N'198@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990608', N'�����', N'�ƿ�', N'15826995895', N'199@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990612', N'�����', N'�ƿ�', N'15826995896', N'200@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990613', N'�����', N'�ƿ�', N'15826995897', N'201@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990619', N'�����', N'�ƿ�', N'15826995898', N'202@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990622', N'�����', N'�ƿ�', N'15826995899', N'203@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990625', N'�����', N'�ƿ�', N'15826995900', N'204@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990626', N'�����', N'�ƿ�', N'15826995901', N'205@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990627', N'�����', N'�ƿ�', N'15826995902', N'206@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990628', N'�����', N'�ƿ�', N'15826995903', N'207@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990632', N'�����', N'�ƿ�', N'15826995904', N'208@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990633', N'�����', N'�ƿ�', N'15826995905', N'209@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990638', N'�����', N'�ƿ�', N'15826995906', N'210@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990639', N'�����', N'�ƿ�', N'15826995907', N'211@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990702', N'�����', N'�ƿ�', N'15826995908', N'212@qq.com', 5, 10, 3)
ALTER TABLE [dbo].[BorrowRecords]  WITH CHECK ADD FOREIGN KEY([BookId])
REFERENCES [dbo].[BookInfo] ([BookId])
GO
ALTER TABLE [dbo].[BorrowRecords]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User1] ([UserId])
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User1] ([UserId])
GO
USE [master]
GO
ALTER DATABASE [library] SET  READ_WRITE 
GO
