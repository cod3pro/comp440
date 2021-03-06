USE [s16guest40]
GO
/****** Object:  Table [dbo].[address]    Script Date: 5/6/2016 7:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[street] [nvarchar](50) NOT NULL,
	[city_id] [int] NOT NULL,
	[state_id] [int] NULL,
	[country_id] [int] NOT NULL,
	[zip_code] [int] NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[authenticate]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authenticate](
	[customer_id] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_authenticate] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[branch]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch](
	[branch_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[platform_id] [int] NOT NULL,
	[branch_code] [nvarchar](50) NOT NULL,
	[download_link] [nvarchar](100) NOT NULL,
	[release_type_id] [int] NOT NULL,
	[release_date] [nvarchar](10) NOT NULL,
	[end_date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_branch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[city]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] NOT NULL,
	[city_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[country]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[country_id] [int] NOT NULL,
	[country_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customer]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[company_name] [nvarchar](50) NOT NULL,
	[address_id] [int] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customer_phone]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_phone](
	[customer_id] [int] NOT NULL,
	[phone_id] [int] NOT NULL,
 CONSTRAINT [PK_customer_phone] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[download_history]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[download_history](
	[download_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[branch_id] [int] NOT NULL,
	[download_date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_download_history] PRIMARY KEY CLUSTERED 
(
	[download_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feature]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature](
	[iteration_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
	[feature_description] [nvarchar](50) NOT NULL,
	[feature_create_date] [nvarchar](10) NOT NULL,
	[branch_id] [int] NOT NULL,
 CONSTRAINT [PK_features] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iterations]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iterations](
	[iteration_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[version_code] [nvarchar](20) NOT NULL,
	[version_description] [nvarchar](200) NOT NULL,
	[version_date] [nvarchar](10) NOT NULL,
	[platform_id] [int] NOT NULL,
 CONSTRAINT [PK_version] PRIMARY KEY CLUSTERED 
(
	[iteration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phone](
	[phone_id] [int] NOT NULL,
	[phone_number] [nvarchar](50) NOT NULL,
	[phone_type_id] [int] NOT NULL,
 CONSTRAINT [PK_phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone_type]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phone_type](
	[phone_type_id] [int] NOT NULL,
	[phone_type] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_phone_type] PRIMARY KEY CLUSTERED 
(
	[phone_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[platform]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform](
	[platform_id] [int] NOT NULL,
	[platform_name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_platform] PRIMARY KEY CLUSTERED 
(
	[platform_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_version_release]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_version_release](
	[product] [nvarchar](50) NULL,
	[platform] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[version] [float] NULL,
	[new feature] [nvarchar](200) NULL,
	[release] [float] NULL,
	[type of release] [nvarchar](200) NULL,
	[date of release] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](30) NOT NULL,
	[product_description] [nvarchar](200) NULL,
	[product_create_date] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[release_type]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[release_type](
	[release_type_id] [int] NOT NULL,
	[release_type] [nchar](30) NOT NULL,
 CONSTRAINT [PK_release_type] PRIMARY KEY CLUSTERED 
(
	[release_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[request_for_download]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[request_for_download](
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[requested_version_to_download] [float] NULL,
	[date] [datetime] NULL,
	[company_address] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[state]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[state_id] [int] NOT NULL,
	[state_name] [nvarchar](30) NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_city] FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_city]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_country]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_state] FOREIGN KEY([state_id])
REFERENCES [dbo].[state] ([state_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_state]
GO
ALTER TABLE [dbo].[authenticate]  WITH CHECK ADD  CONSTRAINT [FK_password_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[authenticate] CHECK CONSTRAINT [FK_password_customer]
GO
ALTER TABLE [dbo].[branch]  WITH CHECK ADD  CONSTRAINT [FK_branch_release_type] FOREIGN KEY([release_type_id])
REFERENCES [dbo].[release_type] ([release_type_id])
GO
ALTER TABLE [dbo].[branch] CHECK CONSTRAINT [FK_branch_release_type]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_address] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_address]
GO
ALTER TABLE [dbo].[customer_phone]  WITH CHECK ADD  CONSTRAINT [FK_customer_phone_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[customer_phone] CHECK CONSTRAINT [FK_customer_phone_customer]
GO
ALTER TABLE [dbo].[customer_phone]  WITH CHECK ADD  CONSTRAINT [FK_customer_phone_phone] FOREIGN KEY([phone_id])
REFERENCES [dbo].[phone] ([phone_id])
GO
ALTER TABLE [dbo].[customer_phone] CHECK CONSTRAINT [FK_customer_phone_phone]
GO
ALTER TABLE [dbo].[download_history]  WITH CHECK ADD  CONSTRAINT [FK_download_history_branch] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([branch_id])
GO
ALTER TABLE [dbo].[download_history] CHECK CONSTRAINT [FK_download_history_branch]
GO
ALTER TABLE [dbo].[download_history]  WITH CHECK ADD  CONSTRAINT [FK_download_history_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[download_history] CHECK CONSTRAINT [FK_download_history_customer]
GO
ALTER TABLE [dbo].[feature]  WITH CHECK ADD  CONSTRAINT [FK_features_branch] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([branch_id])
GO
ALTER TABLE [dbo].[feature] CHECK CONSTRAINT [FK_features_branch]
GO
ALTER TABLE [dbo].[feature]  WITH CHECK ADD  CONSTRAINT [FK_features_iterations] FOREIGN KEY([iteration_id])
REFERENCES [dbo].[iterations] ([iteration_id])
GO
ALTER TABLE [dbo].[feature] CHECK CONSTRAINT [FK_features_iterations]
GO
ALTER TABLE [dbo].[iterations]  WITH CHECK ADD  CONSTRAINT [FK_iterations_platform] FOREIGN KEY([platform_id])
REFERENCES [dbo].[platform] ([platform_id])
GO
ALTER TABLE [dbo].[iterations] CHECK CONSTRAINT [FK_iterations_platform]
GO
ALTER TABLE [dbo].[iterations]  WITH CHECK ADD  CONSTRAINT [FK_version_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[iterations] CHECK CONSTRAINT [FK_version_product]
GO
ALTER TABLE [dbo].[phone]  WITH CHECK ADD  CONSTRAINT [FK_phone_phone_type] FOREIGN KEY([phone_type_id])
REFERENCES [dbo].[phone_type] ([phone_type_id])
GO
ALTER TABLE [dbo].[phone] CHECK CONSTRAINT [FK_phone_phone_type]
GO
/****** Object:  StoredProcedure [dbo].[Report1]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report1]
AS
BEGIN
	SELECT        dbo.Products.product_name, dbo.branch.branch_code, SUBSTRING(dbo.download_history.download_date, 1, 2) AS Month, COUNT(*) AS Count
	FROM           dbo.products INNER JOIN
                   dbo.branch ON dbo.products.product_id = dbo.branch.product_id INNER JOIN
                   dbo.download_history ON dbo.branch.branch_id = dbo.download_history.branch_id
	GROUP BY	   dbo.products.product_name, dbo.branch.branch_code, 
					SUBSTRING(dbo.download_history.download_date, 1, 2)

END

GO
/****** Object:  StoredProcedure [dbo].[Report2]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Report2](@branch_Id int)

AS

BEGIN
	BEGIN TRY
		DECLARE @temp1 int = (select count(*) from feature where  
					branch_id = @branch_Id)
		DECLARE @temp2 nvarchar(10) = (select branch_code from branch where  
					branch_id = @branch_id)
		if @temp1 > 0
		begin
			if @temp1 = 1
			begin
				DECLARE @temp3 nvarchar(100) = (select feature_description from feature where  
					branch_id = @branch_id)
					if CHARINDEX ( 'bug fix' ,@temp3) > 0 begin
						select 'It is a bug–fix release'
					end else begin
						select CAST(@temp1 AS varchar(10)) + ' features are in the '+ @temp2 + ' release'
					end

			end else begin
				select CAST(@temp1 AS varchar(10)) + ' features are in the '+ @temp2 + ' release'
			end
		end else begin
			select 'There are not any new feature in the '+ @temp2  +' release'
		end
	END TRY
	BEGIN CATCH
		raiserror('Report21 Error!',1,1)
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertProducts]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertProducts](@product_id int,
					@product_name nvarchar(30), @product_desc nvarchar(200), @create_date nvarchar(10))
AS
BEGIN
	DECLARE @temp nvarchar(30) = (select count(*) from products where  
				product_name = @product_name)
	if @temp = 0
	begin
		BEGIN TRY
			INSERT INTO [dbo].[products]
					([product_id]
					,[product_name],[product_description],[product_create_date])
			VALUES
					(@product_id,
					@product_name, @product_desc, @create_date)
		END TRY

		BEGIN CATCH
			raiserror('insert error!',1,1)
		END CATCH

	end else begin
		raiserror('Data douplication error' ,2,1)
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateIterations]    Script Date: 5/6/2016 7:55:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateIterations](@iteration_id int,
           @product_id int,
           @platform_id int,
           @version_code nvarchar(20),
           @version_description nvarchar(200),
           @version_date nvarchar(10))
AS
BEGIN
	DECLARE @temp int = (select count(*) from iterations where  
				iteration_id = @iteration_id )
	if @temp > 0
	begin
		BEGIN TRY
			SET NOCOUNT ON;
				UPDATE [dbo].[iterations]
					SET [iteration_id] = @iteration_id,
						[product_id] = @product_id, 
						[platform_id] = @platform_id,
						[version_code] = @version_code,
						[version_description] = @version_description,
						[version_date] = @version_date
	  	where iteration_id = @iteration_id
		END try
		BEGIN CATCH
			raiserror('Error: Can not update!',1,1)
		END CATCH

	end else begin
		raiserror('Error: Data does not exist.' ,2,1)
	end
END
GO
