USE [BYSJ]
GO

/****** Object:  Table [dbo].[guocheng]    Script Date: 2019/5/15 2:54:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[guocheng](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[k_name] [nvarchar](50) NULL,
	[c_name] [nvarchar](100) NULL,
	[ruku] [nvarchar](50) NULL,
	[feiyong] [nvarchar](50) NULL,
	[beizhu] [nvarchar](500) NULL,
	[state] [nvarchar](50) NULL,
	[shijian] [nvarchar](100) NULL,
 CONSTRAINT [PK_guocheng] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[guocheng] ADD  CONSTRAINT [DF_guocheng_state]  DEFAULT (N'未结算') FOR [state]
GO

