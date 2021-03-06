USE [WebPhim]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[idBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[idPhim] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[idBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[idChuDe] [int] IDENTITY(1,1) NOT NULL,
	[tenChuDe] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[idChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[idPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Anh] [varchar](500) NOT NULL,
	[Link] [varchar](max) NOT NULL,
	[LuotXem] [int] NOT NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[idPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim_ChuDe]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim_ChuDe](
	[idChuDe] [int] NOT NULL,
	[idPhim] [int] NOT NULL,
 CONSTRAINT [PK_Phim_ChuDe] PRIMARY KEY CLUSTERED 
(
	[idChuDe] ASC,
	[idPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenSuDung]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenSuDung](
	[idQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QuyenSuDung] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenUser]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenUser](
	[idQuyen] [int] NOT NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuyenUser] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC,
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/25/2021 9:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[PassWord] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (1, N'MyLinh49', 4, N'Phim thật là dễ thương')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (2, N'MyLinh49', 5, N'Xem không hú hồn mới lạ')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (5, N'NhuQuynh89', 2, N'Phép thuật chíu chíu')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (6, N'NhuQuynh89', 3, N'Anime mà toàn troai đẹppppp')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (7, N'ThanhTinh08', 6, N'Hơi tào lao mà cười lộn ruột')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (10, N'ThanhTinh08', 9, N'Chị chị em em cây cà lem')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (11, N'ThanhTinh08', 8, N'Bùm chéo Bùm chéo, chết queo')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (12, N'DuyPhuc77', 7, N'hạnh phúc quá trời')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (13, N'DuyPhuc77', 2, N'Ôi những cô gái, vẽ thôi mà, hehe')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (14, N'admin', 2, N'Các bạn cứ bình tĩnh')
INSERT [dbo].[BinhLuan] ([idBinhLuan], [TenTaiKhoan], [idPhim], [NoiDung]) VALUES (15, N'admin', 5, N'Để ad xem thử')
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (1, N'Kinh dị')
INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (2, N'Trinh thám')
INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (3, N'Tình cảm')
INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (4, N'Hoạt hình')
INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (5, N'Hành động')
INSERT [dbo].[ChuDe] ([idChuDe], [tenChuDe]) VALUES (6, N'Tâm lý')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (2, N'Chuyển sinh sang thế giới khác', N'Mushoku Tensei: Isekai Ittara Honki Dasu (Season 2)', N'/Content/images/phim2.jpg', N'blob:https://sv1.streamvip.xyz/805e5c22-8cbc-45db-8f20-026ef1348ba6', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (3, N'Những chàng trai Sanrio', N'Sanrio boys', N'/Content/images/phim3.jpg', N'blob:https://sv1.streamvip.xyz/de589045-3a0d-4281-8b73-fd175397c40e', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (4, N'Chú mèo máy đến từ tương lai', N'Doraemon', N'/Content/images/phim4.jpg', N'blob:https://sv1.streamvip.xyz/ae5cd431-c871-444e-9fa1-321c1a0749b5', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (5, N'Vòng tròn tử thần', N'Rings', N'/Content/images/phim5.jpg', N'blob:https://sv1.streamvip.xyz/fa2c9f21-5c9e-4333-bbbd-a694f1f9ad07', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (6, N'Thám tử gà mơ', N'The Accidental Detective 2: In Action (2018)', N'/Content/images/phim6.jpg', N'blob:https://sv1.streamvip.xyz/54b7ed07-b54b-40bb-b5e6-5c480fbbbe6d', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (7, N'Khúc ca tình yêu', N'Song to Song', N'/Content/images/phim7.jpg', N'blob:https://sv1.streamvip.xyz/e8c0bc15-df55-40a4-a215-778da34269af', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (8, N'Thiên la địa võng', N'Manhunt (2017)', N'/Content/images/phim8.jpg', N'blob:https://sv1.streamvip.xyz/a55f1a63-85d4-4d56-9e40-5e9326ffd98d', 0)
INSERT [dbo].[Phim] ([idPhim], [TenPhim], [MoTa], [Anh], [Link], [LuotXem]) VALUES (9, N'Em họ Rachel', N'My Cousin Rachel (2017)', N'/Content/images/emhoRachel.png', N'blob:https://sv1.streamvip.xyz/1b20cd5f-7710-4ab4-8c15-3b3b5c730ccf', 0)
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (1, 5)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (2, 6)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (3, 2)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (3, 7)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (3, 9)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (4, 2)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (4, 3)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (4, 4)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (5, 2)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (5, 8)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (6, 7)
INSERT [dbo].[Phim_ChuDe] ([idChuDe], [idPhim]) VALUES (6, 9)
GO
SET IDENTITY_INSERT [dbo].[QuyenSuDung] ON 

INSERT [dbo].[QuyenSuDung] ([idQuyen], [TenQuyen]) VALUES (1, N'admin')
INSERT [dbo].[QuyenSuDung] ([idQuyen], [TenQuyen]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[QuyenSuDung] OFF
GO
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (1, N'admin', NULL)
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (2, N'admin', NULL)
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (2, N'DuyPhuc77', NULL)
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (2, N'MyLinh49', NULL)
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (2, N'NhuQuynh89', NULL)
INSERT [dbo].[QuyenUser] ([idQuyen], [TenTaiKhoan], [note]) VALUES (2, N'ThanhTinh08', NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [PassWord]) VALUES (N'admin', N'admin')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [PassWord]) VALUES (N'DuyPhuc77', N'12345678')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [PassWord]) VALUES (N'MyLinh49', N'12345678')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [PassWord]) VALUES (N'NhuQuynh89', N'12345678')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [PassWord]) VALUES (N'ThanhTinh08', N'12345678')
GO
ALTER TABLE [dbo].[Phim] ADD  CONSTRAINT [DF_Phim_LuotXem]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([idPhim])
REFERENCES [dbo].[Phim] ([idPhim])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_TaiKhoan] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_TaiKhoan]
GO
ALTER TABLE [dbo].[Phim_ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_Phim_ChuDe_ChuDe] FOREIGN KEY([idChuDe])
REFERENCES [dbo].[ChuDe] ([idChuDe])
GO
ALTER TABLE [dbo].[Phim_ChuDe] CHECK CONSTRAINT [FK_Phim_ChuDe_ChuDe]
GO
ALTER TABLE [dbo].[Phim_ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_Phim_ChuDe_Phim] FOREIGN KEY([idPhim])
REFERENCES [dbo].[Phim] ([idPhim])
GO
ALTER TABLE [dbo].[Phim_ChuDe] CHECK CONSTRAINT [FK_Phim_ChuDe_Phim]
GO
ALTER TABLE [dbo].[QuyenUser]  WITH CHECK ADD  CONSTRAINT [FK_QuyenUser_QuyenSuDung] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[QuyenSuDung] ([idQuyen])
GO
ALTER TABLE [dbo].[QuyenUser] CHECK CONSTRAINT [FK_QuyenUser_QuyenSuDung]
GO
ALTER TABLE [dbo].[QuyenUser]  WITH CHECK ADD  CONSTRAINT [FK_QuyenUser_TaiKhoan] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[QuyenUser] CHECK CONSTRAINT [FK_QuyenUser_TaiKhoan]
GO
