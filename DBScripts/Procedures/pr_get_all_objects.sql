USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_get_all_objects]    Script Date: 01/02/2013 17:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_all_objects') BEGIN
	DROP PROCEDURE [dbo].[pr_get_all_objects]
END

GO

/*

Name: pr_get_all_objects

Description: Gets all objects for attributes use.
 
History:
Date		User		Change
1/2/2012	jzaman		Creation.

Ex: 
exec [pr_get_all_objects]
*/

CREATE PROCEDURE [dbo].[pr_get_all_objects]	
AS
BEGIN

SET NOCOUNT ON;
		
	SELECT o.ObjectID, o.Name, o.[Description], o.ValuesTableName, o.PrimaryKeyColName
	FROM dbo.[Objects] o
	ORDER BY o.Name
END
