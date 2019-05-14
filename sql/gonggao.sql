USE [BYSJ]
GO

/****** Object:  Table [dbo].[gonggao]    Script Date: 2019/5/15 2:54:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gonggao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[g_title] [nvarchar](100) NULL,
	[g_beizhu] [nvarchar](500) NULL,
	[g_shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_gonggao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

