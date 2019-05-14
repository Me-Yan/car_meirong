USE [BYSJ]
GO

/****** Object:  Table [dbo].[chongzhi]    Script Date: 2019/5/15 2:54:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[chongzhi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_name] [nvarchar](50) NULL,
	[yue] [nvarchar](50) NULL,
	[jine] [nvarchar](50) NULL,
	[shijian] [nvarchar](50) NULL,
 CONSTRAINT [PK_chongzhi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[chongzhi] ADD  CONSTRAINT [DF_chongzhi_yue]  DEFAULT ((0)) FOR [yue]
GO

ALTER TABLE [dbo].[chongzhi] ADD  CONSTRAINT [DF_chongzhi_jine]  DEFAULT ((0)) FOR [jine]
GO

