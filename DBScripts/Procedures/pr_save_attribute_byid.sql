USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_save_attribute_byid]    Script Date: 01/04/2013 15:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_save_attribute_byid') BEGIN
	DROP PROCEDURE [dbo].[pr_save_attribute_byid]
END

GO

/*

Name: pr_save_attribute_byid

Description: save attribute details of existing attribute.
 
History:
Date		User		Change
1/4/2012	jzaman		Creation

*/

CREATE PROCEDURE [dbo].[pr_save_attribute_byid]
	@AttributeID INT,
	@AttributeName nvarchar(50),
	@Description nvarchar(500) = NULL,	
	@DefaultValueTypeName nvarchar(50) = 'text1',
	@DefaultValueLength int = NULL,
	@DefaultSelectionListName nvarchar(50) = NULL	
AS
BEGIN

SET NOCOUNT ON;
		
	DECLARE @ValueTypeID INT
	DECLARE @SelectionListID INT
			
	SELECT @ValueTypeID = (SELECT TOP 1 ValueTypeID FROM dbo.[ValueTypes] WHERE Name = @DefaultValueTypeName)
			
	SELECT @SelectionListID = (SELECT TOP 1 SelectionListID FROM dbo.[SelectionLists] WHERE Name = @DefaultSelectionListName)	

	UPDATE dbo.[Attributes]
	SET
		Name = @AttributeName,
		Description = ISNULL(@Description, Description),
		DefaultValueTypeID = @ValueTypeID,
		DefaultValueLength = ISNULL(@DefaultValueLength, DefaultValueLength),
		DefaultSelectionListID = @SelectionListID
	WHERE AttributeID = @AttributeID
END
