USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_get_all_object_attribute_types]    Script Date: 01/02/2013 17:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_all_object_attribute_types') BEGIN
	DROP PROCEDURE [dbo].[pr_get_all_object_attribute_types]
END

GO

/*

Name: pr_get_all_object_attribute_types

Description: Gets all ojbect attribute types.
 
History:
Date		User		Change
1/7/2012	jzaman		Creation.

Ex:
exec pr_get_all_object_attribute_types

*/

CREATE PROCEDURE [dbo].[pr_get_all_object_attribute_types]	
AS
BEGIN

SET NOCOUNT ON;
		
	SELECT oat.ObjectAttributeTypeID, oat.Name, oat.[Description]
	FROM dbo.[ObjectAttributeTypes] oat
	ORDER BY oat.Name
END
