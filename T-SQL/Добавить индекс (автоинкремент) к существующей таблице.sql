
--  подключаем базу myTestDB
--  добавляем Столбец Идентификаторов (индексное автоинкрементное поле) idx к таблице TestTableB

use myTestDB;
ALTER TABLE dbo.TestTableB 
ADD [idx] BIGINT IDENTITY;
GO

  
--  ниже более правильный способ с использованием CONSTRAINT 

use myTestDB;
ALTER TABLE dbo.TestTableB ADD CONSTRAINT PK_idx PRIMARY KEY NONCLUSTERED ([idx], summ);
GO
