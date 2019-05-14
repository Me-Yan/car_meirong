USE [BYSJ]
GO

/****** Object:  Table [dbo].[genjin]    Script Date: 2019/5/15 2:54:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[genjin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_id] [nvarchar](50) NULL,
	[g_beizhu] [nvarchar](500) NULL,
	[shijian] [nvarchar](100) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_genjin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

