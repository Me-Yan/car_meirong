USE [BYSJ]
GO

/****** Object:  Table [dbo].[t_kehu]    Script Date: 2019/5/15 2:54:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_kehu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_name] [nvarchar](30) NULL,
	[k_fuze] [nvarchar](30) NULL,
	[k_tel] [nvarchar](30) NULL,
	[k_huiyuan] [nvarchar](20) NULL,
	[k_jianjie] [nvarchar](1000) NULL,
	[k_shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_t_kehu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

