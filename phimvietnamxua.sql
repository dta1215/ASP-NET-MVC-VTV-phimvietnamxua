USE [master]
GO
/****** Object:  Database [phimvietnamxuadb]    Script Date: 10/07/2021 08:10:41 ******/
CREATE DATABASE [phimvietnamxuadb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'phimvietnamxuadb', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\phimvietnamxuadb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'phimvietnamxuadb_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\phimvietnamxuadb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [phimvietnamxuadb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [phimvietnamxuadb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [phimvietnamxuadb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET ARITHABORT OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [phimvietnamxuadb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [phimvietnamxuadb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [phimvietnamxuadb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [phimvietnamxuadb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [phimvietnamxuadb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [phimvietnamxuadb] SET  MULTI_USER 
GO
ALTER DATABASE [phimvietnamxuadb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [phimvietnamxuadb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [phimvietnamxuadb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [phimvietnamxuadb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [phimvietnamxuadb] SET  READ_WRITE 
GO
