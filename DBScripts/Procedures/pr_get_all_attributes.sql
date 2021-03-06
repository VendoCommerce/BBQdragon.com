USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_get_all_attributes]    Script Date: 01/02/2013 17:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_all_attributes') BEGIN
	DROP PROCEDURE [dbo].[pr_get_all_attributes]
END

GO

/*

Name: pr_get_all_attributes

Description: Gets all attributes.
 
History:
Date		User		Change
1/2/2012	jzaman		Creation.

*/

CREATE PROCEDURE [dbo].[pr_get_all_attributes]	
AS
BEGIN

SET NOCOUNT ON;
		
	SELECT a.AttributeId, a.Name, a.[Description], vt.Name AS 'ValueTypeName', vt.ValueTypeId
	FROM dbo.[Attributes] a
	INNER JOIN dbo.[ValueTypes] vt
	ON a.DefaultValueTypeId = vt.ValueTypeId
	ORDER BY a.Name
END
