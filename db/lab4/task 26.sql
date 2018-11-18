SET DATEFORMAT dmy

DECLARE @varNum NUMERIC , @varChar VARCHAR(MAX), @varDateTime DATETIME

SET @varNum = 100
SET @varChar = 'asdxxx'
SET @varDateTime = '26.07.1999 04:04:04'

SELECT CAST(@varChar as CHAR)
SELECT CAST(@varNum as FLOAT)
SELECT CAST(@varDateTime as BIGINT)