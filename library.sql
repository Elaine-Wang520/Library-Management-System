/****** Object:  Table [dbo].[BookAdmin]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
/****** Object:  Table [dbo].[BookInfo]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
/****** Object:  Table [dbo].[BorrowRecords]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
/****** Object:  Table [dbo].[SystemAdmin]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
/****** Object:  Table [dbo].[User1]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/12/27 星期五 13:21:05 ******/
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
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11503070304', N'尧伟', N'123466', N'13982255796', N'8557@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990107', N'罗瑞雪', N'123467', N'13982255797', N'8558@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990110', N'勾雷', N'123468', N'13982255798', N'8559@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990114', N'张梦琳', N'123469', N'13982255799', N'8560@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990128', N'刘杰', N'123470', N'13982255800', N'8561@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990202', N'邢静丽', N'123471', N'13982255801', N'8562@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990318', N'李玉', N'123472', N'13982255802', N'8563@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990508', N'叶孟宪', N'123456', N'13982255786', N'8547@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990509', N'毛伟', N'123457', N'13982255787', N'8548@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990513', N'周阳', N'123458', N'13982255788', N'8549@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990517', N'周亚男', N'123459', N'13982255789', N'8550@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990518', N'古姣', N'123460', N'13982255790', N'8551@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990533', N'游雅晴', N'123461', N'13982255791', N'8552@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990535', N'王蟒', N'123462', N'13982255792', N'8553@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990630', N'陈强', N'123473', N'13982255803', N'8564@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990707', N'徐甜', N'123463', N'13982255793', N'8554@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990717', N'程平平', N'123464', N'13982255794', N'8555@qq.com')
INSERT [dbo].[BookAdmin] ([AdId], [AdName], [AdPassord], [AdPhone], [AdEmail]) VALUES (N'11603990803', N'方佳盛', N'123465', N'13982255795', N'8556@qq.com')
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'1', N'西游记', N'小明', N'李1', 22, N'12345', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'10', N'PHP', N'王6', N'李10', 31, N'12354', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'11', N'Linux', N'王7', N'李11', 32, N'12355', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'12', N'数据库', N'王8', N'李12', 33, N'12356', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'13', N'操作系统', N'王9', N'李13', 34, N'12357', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'14', N'web应用', N'王10', N'李14', 35, N'12358', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'15', N'大数据', N'王11', N'李15', 36, N'12359', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'2', N'水浒传', N'小红', N'李2', 23, N'12346', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'3', N'红楼梦', N'小李', N'李3', 24, N'12347', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'4', N'三国演义', N'小张', N'李4', 25, N'12348', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'5', N'C++', N'王1', N'李5', 26, N'12349', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'6', N'C语言', N'王2', N'李6', 27, N'12350', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'7', N'Java', N'王3', N'李7', 28, N'12351', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BookInfo] ([BookId], [BookName], [Author], [Translator], [Price], [ISBNCode], [ComeUpTime], [PublishCompany], [State], [EnteringMen], [EnteringDate]) VALUES (N'8', N'Python', N'王4', N'李8', 29, N'12352', CAST(N'2017-05-22 12:25:12.000' AS DateTime), N'清华出版社', 1, N'lili', CAST(N'2019-05-22 12:25:12.000' AS DateTime))
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (1, N'11603990232', N'1', N'西游记', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-15 13:20:12.000' AS DateTime), CAST(N'2019-05-30 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (2, N'11603990234', N'10', N'PHP', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-16 13:20:12.000' AS DateTime), CAST(N'2019-05-31 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (3, N'11603990236', N'11', N'Linux', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-17 13:20:12.000' AS DateTime), CAST(N'2019-06-01 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (4, N'11603990305', N'12', N'数据库', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-18 13:20:12.000' AS DateTime), CAST(N'2019-06-02 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (5, N'11603990308', N'13', N'操作系统', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-19 13:20:12.000' AS DateTime), CAST(N'2019-06-03 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (6, N'11603990309', N'14', N'web应用', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-20 13:20:12.000' AS DateTime), CAST(N'2019-06-04 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (7, N'11603990310', N'15', N'大数据', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-21 13:20:12.000' AS DateTime), CAST(N'2019-06-05 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (8, N'11603990312', N'2', N'水浒传', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-22 13:20:12.000' AS DateTime), CAST(N'2019-05-30 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (9, N'11603990315', N'3', N'红楼梦', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-23 13:20:12.000' AS DateTime), CAST(N'2019-05-31 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (10, N'11603990322', N'4', N'三国演义', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-24 13:20:12.000' AS DateTime), CAST(N'2019-06-01 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (11, N'11603990333', N'5', N'C++', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-25 13:20:12.000' AS DateTime), CAST(N'2019-06-02 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (12, N'11603990337', N'6', N'C语言', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-26 13:20:12.000' AS DateTime), CAST(N'2019-06-03 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (13, N'11603990401', N'7', N'Java', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-27 13:20:12.000' AS DateTime), CAST(N'2019-06-04 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[BorrowRecords] ([BorrowID], [UserId], [BookId], [BookName], [BorrowTime], [ShouldTime], [ReturnTime], [State]) VALUES (14, N'11603990403', N'8', N'Python', CAST(N'2019-05-25 13:20:12.000' AS DateTime), CAST(N'2019-06-28 13:20:12.000' AS DateTime), CAST(N'2019-06-05 13:20:12.000' AS DateTime), 1)
INSERT [dbo].[SystemAdmin] ([AdminId], [AdminName], [AdminPassword], [AdminPhone], [AdminEmail]) VALUES (N'11603990211', N'王镜', N'19980708', N'13983485376', N'85@qq.com')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990232', N'秦贵双', N'123463')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990234', N'张毅', N'123515')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990236', N'淳苏娅', N'123547')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990305', N'王松', N'123508')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990308', N'邓杰', N'123509')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990309', N'傅振华', N'123510')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990310', N'颜明阳', N'123516')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990312', N'周夕翔', N'123517')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990315', N'欧阳林', N'123518')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990322', N'汪林', N'123519')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990333', N'李昀光', N'123464')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990337', N'刘晓翔', N'123465')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990401', N'陈西华', N'123466')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990403', N'刘紫含', N'123467')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990404', N'孙剑鹏', N'123520')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990410', N'马琳', N'123468')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990411', N'蒋畅', N'123546')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990413', N'刘洪伶', N'123469')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990418', N'饶凤玲', N'123470')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990421', N'李智贤', N'123471')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990422', N'张运平', N'123472')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990423', N'李航', N'123473')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990425', N'毛敏', N'123474')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990426', N'杨相', N'123545')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990431', N'刘宗森', N'123475')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990432', N'李丽', N'123476')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990434', N'秦德万', N'123477')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990436', N'张学诚', N'123478')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990437', N'王全一', N'123479')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990438', N'李莹', N'123521')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990439', N'倪倩雯', N'123480')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990502', N'康岩', N'123522')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990505', N'焦丹杨', N'123481')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990512', N'向志奇', N'123482')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990521', N'张钦蓉', N'123483')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990523', N'袁孟琴', N'123523')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990528', N'刘鑫宇', N'123484')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990532', N'朱文轩', N'123524')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990537', N'马语晗', N'123485')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990601', N'孙登峰', N'123486')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990603', N'曹茜', N'123487')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990608', N'黄菲斯', N'123488')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990612', N'王光梅', N'123489')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990613', N'姜鹏', N'123525')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990619', N'李信春', N'123490')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990622', N'余浪', N'123491')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990625', N'向富祥', N'123492')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990626', N'卢海兵', N'123493')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990627', N'陈聪', N'123494')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990628', N'邹昊', N'123495')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990632', N'沈文昊', N'123526')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990633', N'张浩博', N'123527')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990638', N'赵帅楠', N'123496')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990639', N'应锦园', N'123497')
INSERT [dbo].[User1] ([UserId], [UserName], [Password]) VALUES (N'11603990702', N'冯松', N'123498')
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990232', N'计算机', N'计科', N'15826995854', N'158@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990234', N'计算机', N'计科', N'15826995855', N'159@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990236', N'计算机', N'计科', N'15826995856', N'160@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990305', N'计算机', N'计科', N'15826995857', N'161@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990308', N'计算机', N'计科', N'15826995858', N'162@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990309', N'计算机', N'计科', N'15826995859', N'163@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990310', N'计算机', N'计科', N'15826995860', N'164@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990312', N'计算机', N'计科', N'15826995861', N'165@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990315', N'计算机', N'计科', N'15826995862', N'166@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990322', N'计算机', N'计科', N'15826995863', N'167@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990333', N'计算机', N'计科', N'15826995864', N'168@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990337', N'计算机', N'计科', N'15826995865', N'169@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990401', N'计算机', N'计科', N'15826995866', N'170@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990403', N'计算机', N'计科', N'15826995867', N'171@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990404', N'计算机', N'计科', N'15826995868', N'172@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990410', N'计算机', N'计科', N'15826995869', N'173@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990411', N'计算机', N'计科', N'15826995870', N'174@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990413', N'计算机', N'计科', N'15826995871', N'175@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990418', N'计算机', N'计科', N'15826995872', N'176@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990421', N'计算机', N'计科', N'15826995873', N'177@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990422', N'计算机', N'计科', N'15826995874', N'178@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990423', N'计算机', N'计科', N'15826995875', N'179@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990425', N'计算机', N'计科', N'15826995876', N'180@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990426', N'计算机', N'计科', N'15826995877', N'181@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990431', N'计算机', N'计科', N'15826995878', N'182@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990432', N'计算机', N'计科', N'15826995879', N'183@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990434', N'计算机', N'计科', N'15826995880', N'184@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990436', N'计算机', N'计科', N'15826995881', N'185@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990437', N'计算机', N'计科', N'15826995882', N'186@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990438', N'计算机', N'计科', N'15826995883', N'187@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990439', N'计算机', N'计科', N'15826995884', N'188@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990502', N'计算机', N'计科', N'15826995885', N'189@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990505', N'计算机', N'计科', N'15826995886', N'190@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990512', N'计算机', N'计科', N'15826995887', N'191@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990521', N'计算机', N'计科', N'15826995888', N'192@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990523', N'计算机', N'计科', N'15826995889', N'193@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990528', N'计算机', N'计科', N'15826995890', N'194@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990532', N'计算机', N'计科', N'15826995891', N'195@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990537', N'计算机', N'计科', N'15826995892', N'196@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990601', N'计算机', N'计科', N'15826995893', N'197@qq.com', 5, 10, 1)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990603', N'计算机', N'计科', N'15826995894', N'198@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990608', N'计算机', N'计科', N'15826995895', N'199@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990612', N'计算机', N'计科', N'15826995896', N'200@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990613', N'计算机', N'计科', N'15826995897', N'201@qq.com', 5, 10, 2)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990619', N'计算机', N'计科', N'15826995898', N'202@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990622', N'计算机', N'计科', N'15826995899', N'203@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990625', N'计算机', N'计科', N'15826995900', N'204@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990626', N'计算机', N'计科', N'15826995901', N'205@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990627', N'计算机', N'计科', N'15826995902', N'206@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990628', N'计算机', N'计科', N'15826995903', N'207@qq.com', 5, 10, 0)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990632', N'计算机', N'计科', N'15826995904', N'208@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990633', N'计算机', N'计科', N'15826995905', N'209@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990638', N'计算机', N'计科', N'15826995906', N'210@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990639', N'计算机', N'计科', N'15826995907', N'211@qq.com', 5, 10, 3)
INSERT [dbo].[UserInfo] ([UserId], [Departments], [Major], [Phone], [Email], [Max], [Time], [LendedNum]) VALUES (N'11603990702', N'计算机', N'计科', N'15826995908', N'212@qq.com', 5, 10, 3)
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
