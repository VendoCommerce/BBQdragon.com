USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_remove_single_object_attribute]    Script Date: 12/28/2012 10:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_remove_single_object_attribute') BEGIN
	DROP PROCEDURE [dbo].[pr_remove_single_object_attribute]
END

GO

/*

Name: pr_remove_single_object_attribute

Description: removes single object attribute association.
 
History:
Date		User		Change
1/7/2013	jzaman		Creation

exec pr_remove_single_object_attribute 1, 22
*/

CREATE PROCEDURE [dbo].[pr_remove_single_object_attribute]
	@ObjectId int, 	
	@AttributeId int
AS
BEGIN

SET NOCOUNT ON;
		
	DELETE FROM dbo.[ObjectAttributes]
	WHERE ObjectId = @ObjectId 
	AND AttributeId = @AttributeId

END
