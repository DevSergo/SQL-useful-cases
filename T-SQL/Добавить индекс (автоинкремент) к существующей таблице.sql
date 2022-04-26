--подключаем базу myTestDB
--добавляем индексное автоинкрементное поле pmid к таблице TestTableB

--ВОЗМОЖНО. более правильно будет сделать через CONSTRAINT
--надо бы изучить этот вопрос тут https://stackoverflow.com/questions/11794659/add-primary-key-to-existing-table

use myTestDB;
ALTER TABLE dbo.TestTableB 
ADD pmid BIGINT IDENTITY;
GO
