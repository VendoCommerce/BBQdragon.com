USE [CSBaseECommerce]
GO

/****** Object:  StoredProcedure [dbo].[pr_get_item_attribute_values_ext]    Script Date: 12/27/2012 14:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_item_attribute_values_ext') BEGIN
	DROP PROCEDURE [dbo].[pr_get_item_attribute_values_ext]
END

GO

/*

Name: pr_get_item_attribute_values_ext

Description: Gets all attribute values of given object and item w/ extended results.
 
History:
Date		User		Change
12/27/2012	jzaman		Creation

Examples:
exec [pr_get_item_attribute_values_ext] 'sku', 30

*/

CREATE PROCEDURE [dbo].[pr_get_item_attribute_values_ext]
	@ObjectName nvarchar(50),
	@ObjectItemID [int]
AS
BEGIN

SET NOCOUNT ON;
		
	DECLARE @Sql NVARCHAR(2000)
	DECLARE @TableName NVARCHAR(50)
	DECLARE @ColName NVARCHAR(50)
	
	SELECT TOP 1 @TableName = ValuesTableName, @ColName = PrimaryKeyColName FROM dbo.[Objects] WHERE Name = @ObjectName
		
	SET @Sql = N'		
	SELECT a.Name AS ''AttributeName'', oav.Value, vt.SqlDbType, oat.Name AS ''ObjectAttributeTypeName''
	FROM dbo.[' + @TableName + N'] oav
	INNER JOIN dbo.[ObjectAttributes] oa
	ON oav.ObjectAttributeID = oa.ObjectAttributeID	
    INNER JOIN dbo.[Attributes] a
    ON oa.AttributeID = a.AttributeID
    INNER JOIN dbo.[Objects] o
    ON oa.ObjectID = o.ObjectID
    INNER JOIN dbo.[ValueTypes] vt
    ON a.DefaultValueTypeID = vt.ValueTypeID
    INNER JOIN dbo.[ObjectAttributeTypes] oat
    ON oa.ObjectAttributeTypeID = oat.ObjectAttributeTypeID
    WHERE o.Name = @p1  
    AND oav.' + @ColName + N' = @p2
    ORDER BY a.Name
    '
    
    EXECUTE sp_executesql @Sql, N'@p1 nvarchar(50), @p2 INT', @p1 = @ObjectName, @p2 = @ObjectItemID;
END
