USE [MyCartdb]
GO
/****** Object:  Table [dbo].[RegisterDetails]    Script Date: 05/19/2016 17:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegisterDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NULL,
	[password] [varchar](200) NULL,
	[ConfirmPassword] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[MobileNumber] [nchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[coupons]    Script Date: 05/19/2016 17:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coupons](
	[coupon_id] [int] IDENTITY(1,1) NOT NULL,
	[coupon_code] [varchar](200) NULL,
	[coupon_discount] [int] NOT NULL,
	[coupon_quantity] [int] NULL,
	[coupon_used] [int] NULL,
	[coupon_validity] [date] NOT NULL,
	[create_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[coupon_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[coupon_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 05/19/2016 17:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](100) NOT NULL,
	[is_enabled] [int] NULL,
	[create_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UserLogin]
@password varchar(100)
as 
begin
select * from RegisterDetails where UserName=@password;
end;
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCoupons]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetAllCoupons]
as
begin
select * from coupons;
end
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCategories]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetAllCategories]
as begin
select * from categories
end;
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCategory]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteCategory]
@id int
as begin
delete from categories
where id=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updatecoupons]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_updatecoupons]
(@cpnid int,@cpnqty int,@cpndiscount int,@cpnvalidity date)
as
begin
update coupons set  coupon_quantity=@cpnid,coupon_discount=@cpnqty,coupon_validity=@cpnvalidity
where coupon_id=@cpnid
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_insertcoupons]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_insertcoupons]
(@cpncode varchar(200),@cpnqty int,@cpndiscount int,@cpnvalidity date)
as 
begin
insert into coupons(coupon_code,coupon_quantity,coupon_discount,coupon_validity)
values(@cpncode,@cpnqty,@cpndiscount,@cpnvalidity);
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_deletecoupons]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_deletecoupons]
@cpnid int
as
begin
delete coupons where coupon_id=@cpnid
end;
GO
/****** Object:  StoredProcedure [dbo].[spInsertCategory]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertCategory]
@cat_name varchar(100)
as begin
insert into categories(category_name) 
values(@cat_name);
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCategory]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateCategory]
(@cat_name varchar(100),@id int)
as begin
update categories set category_name=@cat_name
where id=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[spregdetails]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spregdetails]
( @UserName varchar(200),@password  varchar(200),@ConfirmPassword varchar(200),@Email varchar(200),@MobileNumber varchar(200))
as 
begin
insert into RegisterDetails values(@UserName,@password,@ConfirmPassword,@Email,@Email,@MobileNumber)
end;
GO
/****** Object:  StoredProcedure [dbo].[regdetails]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[regdetails]
( @UserName varchar(200),@password  varchar(200),@ConfirmPassword varchar(200),@Email varchar(200),@MobileNumber varchar(200))
as 
begin
insert into RegisterDetails values(@UserName,@password,@ConfirmPassword,@Email,@MobileNumber)
end;
GO
/****** Object:  Table [dbo].[product_meta]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_meta](
	[prod_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_id] [int] NULL,
	[min_stock] [int] NULL,
	[actual_stock] [int] NULL,
	[create_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_details]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_details](
	[prod_id] [int] NULL,
	[prod_name] [varchar](200) NULL,
	[prod_desc] [text] NULL,
	[prod_cost] [money] NULL,
UNIQUE NONCLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spUpdateProducts]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateProducts]
(@prod_id int,@prod_name varchar(200),@prod_cost money,@prod_desc varchar(200),@cat_id int,@min_stock int,@actual_stock int)
as
begin
update product_details
set product_details.prod_name=@prod_name,product_details.prod_cost=@prod_cost,product_details.prod_desc=@prod_desc,product_details.prod_id=@prod_id;
update product_meta set product_meta.cat_id=@cat_id,product_meta.min_stock=@min_stock,product_meta.actual_stock=@actual_stock
where prod_id=@prod_id;
end;
GO
/****** Object:  StoredProcedure [dbo].[spInsertProduct]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertProduct]
(@cat_id int,@min_stock int,@actual_stock int,
@name varchar(200),@desc text,@cost money)
as
begin
Declare @prod_id int;
insert into product_meta(cat_id,min_stock,actual_stock)
values(@cat_id,@min_stock,@actual_stock);
set @prod_id=(select @@identity);
insert into product_details values(@prod_id,
@name,@desc,@cost);
end
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProductsByCategory]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetAllProductsByCategory]
@id int
as
begin
select product_meta.prod_id,prod_name,prod_desc,
prod_cost,cat_id,min_stock,actual_stock
from product_meta,product_details
where product_meta.prod_id=product_details.prod_id
and product_meta.cat_id=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProducts]    Script Date: 05/19/2016 17:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetAllProducts]
as
begin
select product_meta.min_stock,product_meta.actual_stock,product_meta.cat_id,product_details.prod_id,product_details.prod_name,product_details.prod_desc,product_details.prod_cost
from product_meta,product_details
where
product_meta.prod_id=product_details.prod_id
end;
GO
/****** Object:  Default [DF__coupons__coupon___276EDEB3]    Script Date: 05/19/2016 17:36:30 ******/
ALTER TABLE [dbo].[coupons] ADD  DEFAULT ((1)) FOR [coupon_quantity]
GO
/****** Object:  Default [DF__coupons__coupon___286302EC]    Script Date: 05/19/2016 17:36:30 ******/
ALTER TABLE [dbo].[coupons] ADD  DEFAULT ((0)) FOR [coupon_used]
GO
/****** Object:  Default [DF__coupons__create___29572725]    Script Date: 05/19/2016 17:36:30 ******/
ALTER TABLE [dbo].[coupons] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__categorie__is_en__09DE7BCC]    Script Date: 05/19/2016 17:36:30 ******/
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((1)) FOR [is_enabled]
GO
/****** Object:  Default [DF__categorie__creat__0AD2A005]    Script Date: 05/19/2016 17:36:30 ******/
ALTER TABLE [dbo].[categories] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__product_m__min_s__1367E606]    Script Date: 05/19/2016 17:36:31 ******/
ALTER TABLE [dbo].[product_meta] ADD  DEFAULT ((0)) FOR [min_stock]
GO
/****** Object:  Default [DF__product_m__actua__145C0A3F]    Script Date: 05/19/2016 17:36:31 ******/
ALTER TABLE [dbo].[product_meta] ADD  DEFAULT ((0)) FOR [actual_stock]
GO
/****** Object:  Default [DF__product_m__creat__15502E78]    Script Date: 05/19/2016 17:36:31 ******/
ALTER TABLE [dbo].[product_meta] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  ForeignKey [FK__product_m__cat_i__164452B1]    Script Date: 05/19/2016 17:36:31 ******/
ALTER TABLE [dbo].[product_meta]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[categories] ([id])
GO
/****** Object:  ForeignKey [FK__product_d__prod___1CF15040]    Script Date: 05/19/2016 17:36:31 ******/
ALTER TABLE [dbo].[product_details]  WITH CHECK ADD FOREIGN KEY([prod_id])
REFERENCES [dbo].[product_meta] ([prod_id])
GO
