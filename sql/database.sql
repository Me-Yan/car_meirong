USE [master]
GO

/****** Object:  Database [BYSJ]    Script Date: 2019/5/15 2:50:00 ******/
CREATE DATABASE [BYSJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'car_meirong', FILENAME = N'E:\Project\CarMeirong\car_meirong.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'car_meirong_log', FILENAME = N'E:\Project\CarMeirong\car_meirong_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [BYSJ] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BYSJ].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO

ALTER DATABASE [BYSJ] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BYSJ] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BYSJ] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BYSJ] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BYSJ] SET ARITHABORT OFF 
GO

ALTER DATABASE [BYSJ] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BYSJ] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [BYSJ] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BYSJ] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BYSJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BYSJ] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BYSJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BYSJ] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BYSJ] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BYSJ] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BYSJ] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BYSJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BYSJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BYSJ] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BYSJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BYSJ] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BYSJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BYSJ] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BYSJ] SET RECOVERY FULL 
GO

ALTER DATABASE [BYSJ] SET  MULTI_USER 
GO

ALTER DATABASE [BYSJ] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BYSJ] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BYSJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BYSJ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [BYSJ] SET  READ_WRITE 
GO

