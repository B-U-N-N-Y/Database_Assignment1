USE [Employee1]
GO
/****** Object:  Trigger [dbo].[TriggerUpdate]    Script Date: 8/6/2019 1:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[TriggerUpdate] 
   ON  [dbo].[employee_tb1] 
   AFTER  INSERT,DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	select * from employee_tb1;
	insert into employee_audit(LastUpdateTime)
	values(GETDATE());

    -- Insert statements for trigger here

END
