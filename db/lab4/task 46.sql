DECLARE @STR NVARCHAR(MAX),  @RESULTSTR NVARCHAR(MAX), @COUNT INT, @INDEX INT
DECLARE @TABLE TABLE (Word NVARCHAR(MAX))
DECLARE @TMPVALUE NVARCHAR(MAX)
DECLARE @LENSTR INT

SET @STR = N'В  родном  человеке — родное  дитя,
В  милой  плоти — родная плоть…
Всё  остальное мышей возня,
Выше  ничто не придумал Господь.
Тонет  в  присном   вчерашнее слово
И я  склоняюсь,едва дыша…
Нежно  целуя любимой лоно,
Нежно  хранящей моего малыша…'

SET @LENSTR = LEN(@STR)

SET @STR = REPLACE(@STR, ',', ', ')
SET @STR = REPLACE(@STR, '.', '. ')
SET @STR = REPLACE(@STR, '!', '! ')
SET @STR = REPLACE(@STR, '?', '? ')
SET @STR = REPLACE(@STR, ':', ': ')
SET @STR = REPLACE(@STR, ';', '; ')

SET @COUNT = (SELECT COUNT(VALUE) FROM STRING_SPLIT(@STR, ' '))
SET @INDEX = 0

DECLARE WORDCURSOR SCROLL CURSOR FOR SELECT VALUE as Word FROM STRING_SPLIT(@STR, ' ') WHERE RTRIM(value) <> '';
OPEN WORDCURSOR

FETCH FIRST FROM WORDCURSOR INTO @TMPVALUE

WHILE @@FETCH_STATUS = 0
BEGIN
SET @RESULTSTR = CONCAT(@RESULTSTR, ' ', @TMPVALUE)
FETCH NEXT FROM WORDCURSOR INTO @TMPVALUE
END

SET @RESULTSTR = LTRIM(@RESULTSTR)

CLOSE WORDCURSOR
DEALLOCATE WORDCURSOR

PRINT @RESULTSTR
PRINT @LENSTR - LEN(@RESULTSTR) 

