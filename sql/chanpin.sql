USE [BYSJ]
GO

/****** Object:  Table [dbo].[t_chanpin]    Script Date: 2019/5/15 2:54:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_chanpin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [nvarchar](100) NULL,
	[c_price] [nvarchar](50) NULL,
	[c_geshu] [nvarchar](50) NULL,
	[c_jianjie] [nvarchar](1000) NULL,
	[c_shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_t_chanpin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

