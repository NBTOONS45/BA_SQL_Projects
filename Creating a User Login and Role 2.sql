

CREATE LOGIN Quiz_Login1 WITH PASSWORD = '1234';

CREATE USER [Quiz_User1] FOR LOGIN [TEST_LOGIN1];

EXECUTE AS LOGIN = 'Quiz_Login1';
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS CurrentLogin, USER_NAME() AS CurrentUser;

EXECUTE AS LOGIN = 'Quiz_Login1';
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS CurrentLogin, USER_NAME() AS CurrentUser;

REVERT 
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS Login, USER_NAME() AS UserName; --CHECKS THE REVERT

CREATE ROLE QuizRole1;

ALTER ROLE [QuizRole1] ADD MEMBER [Quiz_User1];

GRANT SELECT ON [dbo].[DimDate] TO QuizRole1

 
ALTER ROLE [QuizRole1] ADD MEMBER [Quiz_User1];

EXECUTE AS LOGIN = 'Quiz_Login1';
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS CurrentLogin, USER_NAME() AS CurrentUser;


EXECUTE AS USER = 'Quiz_User1'; --
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS CurrentLogin, USER_NAME() AS CurrentUser;
SELECT TOP (5) * FROM [dbo].[DimDate];

REVERT 
SELECT ORIGINAL_LOGIN() AS OriginalLogin, SUSER_NAME() AS Login, USER_NAME() AS UserName; --CHECKS THE REVERT
