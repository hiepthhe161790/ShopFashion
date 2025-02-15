--drop data
--create database Assgn_PRJ301
USE [Assgn_PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'giang', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)

SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'GUCCI')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'BURBERRY')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'DOLCE & GABBANA')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Áo Polo Gucci Jacquard Striped', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/ao-polo-gucci-jacquard-striped-polo-shirt-phoi-mau-size-s-6230070b491da-15032022102459.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Áo Polo Adidas Tennis ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/10/ao-polo-adidas-tennis-club-gl5437-mau-den-size-m-617a24517e93f-28102021111721.jpg', 150, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Áo Polo Gucci Jacquard Striped', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/ao-polo-gucci-jacquard-striped-polo-shirt-phoi-mau-size-s-6230070b491da-15032022102459.jpg', 140.0000, N'Áo Polo Gucci Jacquard Striped Polo Shirt Phối Màu Size S', N'Áo Polo Gucci Jacquard Striped Polo Shirt Phối Màu được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu. Họa tiết kẻ ngang tren áo nhiều màu tạo điểm nhấn vô cùng độc đáo.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Áo Polo Adidas Tennis ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/10/ao-polo-adidas-tennis-club-gl5437-mau-den-size-m-617a24517e93f-28102021111721.jpg', 150.0000, N'Áo Polo Adidas Tennis Club GL5437 Màu Đen Size M', N'Áo Polo Adidas Tennis Club GL5437 được làm từ chất liệu 100% polyester, mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Đây chính là chiếc áo đá bóng hay hoạt động thể thao, tenis hay đi làm mà các bạn nam không thể bỏ lỡ.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Áo Polo Gucci Logo-Patch Shirt', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-logo-patch-shirt-mau-xanh-la-620c9736470e6-16022022131830.jpg', 160.0000, N'Áo Polo Gucci Logo-Patch Shirt Màu Xanh Lá', N'Áo Polo Gucci Logo-Patch Shirt Màu Xanh Lá được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu. Họa tiết logo thương hiệu Gucici phía ngực áo tạo điểm nhấn vô cùng độc đáo.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Áo Khoác Lông Vũ Adidas', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/01/ao-khoac-long-vu-adidas-essentials-midweight-down-hooded-jacket-black-gt9141-mau-den-size-m-61d42312128a1-04012022173602.jpg', 170.0000, N'Áo Khoác Lông Vũ Adidas Essentials Midweight Down Hooded Jacket Black GT9141 Màu Đen Size M', N'Áo Khoác Adidas Essentials Midweight Down Hooded Jacket Black GT9141 được làm từ chất liệu vải cao cấp, mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Bạn vừa có thể mặc đi chơi, dạo phố, du lịch... Đây là một mẫu áo dành cho những bạn yêu thích sự đơn giản nhưng không kém phần nổi bật và cuốn hút.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Áo Polo Gucci Cotton Polo', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-cotton-polo-with-bee-mau-xanh-navy-size-m-620b379a70dee-15022022121818.jpg', 120.0000, N'Áo Polo Gucci Cotton Polo With Bee Màu Xanh Navy Size M', N'Áo Gucci Cotton Polo With Bee Màu Xanh Navy được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu.Áo thiết kế cổ bẻ, tay dài mang lại cảm giác năng động, trẻ trung. Với chiếc áo thời trang này bạn có thể mặc trong nhiều hoàn cảnh khác nhau từ công sở lịch lãm đến thời trang mặc thường nhật hàng ngày...', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Áo Phông Adidas Graphic Foil', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/11/ao-phong-adidas-graphic-foil-logo-gl3704-mau-xanh-navy-size-m-61a49d4b1dcb4-29112021162843.jpg', 130.0000, N'Áo Phông Adidas Graphic Foil Logo GL3704 Màu Xanh Navy Size M', N'Áo Adidas Graphic Foil Logo GL3704 được làm từ chất liệu 100% cotton mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Đây chính là chiếc áo đá bóng hay hoạt động thể thao, tenis hay đi làm mà các bạn nam không thể bỏ lỡ.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Quần Thể Thao Adidas Word Woven Pants', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/11/quan-the-thao-adidas-word-woven-pants-gl8679-mau-den-size-s-61922f87b2a54-15112021165935.jpg', 100.0000, N'Quần Thể Thao Adidas Word Woven Pants GL8679 Màu Đen Size S', N'Quần Adidas Word Woven Pants GL8679 được làm từ chất liệu vải cao cấp, mang lại sự thoải mái, thoáng mát cho người mặc. Form quần chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Quần mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Bạn vừa có thể mặc đi chơi, dạo phố, du lịch... Đây là một mẫu quần dành cho những chàng trai yêu thích sự đơn giản nhưng không kém phần nổi bật và cuốn hút.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Quần Short Burberry Guildes', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-guildes-check-swim-shorts-5e6f2d4d4e467-16032020143957.jpg', 180.0000, N'Quần Short Burberry Guildes Check Swim Shorts', N'- Quần được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc.

- Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

- Quần họa tiết trang trí sọc ô vuông tạo điểm nhấn. 

Với chiếc quần thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu quần dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Áo Thun Dolce & Gabbana Short', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-thun-dolce-gabbana-short-sleeve-t-shirt-mau-xam-den-62062ac681f6f-11022022162214.jpg', 100.0000, N'Áo Thun Dolce & Gabbana Short Sleeve T-Shirt Màu Xám Đen', N'Áo Thun Dolce & Gabbana Short Sleeve T-Shirt Màu Xám Đen được làm từ chất vải cotton, polyester thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

Áo cổ tròn, tay ngắn với họa tiết trang trí viền kẻ đỏ-vàng tạo điểm nhấn độc đáo. Màu sắc áo đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Áo Sơ Mi Burberry Check Cotton ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-so-mi-burberry-check-cotton-poplin-shirt-size-m-620713a007892-12022022085544.jpg', 100.0000, N'Áo Sơ Mi Burberry Check Cotton Poplin Shirt Size M', N'Áo Sơ Mi Burberry Check Cotton được may từ chất liệu vải Cotton cao cấp với nhiều ưu điểm nổi trội như bề mặt vải mịn, nhẹ, không xù, không co khi giặt, thoáng khí, đem đến cho phái mạnh sự thoải mái tối đa. Sản phẩm có đường chỉ may tỉ mỉ, tinh tế.Bạn có thể kết hợp áo với nhiều trang phục và phụ kiện khác nhau để diện trong những đi chơi, dạo phố cùng bạn bè hoặc có thể mặc đi làm.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Áo Sơ Mi Burberry Brit Short', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2019/07/ao-so-mi-burberry-brit-short-sleeve-check-cotton-shirt-size-m-5d1d6b0e7b334-04072019095718.jpg', 120.0000, N'Áo Sơ Mi Burberry Brit Short Sleeve Check Cotton Shirt Size M', N'Burberry là một hãng thời trang sang trọng của Anh, phân phối quần áo thể thao độc đáo sang trọng, phụ kiện thời trang, nước hoa, kính mát, và mỹ phẩm.

Thương hiệu Burberry là 1 trong những tượng đài của thời trang thế giới, với phong cách hiện đại, lịch lãm và mang đậm bản sắc tinh thần của vương quốc Anh. Đặc trưng của Burberry từ ban đầu đến nay vẫn là phong cách lịch lãm, đơn giản và toát lên một vẻ lạnh lùng độc đáo.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Quần Shorts Dolce & Gabbana Embroidered ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/quan-shorts-dolce-gabbana-embroidered-logo-swimming-trunks-mau-den-62300ee13023f-15032022105825.jpg', 120.0000, N'Quần Shorts Dolce & Gabbana Embroidered Logo Swimming Trunks Màu Đen', N'Quần Shorts Dolce & Gabbana Embroidered Logo Swimming Trunks Màu Đen được làm từ chất liệu vải polyester cao cấp, mang lại sử thoải mái, thoáng mát cho người mặc. 

Kiểu dáng: theo form chuẩn mới nhất, Kiểu dáng trên gối, ôm nhẹ tạo cảm giác thoải mái khi sử dụng.
Thiết kế tiện lợi, lưng thun, dây rút co giãn, tự điều chỉnh phù hợp
Mặc đi tập gym, café, du lịch, mặc nhà, mặc nhóm đều ổn
Màu sắc: ĐEN cực dễ phối đồ,
Chất liệu cao cấp, co giãn tối đa thoải mái vận động
Đặc biệt: chống nhăn tuyệt đối, không sợ gây nóng bức, khó chịu và thoáng khí.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Áo Khoác Burberry Band Collar', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-khoac-burberry-band-collar-track-jacket-mau-den-size-m-620a18ab6a1a8-14022022155403.jpg', 165.0000, N'Áo Khoác Burberry Band Collar Track Jacket Màu Đen Size M', N'Áo Khoác Burberry Band Collar Track Jacket được làm từ chất liệu vải cao cấp mang lại sự thoải mái cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.Áo không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Với chiếc áo thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu áo dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-so-mi-dolce-gabbana-long-sleeve-shirt-hoa-tiet-size-39-62105ede64747-19022022100710.jpg', 150.0000, N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt Họa Tiết Size 39', N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt Họa Tiết được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.Áo cổ bẻ, tay dài với điểm nhấn độc đáo ở phần cổ áo. Màu sắc áo đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Quần Short Burberry', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-new-ss-mau-do-5e69eb0c16cc8-12032020145556.jpg', 185.0000, N'Quần Short Burberry New SS Màu Đỏ', N'Quần được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc.

- Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

- Quần họa tiết trang trí sọc ô vuông tạo điểm nhấn. 

Với chiếc quần thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu quần dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Quần Short Burberry New SS ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-new-ss-mau-soc-xanh-vang-5e6f37d361bcd-16032020152451.jpg', 150.0000, N'Quần Short Burberry New SS Màu Sọc Xanh Vàng', N'Burberry là một hãng thời trang sang trọng của Anh, phân phối quần áo thể thao độc đáo sang trọng, phụ kiện thời trang, nước hoa, kính mát, và mỹ phẩm.

Thương hiệu Burberry là 1 trong những tượng đài của thời trang thế giới, với phong cách hiện đại, lịch lãm và mang đậm bản sắc tinh thần của vương quốc Anh. Đặc trưng của Burberry từ ban đầu đến nay vẫn là phong cách lịch lãm, đơn giản và toát lên một vẻ lạnh lùng độc đáo.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Quần Bò Shorts Dolce & Gabbana Stretch', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/08/quan-bo-shorts-dolce-gabbana-stretch-denim-bermuda-shorts-610787debf6b6-02082021125126.jpeg', 180.0000, N'Quần Bò Shorts Dolce & Gabbana Stretch Denim Bermuda Shorts', N'Quần Dolce & Gabbana Stretch Denim Bermuda Shorts được làm từ chất vải bò thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.Quần dáng suông thoải mái dễ mặc. Màu sắc quần đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Áo Phông Dolce & Gabbana Pig Family Short', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/ao-phong-dolce-gabbana-pig-family-short-sleeved-t-shirt-mau-trang-5e7ac493739a1-25032020094019.jpg', 200.0000, N'Áo Phông Dolce & Gabbana Pig Family Short Sleeved T-Shirt Màu Trắng', N'Áo Phông Dolce & Gabbana Pig Family Short Sleeved T-Shirt Màu Trắng thiết kế trẻ trung hiện đại. Áo được làm từ 100% cotton thoáng mát, mang lại cảm giác thoải mái cho người mặc.

Họa tiết in hình gia đình ngộ nghĩnh, bắt mắt. Hình dáng áo cổ tròn, tay áo ngắn, dáng thon dễ mặc và kết hợp với các trang phục khác nhau. Bạn có thể kết hợp với quần short, quần jean, kaki... đều giúp bạn trở nên nổi bật khi gặp gỡ mọi người xung quanh.

Đây là một trong những mẫu áo Hot trong bộ sưu tập áo của Dolce & Gabbana khi mới ra mắt đã được rất nhiều khách hàng yêu thích.', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
