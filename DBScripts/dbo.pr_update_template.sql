USE [CSBaseECommerce]
GO

/****** Object:  StoredProcedure [dbo].[pr_update_template]    Script Date: 07/09/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_update_template') BEGIN
	DROP PROCEDURE [dbo].[pr_update_template]
END

GO

CREATE PROC [dbo].[pr_update_template]         
@templateId int,       
@title varchar(200),      
@body varchar(max),      
@script varchar(max),
@tag xml,  
@expireDate  datetime,  
@templateItemXML xml,
@uriLabel varchar(200)
AS  
   
SET QUOTED_IDENTIFIER ON        
        
IF @templateId =0      
BEGIN      
 INSERT INTO Template(Name, Body, Script, Tag, [ExpireDate], Visible, URILabel, CreateDate)      
 SELECT @title, @body, @script, @tag, @expireDate, 1, @uriLabel, GETDATE()
       
 SELECT @templateId = SCOPE_IDENTITY()     
      
END    
BEGIN    
 UPDATE Template    
 SET Name = @title, Body = @body, Script = @script, Tag= @tag, URILabel = @uriLabel, [ExpireDate] = @expireDate    
 WHERE TemplateId = @templateId    
     
 DELETE FROM  TemplateItems WHERE TemplateId = @templateId    
END    
    
 INSERT INTO TemplateItems(TemplateId, SkuId, TypeId)        
 select  @templateId, x.n.value('@skuId', 'int'),        
 x.n.value('@typeId', 'int')       
 from @templateItemXML.nodes('//item') as x(n) 
 
