
GO
/****** Object:  Database [BrainTest]    Script Date: 17/10/2020 4:09:36 PM ******/
DROP DATABASE [BrainTest]
GO
/****** Object:  Database [BrainTest]    Script Date: 17/10/2020 4:09:36 PM ******/
CREATE DATABASE [BrainTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BrainTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BrainTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BrainTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BrainTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BrainTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrainTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrainTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrainTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrainTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrainTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrainTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrainTest] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BrainTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrainTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrainTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrainTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrainTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrainTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrainTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrainTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrainTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BrainTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrainTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrainTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrainTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrainTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrainTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrainTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrainTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BrainTest] SET  MULTI_USER 
GO
ALTER DATABASE [BrainTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrainTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BrainTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BrainTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BrainTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BrainTest] SET QUERY_STORE = OFF
GO
USE [BrainTest]
GO
/****** Object:  Table [dbo].[BT_CommentsWise_LikeDislike_tbl]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BT_CommentsWise_LikeDislike_tbl](
	[LikeDislikeID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[CommentID] [int] NULL,
	[isLike] [int] NULL,
	[isDislike] [int] NULL,
	[StatusID] [int] NULL,
	[LikedBy] [int] NULL,
	[LikeDate] [datetime] NULL,
	[DislikedBy] [int] NULL,
	[DislikeDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BT_General_PostText_tbl]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BT_General_PostText_tbl](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[PostText] [nvarchar](500) NULL,
	[StatusID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BT_PostWise_Coments_tbl]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BT_PostWise_Coments_tbl](
	[CommentsID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[Comments] [nvarchar](500) NULL,
	[StatusID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Com_UserInfo_tbl]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Com_UserInfo_tbl](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[LoginID] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Company_ID] [int] NULL,
	[RoleID] [int] NULL,
	[EntryDate] [datetime] NULL,
	[UserStatus] [varchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ON 
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (1, 1, 1, 1, 1, 0, 1, CAST(N'2020-10-17T15:21:00.013' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (2, 1, 1, 1, 1, 0, 1, CAST(N'2020-10-17T15:21:02.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (3, 1, 1, 1, NULL, 0, 4, CAST(N'2020-10-17T15:35:09.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (4, 1, 1, NULL, 1, 0, NULL, NULL, 4, CAST(N'2020-10-17T15:35:13.017' AS DateTime))
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (5, 1, 2, NULL, 1, 0, NULL, NULL, 4, CAST(N'2020-10-17T15:35:15.630' AS DateTime))
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (6, 1, 2, 1, NULL, 0, 4, CAST(N'2020-10-17T15:35:19.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (7, 3, 4, 1, NULL, 0, 6, CAST(N'2020-10-17T15:48:23.057' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (8, 3, 4, 1, NULL, 0, 7, CAST(N'2020-10-17T15:54:40.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (9, 2, 3, 1, NULL, 0, 7, CAST(N'2020-10-17T15:57:23.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (10, 2, 8, 1, NULL, 0, 7, CAST(N'2020-10-17T15:57:24.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] ([LikeDislikeID], [PostID], [CommentID], [isLike], [isDislike], [StatusID], [LikedBy], [LikeDate], [DislikedBy], [DislikeDate]) VALUES (11, 3, 7, 1, NULL, 0, 8, CAST(N'2020-10-17T15:58:11.650' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BT_CommentsWise_LikeDislike_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[BT_General_PostText_tbl] ON 
GO
INSERT [dbo].[BT_General_PostText_tbl] ([PostID], [PostText], [StatusID], [CreatedBy], [CreateDate]) VALUES (1, N'Admin Post', 0, 1, CAST(N'2020-10-17T15:06:02.143' AS DateTime))
GO
INSERT [dbo].[BT_General_PostText_tbl] ([PostID], [PostText], [StatusID], [CreatedBy], [CreateDate]) VALUES (2, N'Admin Post Test 2', 0, 2, CAST(N'2020-10-17T15:36:11.083' AS DateTime))
GO
INSERT [dbo].[BT_General_PostText_tbl] ([PostID], [PostText], [StatusID], [CreatedBy], [CreateDate]) VALUES (3, N'Admin Post 3', 0, 3, CAST(N'2020-10-17T15:40:14.600' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BT_General_PostText_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[BT_PostWise_Coments_tbl] ON 
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (1, 1, N'Comments1', 0, 1, CAST(N'2020-10-17T15:16:46.110' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (2, 1, N'Comments 2', 0, 4, CAST(N'2020-10-17T15:30:57.250' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (3, 2, N'Coment 3 For Test', 0, 5, CAST(N'2020-10-17T15:37:20.853' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (4, 3, N'Coments 4', 0, 6, CAST(N'2020-10-17T15:41:18.723' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (5, 1, N'Comment 5', 0, 6, CAST(N'2020-10-17T15:48:35.293' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (6, 3, N'testasdfsdjkfhks', 0, 7, CAST(N'2020-10-17T15:55:17.230' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (7, 3, N'etest 1234', 0, 7, CAST(N'2020-10-17T15:55:29.203' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (8, 2, N'yfaeurshdfs', 0, 7, CAST(N'2020-10-17T15:57:11.897' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (9, 1, N'sgfdysagd', 0, 7, CAST(N'2020-10-17T15:57:18.400' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (10, 3, N'afgdushsf', 0, 8, CAST(N'2020-10-17T15:58:01.303' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (11, 2, N'zbnsczjxbc', 0, 8, CAST(N'2020-10-17T15:58:06.867' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (12, 2, N'nzbcz', 0, 8, CAST(N'2020-10-17T15:58:18.187' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (13, 2, N'asfghdjfgasdjkgfjlsdafjklasdjhlfjklasdbfnksavbfljsdafnvasdjlfbasnmdfvasjhlbdfmlasdvfsdjlavfjlavfjsdvafjovasdjhof', 0, 4, CAST(N'2020-10-17T16:06:45.770' AS DateTime))
GO
INSERT [dbo].[BT_PostWise_Coments_tbl] ([CommentsID], [PostID], [Comments], [StatusID], [CreatedBy], [CreateDate]) VALUES (14, 3, N'asfvasjhodfvjvfjasdvfjvasdjfvasjdfvasjd fbnksalxcv sdjnofvaspkjdfbnmlasd fasdnfbasdnklfasnmfsdpjkfvbasnmv sdfbfasjk', 0, 4, CAST(N'2020-10-17T16:06:59.340' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BT_PostWise_Coments_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Com_UserInfo_tbl] ON 
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (1, N'Admin1', N'Admin1', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (2, N'Admin2', N'Admin2', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (3, N'Admin3', N'Admin3', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (4, N'User1', N'User1', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (5, N'User2', N'User2', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (6, N'User3', N'User3', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (7, N'User4', N'User4', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
INSERT [dbo].[Com_UserInfo_tbl] ([UserID], [UserName], [LoginID], [Password], [Company_ID], [RoleID], [EntryDate], [UserStatus]) VALUES (8, N'User5', N'User5', N'5F-A2-85-E1-BE-BE-0A-66-23-E3-3A-FC-04-A1-FB-D5', NULL, NULL, NULL, N'ACTIVE')
GO
SET IDENTITY_INSERT [dbo].[Com_UserInfo_tbl] OFF
GO
/****** Object:  StoredProcedure [dbo].[BT_GET_General_Posting_Detail_prc]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BT_GET_General_Posting_Detail_prc]
@PostText nvarchar(500),
@UserID int

AS


SELECT
ISNULL(PostID,0) AS PostID,
ISNULL(CommentsID,0) AS CommentsID,
Comments,
PostDate,
ISNULL(IsLike,0) AS IsLike,
ISNULL(isDislike,0) AS isDislike,
CommentsCount,
UserName
FROM 
(
SELECT 
PT.PostID,
0 AS CommentsID,
PT.PostText AS Comments,
CONVERT(varchar(10),PT.CreateDate,103) AS PostDate,
0 AS IsLike,
0 AS isDislike,
CAST(ISNULL(CommentsCount,0) as varchar)+' Comments' AS CommentsCount,
U.UserName
FROM BT_General_PostText_tbl PT
LEFT OUTER JOIN
(SELECT PostID,COUNT(PostID) AS CommentsCount FROM BT_PostWise_Coments_tbl GROUP BY PostID) LD
ON
LD.PostID=PT.PostID
INNER JOIN
Com_UserInfo_tbl U
ON
U.UserID=PT.CreatedBy
WHERE PT.PostText LIKE '%'+@PostText+'%'


UNION ALL


SELECT 
PT.PostID,
PC.CommentsID,
PC.Comments,
CONVERT(varchar(10),PC.CreateDate,103) AS PostDate,
ISNULL(isLike,0) AS IsLike,
ISNULL(isDislike,0) AS isDislike,
'' AS CommentsCount,
U.UserName
FROM BT_General_PostText_tbl PT
INNER JOIN
BT_PostWise_Coments_tbl PC
ON
PT.PostID=PC.PostID
LEFT OUTER JOIN
(SELECT CommentID,MAX(PostID) AS PostID,SUM(isLike) AS isLike,SUM(isDislike) AS isDislike FROM BT_CommentsWise_LikeDislike_tbl GROUP BY CommentID) LD
ON
LD.CommentID=PC.CommentsID
INNER JOIN
Com_UserInfo_tbl U
ON
U.UserID=PC.CreatedBy
WHERE PT.PostText LIKE '%'+@PostText+'%'
) X
ORDER BY PostID DESC,CommentsID
GO
/****** Object:  StoredProcedure [dbo].[BT_Insert_General_Posting_prc]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BT_Insert_General_Posting_prc]
@PostText nvarchar(500),
@UserID int,
@Result int OUTPUT

AS

SET @Result=0

INSERT INTO BT_General_PostText_tbl
(
PostText,
StatusID,
CreatedBy,
CreateDate
)
VALUES
(
@PostText,
0,
@UserID,
GETDATE()
)

SET @Result=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[BT_InsertUpdate_LikeDislike_prc]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BT_InsertUpdate_LikeDislike_prc]
@CommentID int,
@PostID int,
@UserID int,
@CommandID int,
@Result int OUTPUT

AS

SET @Result=0

IF @CommandID=1
BEGIN
IF NOT EXISTS (SELECT 1 FROM BT_CommentsWise_LikeDislike_tbl WHERE CommentID=@CommentID AND LikedBy=@UserID)
BEGIN
INSERT INTO BT_CommentsWise_LikeDislike_tbl
(
PostID,
CommentID,
isLike,
StatusID,
LikedBy,
LikeDate
)
VALUES
(
@PostID,
@CommentID,
1,
0,
@UserID,
GETDATE()
)
SET @Result=@@IDENTITY
END
ELSE IF EXISTS (SELECT 1 FROM BT_CommentsWise_LikeDislike_tbl WHERE CommentID=@CommentID AND LikedBy=@UserID AND isLike=1)
BEGIN
UPDATE BT_CommentsWise_LikeDislike_tbl
SET isLike=1
WHERE CommentID=@CommentID AND LikedBy=@UserID
SET @Result=@@ROWCOUNT
END

END

ELSE IF @CommandID=2
BEGIN
IF NOT EXISTS (SELECT 1 FROM BT_CommentsWise_LikeDislike_tbl WHERE CommentID=@CommentID AND DislikedBy=@UserID)
BEGIN
INSERT INTO BT_CommentsWise_LikeDislike_tbl
(
PostID,
CommentID,
isDislike,
StatusID,
DislikedBy,
DislikeDate
)
VALUES
(
@PostID,
@CommentID,
1,
0,
@UserID,
GETDATE()
)
SET @Result=@@IDENTITY
END
ELSE IF EXISTS (SELECT 1 FROM BT_CommentsWise_LikeDislike_tbl WHERE CommentID=@CommentID AND DislikedBy=@UserID)
BEGIN
UPDATE BT_CommentsWise_LikeDislike_tbl
SET isDislike=1
WHERE CommentID=@CommentID AND DislikedBy=@UserID
SET @Result=@@ROWCOUNT
END


END
GO
/****** Object:  StoredProcedure [dbo].[BT_InsertUpdate_PostWiseComments_prc]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BT_InsertUpdate_PostWiseComments_prc]
@PostID int,
@Comments nvarchar(500),
@UserID int,
@Result int OUTPUT

AS

SET @Result=0

INSERT INTO BT_PostWise_Coments_tbl
(
PostID,
Comments,
StatusID,
CreatedBy,
CreateDate
)
VALUES
(
@PostID,
@Comments,
0,
@UserID,
GETDATE()
)

SET @Result=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Com_UserLogin_prc]    Script Date: 17/10/2020 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--exec [Com_ERP_UserLogin_Tmp_prc] 'Azmol','F3-0A-FB-CB-F7-2C-63-9F-F5-2B-67-5C-B9-DE-46-6F',0,''
CREATE PROCEDURE [dbo].[Com_UserLogin_prc]
(
	@LoginID		varchar(50),
	@Password		varchar(50),
	@UserID			int				OUTPUT,
	@UserName		nvarchar(50)	OUTPUT

)
   AS 
BEGIN
IF EXISTS (SELECT 1 FROM Com_UserInfo_tbl WHERE LoginID   =   @LoginID AND [Password]  = @Password AND UserStatus = 'ACTIVE')
BEGIN
	SELECT 
		@UserID			= UserID,
		@UserName		= UserName
		FROM Com_UserInfo_tbl 
	    WHERE LoginID   =   @LoginID 
	    AND [Password]  = @Password
	    AND UserStatus = 'ACTIVE'
		
	END
	ELSE
	BEGIN
		
		SET @UserID	= 0
	    SET @UserName = '0'
	END
	SET NOCOUNT OFF	
END


















GO
USE [master]
GO
ALTER DATABASE [BrainTest] SET  READ_WRITE 
GO
