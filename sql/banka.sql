USE [BYSJ]
GO

/****** Object:  Table [dbo].[banka]    Script Date: 2019/5/15 2:53:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[banka](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_name] [nvarchar](100) NULL,
	[kahao] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[beizhu] [nvarchar](200) NULL,
	[shijian] [nvarchar](100) NULL,
	[yue] [nvarchar](50) NULL,
 CONSTRAINT [PK_banka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[banka] ADD  CONSTRAINT [DF_banka_yue]  DEFAULT ((100)) FOR [yue]
GO

