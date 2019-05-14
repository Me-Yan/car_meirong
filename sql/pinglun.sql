USE [BYSJ]
GO

/****** Object:  Table [dbo].[pinglun]    Script Date: 2019/5/15 2:54:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pinglun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_name] [nvarchar](50) NULL,
	[pinglun] [nvarchar](500) NULL,
	[shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_pinglun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

