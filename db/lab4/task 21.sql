DECLARE @TEMP TABLE([Id] INT, [Name] VARCHAR(MAX), [Status] bit DEFAULT 1)

INSERT INTO @TEMP ([Id], [Name], [Status]) VALUES (1,'Goblin',0)
INSERT INTO @TEMP ([Id], [Name]) VALUES (2,'Goblin1')
INSERT INTO @TEMP ([Id], [Name], [Status]) VALUES (3,'Goblin2')

SELECT * FROM @TEMP