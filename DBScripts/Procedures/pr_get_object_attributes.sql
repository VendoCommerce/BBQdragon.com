USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_get_object_attributes]    Script Date: 01/02/2013 17:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_object_attributes') BEGIN
	DROP PROCEDURE [dbo].[pr_get_object_attributes]
END

GO

/*

Name: pr_get_object_attributes

Description: Gets list of object/attribute relationships.
 
History:
Date		User		Change
7/2/2012	jzaman		Creation
1/2/2012	jzaman		Added sort by attr name.

*/

CREATE PROCEDURE [dbo].[pr_get_object_attributes]
	@ObjectName nvarchar(50)	
AS
BEGIN

SET NOCOUNT ON;
		
	SELECT 
		a.Name as 'AttributeName', oa.DisplayLabel, vt.Name as 'ValueTypeName', vt.SqlDbType as 'SqlDbType', 
		a.Description as 'AttributeDescription', oat.Name as 'ObjectAttributeTypeName'
	FROM dbo.[ObjectAttributes] oa
	INNER JOIN dbo.[Objects] o
	ON oa.ObjectID = o.ObjectID
	INNER JOIN dbo.[Attributes] a
	ON oa.AttributeID = a.AttributeID
	INNER JOIN dbo.[ValueTypes] vt
	ON a.DefaultValueTypeID = vt.ValueTypeID
	INNER JOIN dbo.[ObjectAttributeTypes] oat
	ON oa.ObjectAttributeTypeID = oat.ObjectAttributeTypeID
	WHERE o.Name = @ObjectName
	ORDER BY a.Name
END
