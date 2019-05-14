USE [BYSJ]
GO

/****** Object:  Table [dbo].[car]    Script Date: 2019/5/15 2:54:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[car](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL
) ON [PRIMARY]

GO

