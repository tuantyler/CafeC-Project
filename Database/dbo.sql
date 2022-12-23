/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer_Password
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Catalog        : CAFEMANAGEMENT
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 23/12/2022 09:17:14
*/


-- ----------------------------
-- Table structure for ACCOUNT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT]') AND type IN ('U'))
	DROP TABLE [dbo].[ACCOUNT]
GO

CREATE TABLE [dbo].[ACCOUNT] (
  [Id] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [DisplayName] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [UserName] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [PassWord] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [AccountType] int  NOT NULL,
  [EmployeeId] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Gender] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [PhoneNumber] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [Email] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ACCOUNT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ACCOUNT
-- ----------------------------
INSERT INTO [dbo].[ACCOUNT] ([Id], [DisplayName], [UserName], [PassWord], [AccountType], [EmployeeId], [Gender], [PhoneNumber], [Email]) VALUES (N'U0001', N'PhanTuan', N'phantuan', N'25f9e794323b453885f5181f1b624d0b', N'1', N'E0001', N'1', N'2', N'3')
GO

INSERT INTO [dbo].[ACCOUNT] ([Id], [DisplayName], [UserName], [PassWord], [AccountType], [EmployeeId], [Gender], [PhoneNumber], [Email]) VALUES (N'U0002', N'Administator', N'admin', N'25f9e794323b453885f5181f1b624d0b', N'1', N'E0002', N'0', N'5', N'6')
GO


-- ----------------------------
-- Table structure for ACCOUNT_IMAGE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT_IMAGE]') AND type IN ('U'))
	DROP TABLE [dbo].[ACCOUNT_IMAGE]
GO

CREATE TABLE [dbo].[ACCOUNT_IMAGE] (
  [Id] varchar(1) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Img] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ACCOUNT_IMAGE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ACCOUNT_IMAGE
-- ----------------------------

-- ----------------------------
-- Table structure for BILL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BILL]') AND type IN ('U'))
	DROP TABLE [dbo].[BILL]
GO

CREATE TABLE [dbo].[BILL] (
  [Id] char(6) COLLATE Latin1_General_CI_AS  NOT NULL,
  [DateCreated] datetime  NULL,
  [EmployeeId] char(5) COLLATE Latin1_General_CI_AS  NULL,
  [CustomerId] char(5) COLLATE Latin1_General_CI_AS  NULL,
  [Total] money  NULL
)
GO

ALTER TABLE [dbo].[BILL] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of BILL
-- ----------------------------
INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00000', N'2019-11-20 00:00:00.000', NULL, NULL, N'50000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00001', N'2019-11-20 00:00:00.000', NULL, NULL, N'74000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00002', N'2022-02-20 00:00:00.000', N'E0001', NULL, N'89000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00003', N'2022-02-20 00:00:00.000', N'E0001', NULL, N'89000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00004', N'2022-02-20 00:00:00.000', N'E0001', NULL, N'50000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00005', N'2022-02-20 00:00:00.000', N'E0002', NULL, N'141000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00006', N'2022-02-20 00:00:00.000', N'E0001', NULL, N'126000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00007', N'2022-02-21 00:00:00.000', N'E0001', NULL, N'126000.0000')
GO

INSERT INTO [dbo].[BILL] ([Id], [DateCreated], [EmployeeId], [CustomerId], [Total]) VALUES (N'B00008', N'2022-02-22 00:00:00.000', N'E0001', NULL, N'125000.0000')
GO


-- ----------------------------
-- Table structure for CUSTOMER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER]') AND type IN ('U'))
	DROP TABLE [dbo].[CUSTOMER]
GO

CREATE TABLE [dbo].[CUSTOMER] (
  [Id] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Name] char(30) COLLATE Latin1_General_CI_AS  NULL,
  [Birthday] datetime  NULL
)
GO

ALTER TABLE [dbo].[CUSTOMER] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CUSTOMER
-- ----------------------------

-- ----------------------------
-- Table structure for EMPLOYEE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLOYEE]') AND type IN ('U'))
	DROP TABLE [dbo].[EMPLOYEE]
GO

CREATE TABLE [dbo].[EMPLOYEE] (
  [Id] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Name] varchar(30) COLLATE Latin1_General_CI_AS  NULL,
  [Birthday] datetime  NULL,
  [Daystart] datetime  NULL,
  [Gender] bit  NULL,
  [PhoneNumber] varchar(255) COLLATE Latin1_General_CI_AS DEFAULT NULL NULL,
  [Email] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[EMPLOYEE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of EMPLOYEE
-- ----------------------------
INSERT INTO [dbo].[EMPLOYEE] ([Id], [Name], [Birthday], [Daystart], [Gender], [PhoneNumber], [Email]) VALUES (N'E0001', N'Phan Van Quoc Tuan', N'2000-02-17 00:00:00.000', N'2000-11-08 00:00:00.000', N'1', N'0843575975', N'd@gmail.com')
GO

INSERT INTO [dbo].[EMPLOYEE] ([Id], [Name], [Birthday], [Daystart], [Gender], [PhoneNumber], [Email]) VALUES (N'E0002', N'Admin', N'2000-01-01 00:00:00.000', N'2000-11-22 00:00:00.000', N'0', N'0678494545', N'dfg@gmail.com')
GO


-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT]') AND type IN ('U'))
	DROP TABLE [dbo].[PRODUCT]
GO

CREATE TABLE [dbo].[PRODUCT] (
  [Id] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Name] varchar(30) COLLATE Latin1_General_CI_AS  NOT NULL,
  [ProductId] char(4) COLLATE Latin1_General_CI_AS  NULL,
  [Price] money  NULL,
  [Description] varchar(100) COLLATE Latin1_General_CI_AS  NULL,
  [IsTopping] bit  NULL
)
GO

ALTER TABLE [dbo].[PRODUCT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PRODUCT
-- ----------------------------
INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD000', N'Cappuchino', N'PT01', N'30000.0000', N'A cappuccino is an espresso-based coffee drink that originated in Italy', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD001', N'DarkRoast', N'PT01', N'20000.0000', N'TEST', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD002', N'Decaf', N'PT01', N'25000.0000', N'TEST', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD003', N'Espresso', N'PT01', N'35000.0000', N'TEST', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD004', N'HouseBlend', N'PT01', N'12000.0000', N'TEST', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD005', N'Eggbites', N'PT00', N'32000.0000', N'TESTFOOD', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD006', N'Oatmeal', N'PT00', N'42000.0000', N'TESTFOOD', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD007', N'Sandwich', N'PT01', N'52000.0000', N'TESTFOOD', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD008', N'Mocha', N'PT01', N'5000.0000', N'TOPPING', N'1')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD009', N'Milk', N'PT01', N'5000.0000', N'TOPPING', N'1')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD010', N'Whip', N'PT01', N'3000.0000', N'TOPPING', N'1')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD011', N'Soy', N'PT01', N'7000.0000', N'TOPPING', N'1')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD012', N'Fried Rice', N'PT00', N'15000.0000', N'', N'0')
GO

INSERT INTO [dbo].[PRODUCT] ([Id], [Name], [ProductId], [Price], [Description], [IsTopping]) VALUES (N'PD013', N'Blonde Caffè Americano', N'PT01', N'35000.0000', N'Espresso shots are topped with hot water to produce a light layer of crema.', N'0')
GO


-- ----------------------------
-- Table structure for PRODUCT_BILL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT_BILL]') AND type IN ('U'))
	DROP TABLE [dbo].[PRODUCT_BILL]
GO

CREATE TABLE [dbo].[PRODUCT_BILL] (
  [BillId] char(6) COLLATE Latin1_General_CI_AS  NOT NULL,
  [ProductId] char(5) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Amount] int  NULL
)
GO

ALTER TABLE [dbo].[PRODUCT_BILL] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PRODUCT_BILL
-- ----------------------------
INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00000', N'PD000', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00000', N'PD001', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00001', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00001', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00002', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00002', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00002', N'PD012', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00003', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00003', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00003', N'PD012', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00004', N'PD000', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00004', N'PD001', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00005', N'PD005', N'2')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00005', N'PD006', N'2')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00005', N'PD007', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00005', N'PD012', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00006', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00006', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00006', N'PD007', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00007', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00007', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00007', N'PD007', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00008', N'PD000', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00008', N'PD005', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00008', N'PD006', N'1')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00008', N'PD010', N'2')
GO

INSERT INTO [dbo].[PRODUCT_BILL] ([BillId], [ProductId], [Amount]) VALUES (N'B00008', N'PD012', N'1')
GO


-- ----------------------------
-- Table structure for PRODUCTTYPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTTYPE]') AND type IN ('U'))
	DROP TABLE [dbo].[PRODUCTTYPE]
GO

CREATE TABLE [dbo].[PRODUCTTYPE] (
  [Id] char(4) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Name] varchar(20) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[PRODUCTTYPE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PRODUCTTYPE
-- ----------------------------
INSERT INTO [dbo].[PRODUCTTYPE] ([Id], [Name]) VALUES (N'PT00', N'Food')
GO

INSERT INTO [dbo].[PRODUCTTYPE] ([Id], [Name]) VALUES (N'PT01', N'Beverage')
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table ACCOUNT
-- ----------------------------
ALTER TABLE [dbo].[ACCOUNT] ADD CONSTRAINT [PK__ACCOUNT__3214EC07B458DB11] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ACCOUNT_IMAGE
-- ----------------------------
ALTER TABLE [dbo].[ACCOUNT_IMAGE] ADD CONSTRAINT [PK__ACCOUNT___3214EC070A28B6C0] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table BILL
-- ----------------------------
ALTER TABLE [dbo].[BILL] ADD CONSTRAINT [PK__BILL__E5F7B879AC2497E8] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table CUSTOMER
-- ----------------------------
ALTER TABLE [dbo].[CUSTOMER] ADD CONSTRAINT [PK__CUSTOMER__8AA1D0F82539A750] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table EMPLOYEE
-- ----------------------------
ALTER TABLE [dbo].[EMPLOYEE] ADD CONSTRAINT [PK__EMPLOYEE__948E2A6D877B1356] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE [dbo].[PRODUCT] ADD CONSTRAINT [PK__PRODUCT__58D8D80619465866] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PRODUCT_BILL
-- ----------------------------
ALTER TABLE [dbo].[PRODUCT_BILL] ADD CONSTRAINT [PK_PRODUCT_BILL] PRIMARY KEY CLUSTERED ([BillId], [ProductId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PRODUCTTYPE
-- ----------------------------
ALTER TABLE [dbo].[PRODUCTTYPE] ADD CONSTRAINT [PK__PRODUCTT__3411E9272A2A8AB1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table ACCOUNT
-- ----------------------------
ALTER TABLE [dbo].[ACCOUNT] ADD CONSTRAINT [FK__ACCOUNT__Employe__02FC7413] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EMPLOYEE] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BILL
-- ----------------------------
ALTER TABLE [dbo].[BILL] ADD CONSTRAINT [FK__BILL__CSMID__52593CB8] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[CUSTOMER] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BILL] ADD CONSTRAINT [FK__BILL__EmployeeId__5EBF139D] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EMPLOYEE] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PRODUCT
-- ----------------------------
ALTER TABLE [dbo].[PRODUCT] ADD CONSTRAINT [FK__PRODUCT__PDTID__398D8EEE] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[PRODUCTTYPE] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PRODUCT_BILL
-- ----------------------------
ALTER TABLE [dbo].[PRODUCT_BILL] ADD CONSTRAINT [FK__PRODUCT_B__BILLI__5535A963] FOREIGN KEY ([BillId]) REFERENCES [dbo].[BILL] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PRODUCT_BILL] ADD CONSTRAINT [FK__PRODUCT_BI__PDID__5629CD9C] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[PRODUCT] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

