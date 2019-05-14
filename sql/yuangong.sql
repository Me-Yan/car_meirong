USE [BYSJ]
GO

/****** Object:  Table [dbo].[yuangong]    Script Date: 2019/5/15 2:55:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[yuangong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[t_name] [nvarchar](30) NULL,
	[t_zhiwei] [nvarchar](100) NULL,
	[t_jianjie] [nvarchar](600) NULL,
	[t_quanxian] [nvarchar](50) NULL,
	[t_shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_yuangong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

