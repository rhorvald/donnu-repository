USE [HFWDB]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 18.11.2018 12:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [uniqueidentifier] NULL,
	[EmployerId] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[Value] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employers]    Script Date: 18.11.2018 12:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MainSpecialization] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Country] [nvarchar](50) NULL,
	[Education] [nvarchar](100) NULL,
	[Experience] [int] NULL,
	[Rate] [int] NULL,
	[Type] [int] NULL,
	[Identificator] [nvarchar](50) NULL,
	[Uri] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 18.11.2018 12:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sources](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Domain] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[Culture] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[LastWorkIdentificator] [nvarchar](50) NULL,
	[LastEmployerIdentificator] [nvarchar](50) NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StampTags]    Script Date: 18.11.2018 12:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StampTags](
	[Id] [uniqueidentifier] NOT NULL,
	[TagText] [nvarchar](50) NULL,
	[Base] [nvarchar](50) NULL,
	[Category] [int] NULL,
 CONSTRAINT [PK_StampTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 18.11.2018 12:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ItemId] [uniqueidentifier] NOT NULL,
	[StampTagId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeContact]    Script Date: 18.11.2018 12:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeContact](
	[Id] [nchar](10) NULL,
	[Name] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeEmployer]    Script Date: 18.11.2018 12:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeEmployer](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeEmployer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeModule]    Script Date: 18.11.2018 12:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeModule](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePayment]    Script Date: 18.11.2018 12:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePayment](
	[Id] [nchar](10) NULL,
	[Name] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Works]    Script Date: 18.11.2018 12:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Works](
	[Id] [uniqueidentifier] NOT NULL,
	[Identificator] [nvarchar](50) NULL,
	[SourceId] [uniqueidentifier] NOT NULL,
	[Registrated] [datetime] NULL,
	[Created] [datetime] NULL,
	[EmployerId] [uniqueidentifier] NULL,
	[Text] [nvarchar](max) NULL,
	[Reward] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'13d2dd6a-0ca1-4251-b263-13171fe5b6ef', N'Елдана', N'Авторы текстов, писатели', N'По профессии я конвергентный журналист. Умею работать в фоторедакторах и разбираюсь в видеомонтаже. Имею опыт в копирайтинге и пишу статьи на сайте catch.today
Имею базовые знания html/css', N'Kazakhstan', N'Международный университет информационных технологий', 1, 0, 2, N'70055', N'http://www.kadrof.ru/userprofile/view/70055')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'd7a927b9-a168-4e7e-aa91-134cb28de324', N'Елена', N'SMM-специалисты', N'Ссылка на мое портфолио: https://vk.cc/8G0yk0', N'Russian', N'Сайт для бизнеса', 0, 0, 2, N'70051', N'http://www.kadrof.ru/userprofile/view/70051')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'd0f933ec-543c-434a-ba52-15670bc6a697', N'Дмитрий', N'Специалисты по контекстной рекламе', N'Всем добрый день! Я специалист по Яндекс Директ. У Вас он-лайн бизнес? Вы продаёте и вам нужны заказы? Я могу быть вам полезен: 1. Посмотрю ваш сайт и скажу готов ли он к продажам в интернете. 2. Что можно улучшить, чтобы получить больше клиентов из интернета. 3. Настрою аналитику, чтобы не вести рекламу вслепую и не сливать бюджет. 4. Создам рекламные кампании в Яндекс Директ и буду их сопровождать. 5. Предоставлю вам понятный отчет по проделанной работе. 6. Отвечу на вопросы. После Нашего с Вами сотрудничества, Ваш бизнес, пойдёт в гору.', N'Russian', N'СГУПС-03;   выпускник курсов 1day1step.', 1, 0, 2, N'70022', N'http://www.kadrof.ru/userprofile/view/70022')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'5fa8d9e4-e6b3-4dab-b7bb-1c5a71b869f3', N'Катерина', N'Дизайнеры', N'Пользователь не указал информацию.', N'Russian', N'Пользователь не указал информацию.', 5, 0, 2, N'70066', N'http://www.kadrof.ru/userprofile/view/70066')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'a9243701-f980-474c-8274-20eea8f4109a', N'Виктор', N'Программисты и верстальщики', N'Создание и продвижение сайтов на CMS 1С-Битрикс', N'Russian', N'Пользователь не указал информацию.', 10, 0, 2, N'70112', N'http://www.kadrof.ru/userprofile/view/70112')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'4f582c80-af1f-4e8a-84d5-249d376a4e8b', N'Лариса', N'Переводчики', N'письменный перевод с немецкого на тему производство строительных материалов, изделий и конструкций, строительство и пивоварение.', N'Russian', N'БрГТУ, магистр техники и технологии в направлении строительство', 10, 0, 2, N'70054', N'http://www.kadrof.ru/userprofile/view/70054')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'c01bedea-0550-49b6-816a-28400165f41f', N'Елдана', N'Авторы текстов, писатели', N'По профессии я конвергентный журналист. Умею работать в фоторедакторах и разбираюсь в видеомонтаже. Имею опыт в копирайтинге и пишу статьи на сайте catch.today
Имею базовые знания html/css', N'Kazakhstan', N'Международный университет информационных технологий', 1, 0, 2, N'70055', N'http://www.kadrof.ru/userprofile/view/70055')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'83fd7dd7-04d5-4717-98e1-2cbc813e8c69', N'Елена', N'SMM-специалисты', N'Ссылка на мое портфолио: https://vk.cc/8G0yk0', N'Russian', N'Сайт для бизнеса', 0, 0, 2, N'70051', N'http://www.kadrof.ru/userprofile/view/70051')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'98d629fa-10b2-4e8e-84d7-2d75afd2cfa6', N'Дмитрий', N'Специалисты по контекстной рекламе', N'Всем добрый день! Я специалист по Яндекс Директ. У Вас он-лайн бизнес? Вы продаёте и вам нужны заказы? Я могу быть вам полезен: 1. Посмотрю ваш сайт и скажу готов ли он к продажам в интернете. 2. Что можно улучшить, чтобы получить больше клиентов из интернета. 3. Настрою аналитику, чтобы не вести рекламу вслепую и не сливать бюджет. 4. Создам рекламные кампании в Яндекс Директ и буду их сопровождать. 5. Предоставлю вам понятный отчет по проделанной работе. 6. Отвечу на вопросы. После Нашего с Вами сотрудничества, Ваш бизнес, пойдёт в гору.', N'Russian', N'СГУПС-03;   выпускник курсов 1day1step.', 1, 0, 2, N'70022', N'http://www.kadrof.ru/userprofile/view/70022')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'd80628de-cb5f-40f0-b63a-3e2959bc0d1b', N'Елена', N'Авторы текстов, писатели', N'Высшее образование по специальности &quot;Журналистика&quot;. Более десяти лет занимаюсь созданием текстов (работала журналистом в СМИ, копирайтером в веб-студии, последние три года занимаюсь копирайтингом - пишу тексты для российских компаний). 

УСЛУГИ: 

- Тексты на главную, о компании, услуги 
- Тексты для Landing Page 
- Коммерческие предложения 
- SEO-тексты 
- Иные продающие тексты 
- Статьи (как для сайтов, так и для печатных изданий) 
- Интервью 

Заказывая тексты у меня, вы получаете:
- Грамотные материалы без ошибок
- Цепляющие заголовки и подзаголовки
- Тексты, ориентированные на вашу целевую аудиторию
- Интересные материалы, написанные для людей

Всегда тщательно прорабатываю темы. При написании коммерческих материалов заказчику необходимо будет заполнить бриф. Работаю по предоплате.', N'Russian', N'Белгородский государственный университет, факультет журналистики', 10, 0, 2, N'70060', N'http://www.kadrof.ru/userprofile/view/70060')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'df5f9e37-6394-47c0-b1c5-4451892a139c', N'Виктор', N'Программисты и верстальщики', N'Создание и продвижение сайтов на CMS 1С-Битрикс', N'Russian', N'Пользователь не указал информацию.', 10, 0, 2, N'70112', N'http://www.kadrof.ru/userprofile/view/70112')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'4575c129-639e-4866-93cd-46475ee8aebf', N'Елдана', N'Авторы текстов, писатели', N'По профессии я конвергентный журналист. Умею работать в фоторедакторах и разбираюсь в видеомонтаже. Имею опыт в копирайтинге и пишу статьи на сайте catch.today
Имею базовые знания html/css', N'Kazakhstan', N'Международный университет информационных технологий', 1, 0, 2, N'70055', N'http://www.kadrof.ru/userprofile/view/70055')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'04ea0edb-5bd1-43b2-8dfc-4ca862fe83b0', N'RedRiftGames', N'Программисты и верстальщики', N'Здравствуйте! 

Мы - команда, опытная в создании мобильных игр. 
Вы можете ознакомиться с нашим последним проектом: http://bit.ly/2NB5IcE (создан за 1 месяц) 
У нас есть художники, способные создать хороший визуальный опыт. 
У меня 5-летний опыт работы в качестве фулл-стек разработчика .Net, создания AI для чат-бота (США), тяжелых UI систем, комплексных веб сайтов и разработки игр с использованием Unity, мы предоставим вам качественную масштабируемую кодовую базу в короткое время. 

Мы в состоянии предоставить вам: 
- Полный цикл разработки проекта 
- Геймдизайн, Идеи. 
- Кросс-платформенная сборка. - Unity3d 
- Любая интеграция. (sdk&#039;s, spi&#039;s др.) 
- Релиз менеджмент. 
- Поддержка после выпуска 
- Любое дополнительное требование, которое вам нужно! 

Наша ставка - 13$ в час.   

Пожалуйста, свяжитесь со мной, чтобы обсудить ваши конкретные потребности, мы сразу сосредоточимся на них. 

С уважением, 
Денис Пухляков', N'Moldova', N'USM', 5, 0, 2, N'70130', N'http://www.kadrof.ru/userprofile/view/70130')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'b05249df-cc30-40d7-872e-52d7ddb2aa13', N'Елена', N'Авторы текстов, писатели', N'Высшее образование по специальности &quot;Журналистика&quot;. Более десяти лет занимаюсь созданием текстов (работала журналистом в СМИ, копирайтером в веб-студии, последние три года занимаюсь копирайтингом - пишу тексты для российских компаний). 

УСЛУГИ: 

- Тексты на главную, о компании, услуги 
- Тексты для Landing Page 
- Коммерческие предложения 
- SEO-тексты 
- Иные продающие тексты 
- Статьи (как для сайтов, так и для печатных изданий) 
- Интервью 

Заказывая тексты у меня, вы получаете:
- Грамотные материалы без ошибок
- Цепляющие заголовки и подзаголовки
- Тексты, ориентированные на вашу целевую аудиторию
- Интересные материалы, написанные для людей

Всегда тщательно прорабатываю темы. При написании коммерческих материалов заказчику необходимо будет заполнить бриф. Работаю по предоплате.', N'Russian', N'Белгородский государственный университет, факультет журналистики', 10, 0, 2, N'70060', N'http://www.kadrof.ru/userprofile/view/70060')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'81b920bc-4e39-401d-9048-6b73aa0cd059', N'Лариса', N'Переводчики', N'письменный перевод с немецкого на тему производство строительных материалов, изделий и конструкций, строительство и пивоварение.', N'Russian', N'БрГТУ, магистр техники и технологии в направлении строительство', 10, 0, 2, N'70054', N'http://www.kadrof.ru/userprofile/view/70054')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'821df6fa-265b-4080-a246-777380a4b850', N'Катерина', N'Дизайнеры', N'Пользователь не указал информацию.', N'Russian', N'Пользователь не указал информацию.', 5, 0, 2, N'70066', N'http://www.kadrof.ru/userprofile/view/70066')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'4b09893a-9145-4b8a-94bc-7bfa5c6adeae', N'Николай', N'Специалисты по контекстной рекламе', N'Как настраиваю рекламу 
•	Анализ конкурентов
•	проработка ЦА
•	проработка посадочных страниц
•	Сбор и сегментация семантического ядра
•	Разделения на транзакционные запросы и тестовые
•	Написания объявлений
•	Прохождение модерации
•	Создание Поиска, Рся\Кмс, Ретаргетинга\Ремаркетинга
•	Автоматизация работы при составлении рекламных 
кампаний

Бесплатная разработка Landing page для рекламы', N'Russian', N'Пользователь не указал информацию.', 3, 0, 2, N'70095', N'http://www.kadrof.ru/userprofile/view/70095')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'b94a891b-f583-4b26-9a63-82a95522e92b', N'RedRiftGames', N'Программисты и верстальщики', N'Здравствуйте! 

Мы - команда, опытная в создании мобильных игр. 
Вы можете ознакомиться с нашим последним проектом: http://bit.ly/2NB5IcE (создан за 1 месяц) 
У нас есть художники, способные создать хороший визуальный опыт. 
У меня 5-летний опыт работы в качестве фулл-стек разработчика .Net, создания AI для чат-бота (США), тяжелых UI систем, комплексных веб сайтов и разработки игр с использованием Unity, мы предоставим вам качественную масштабируемую кодовую базу в короткое время. 

Мы в состоянии предоставить вам: 
- Полный цикл разработки проекта 
- Геймдизайн, Идеи. 
- Кросс-платформенная сборка. - Unity3d 
- Любая интеграция. (sdk&#039;s, spi&#039;s др.) 
- Релиз менеджмент. 
- Поддержка после выпуска 
- Любое дополнительное требование, которое вам нужно! 

Наша ставка - 13$ в час.   

Пожалуйста, свяжитесь со мной, чтобы обсудить ваши конкретные потребности, мы сразу сосредоточимся на них. 

С уважением, 
Денис Пухляков', N'Moldova', N'USM', 5, 0, 2, N'70130', N'http://www.kadrof.ru/userprofile/view/70130')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'75fc11db-c582-4d11-9e49-83176c66d3f0', N'Антонина', N'Авторы текстов, писатели', N'Я люблю писать. Стихи, сказки, рассказы.

Стараюсь писать, чтобы читалось легко, с юмором и смыслом.

Приятно получать удовольствие от чтения и пищу для ума. Чувствуешь - время на книгу потрачено не зря. И это не главное! Главное - улыбки, смех, слезы, горечь... Любая из эмоций, которая посещает в процессе общения с книгой.

Важно то, что вы чувствуете, общаясь со мной через книги, строки, слова…', N'Russian', N'ПГМА', 5, 0, 2, N'70134', N'http://www.kadrof.ru/userprofile/view/70134')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'bb6b499b-e05f-4b45-aaac-856765dd9492', N'Николай', N'Специалисты по контекстной рекламе', N'Как настраиваю рекламу 
•	Анализ конкурентов
•	проработка ЦА
•	проработка посадочных страниц
•	Сбор и сегментация семантического ядра
•	Разделения на транзакционные запросы и тестовые
•	Написания объявлений
•	Прохождение модерации
•	Создание Поиска, Рся\Кмс, Ретаргетинга\Ремаркетинга
•	Автоматизация работы при составлении рекламных 
кампаний

Бесплатная разработка Landing page для рекламы', N'Russian', N'Пользователь не указал информацию.', 3, 0, 2, N'70095', N'http://www.kadrof.ru/userprofile/view/70095')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'e911f6c4-4d32-471f-940f-86b639eb76a2', N'Николай', N'Специалисты по контекстной рекламе', N'Как настраиваю рекламу 
•	Анализ конкурентов
•	проработка ЦА
•	проработка посадочных страниц
•	Сбор и сегментация семантического ядра
•	Разделения на транзакционные запросы и тестовые
•	Написания объявлений
•	Прохождение модерации
•	Создание Поиска, Рся\Кмс, Ретаргетинга\Ремаркетинга
•	Автоматизация работы при составлении рекламных 
кампаний

Бесплатная разработка Landing page для рекламы', N'Russian', N'Пользователь не указал информацию.', 3, 0, 2, N'70095', N'http://www.kadrof.ru/userprofile/view/70095')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'ce530114-474c-4270-af54-9cb0f59c1f95', N'Елена', N'Авторы текстов, писатели', N'Высшее образование по специальности &quot;Журналистика&quot;. Более десяти лет занимаюсь созданием текстов (работала журналистом в СМИ, копирайтером в веб-студии, последние три года занимаюсь копирайтингом - пишу тексты для российских компаний). 

УСЛУГИ: 

- Тексты на главную, о компании, услуги 
- Тексты для Landing Page 
- Коммерческие предложения 
- SEO-тексты 
- Иные продающие тексты 
- Статьи (как для сайтов, так и для печатных изданий) 
- Интервью 

Заказывая тексты у меня, вы получаете:
- Грамотные материалы без ошибок
- Цепляющие заголовки и подзаголовки
- Тексты, ориентированные на вашу целевую аудиторию
- Интересные материалы, написанные для людей

Всегда тщательно прорабатываю темы. При написании коммерческих материалов заказчику необходимо будет заполнить бриф. Работаю по предоплате.', N'Russian', N'Белгородский государственный университет, факультет журналистики', 10, 0, 2, N'70060', N'http://www.kadrof.ru/userprofile/view/70060')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'e4543451-992b-4ae4-9a25-afdb1b91d257', N'RedRiftGames', N'Программисты и верстальщики', N'Здравствуйте! 

Мы - команда, опытная в создании мобильных игр. 
Вы можете ознакомиться с нашим последним проектом: http://bit.ly/2NB5IcE (создан за 1 месяц) 
У нас есть художники, способные создать хороший визуальный опыт. 
У меня 5-летний опыт работы в качестве фулл-стек разработчика .Net, создания AI для чат-бота (США), тяжелых UI систем, комплексных веб сайтов и разработки игр с использованием Unity, мы предоставим вам качественную масштабируемую кодовую базу в короткое время. 

Мы в состоянии предоставить вам: 
- Полный цикл разработки проекта 
- Геймдизайн, Идеи. 
- Кросс-платформенная сборка. - Unity3d 
- Любая интеграция. (sdk&#039;s, spi&#039;s др.) 
- Релиз менеджмент. 
- Поддержка после выпуска 
- Любое дополнительное требование, которое вам нужно! 

Наша ставка - 13$ в час.   

Пожалуйста, свяжитесь со мной, чтобы обсудить ваши конкретные потребности, мы сразу сосредоточимся на них. 

С уважением, 
Денис Пухляков', N'Moldova', N'USM', 5, 0, 2, N'70130', N'http://www.kadrof.ru/userprofile/view/70130')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'13f66424-b576-479c-aa82-b02dc33d63c3', N'Елена', N'SMM-специалисты', N'Ссылка на мое портфолио: https://vk.cc/8G0yk0', N'Russian', N'Сайт для бизнеса', 0, 0, 2, N'70051', N'http://www.kadrof.ru/userprofile/view/70051')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'1867aef4-6104-499c-9598-c4235926f1a9', N'Dariget', N'Авторы текстов, писатели', N'Молодой копирайтер. Постоянно учусь, и обновляю свои навыки. Пишу информационные статьи, обзоры, SEO тексты. В продающих статьях мало опыта.', N'Russian', N'Томский университет систем управления и радиоэлектроники', 2, 0, 2, N'70061', N'http://www.kadrof.ru/userprofile/view/70061')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'6094aa49-b455-4fe7-a8fe-c6c5c2b96e36', N'Dariget', N'Авторы текстов, писатели', N'Молодой копирайтер. Постоянно учусь, и обновляю свои навыки. Пишу информационные статьи, обзоры, SEO тексты. В продающих статьях мало опыта.', N'Russian', N'Томский университет систем управления и радиоэлектроники', 2, 0, 2, N'70061', N'http://www.kadrof.ru/userprofile/view/70061')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'aef3d9c5-86ac-4228-8b92-cae6053bd400', N'Катерина', N'Дизайнеры', N'Пользователь не указал информацию.', N'Russian', N'Пользователь не указал информацию.', 5, 0, 2, N'70066', N'http://www.kadrof.ru/userprofile/view/70066')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'1fa02748-07f5-407a-9edb-df3c7cb76c8d', N'Антонина', N'Авторы текстов, писатели', N'Я люблю писать. Стихи, сказки, рассказы.

Стараюсь писать, чтобы читалось легко, с юмором и смыслом.

Приятно получать удовольствие от чтения и пищу для ума. Чувствуешь - время на книгу потрачено не зря. И это не главное! Главное - улыбки, смех, слезы, горечь... Любая из эмоций, которая посещает в процессе общения с книгой.

Важно то, что вы чувствуете, общаясь со мной через книги, строки, слова…', N'Russian', N'ПГМА', 5, 0, 2, N'70134', N'http://www.kadrof.ru/userprofile/view/70134')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'9f050e1d-a4f5-4e60-8826-e222f265fba1', N'Лариса', N'Переводчики', N'письменный перевод с немецкого на тему производство строительных материалов, изделий и конструкций, строительство и пивоварение.', N'Russian', N'БрГТУ, магистр техники и технологии в направлении строительство', 10, 0, 2, N'70054', N'http://www.kadrof.ru/userprofile/view/70054')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'b58722c8-5939-4f9d-bdb7-e9e278c53c9e', N'Антонина', N'Авторы текстов, писатели', N'Я люблю писать. Стихи, сказки, рассказы.

Стараюсь писать, чтобы читалось легко, с юмором и смыслом.

Приятно получать удовольствие от чтения и пищу для ума. Чувствуешь - время на книгу потрачено не зря. И это не главное! Главное - улыбки, смех, слезы, горечь... Любая из эмоций, которая посещает в процессе общения с книгой.

Важно то, что вы чувствуете, общаясь со мной через книги, строки, слова…', N'Russian', N'ПГМА', 5, 0, 2, N'70134', N'http://www.kadrof.ru/userprofile/view/70134')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'16d58940-5c8c-4b95-99f7-f9a7e44b1f45', N'Виктор', N'Программисты и верстальщики', N'Создание и продвижение сайтов на CMS 1С-Битрикс', N'Russian', N'Пользователь не указал информацию.', 10, 0, 2, N'70112', N'http://www.kadrof.ru/userprofile/view/70112')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'10a3b6e2-dd28-4670-8f42-fa57f34c9cc0', N'Дмитрий', N'Специалисты по контекстной рекламе', N'Всем добрый день! Я специалист по Яндекс Директ. У Вас он-лайн бизнес? Вы продаёте и вам нужны заказы? Я могу быть вам полезен: 1. Посмотрю ваш сайт и скажу готов ли он к продажам в интернете. 2. Что можно улучшить, чтобы получить больше клиентов из интернета. 3. Настрою аналитику, чтобы не вести рекламу вслепую и не сливать бюджет. 4. Создам рекламные кампании в Яндекс Директ и буду их сопровождать. 5. Предоставлю вам понятный отчет по проделанной работе. 6. Отвечу на вопросы. После Нашего с Вами сотрудничества, Ваш бизнес, пойдёт в гору.', N'Russian', N'СГУПС-03;   выпускник курсов 1day1step.', 1, 0, 2, N'70022', N'http://www.kadrof.ru/userprofile/view/70022')
INSERT [dbo].[Employers] ([Id], [Name], [MainSpecialization], [Description], [Country], [Education], [Experience], [Rate], [Type], [Identificator], [Uri]) VALUES (N'61f54e95-af98-4c4c-acb3-fe933f7425d7', N'Dariget', N'Авторы текстов, писатели', N'Молодой копирайтер. Постоянно учусь, и обновляю свои навыки. Пишу информационные статьи, обзоры, SEO тексты. В продающих статьях мало опыта.', N'Russian', N'Томский университет систем управления и радиоэлектроники', 2, 0, 2, N'70061', N'http://www.kadrof.ru/userprofile/view/70061')
INSERT [dbo].[Sources] ([Id], [Name], [Domain], [Type], [Culture], [Status], [LastWorkIdentificator], [LastEmployerIdentificator]) VALUES (N'03b225af-e363-439b-ae89-23e457fa0d1a', N'Kadrof', N'kadrof.ru', 2, N'ru-ru', 1, N'843', NULL)
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'0         ', N'None      ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'1         ', N'Email     ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'2         ', N'Skype     ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'3         ', N'Phone     ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'4         ', N'Vk        ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'5         ', N'Facebook  ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'6         ', N'Git       ')
INSERT [dbo].[TypeContact] ([Id], [Name]) VALUES (N'7         ', N'SiteOfBlog')
INSERT [dbo].[TypeModule] ([Id], [Name]) VALUES (0, N'None')
INSERT [dbo].[TypeModule] ([Id], [Name]) VALUES (1, N'Vk')
INSERT [dbo].[TypeModule] ([Id], [Name]) VALUES (2, N'Kadrof')
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'0afce246-6928-418f-b66e-e236eab138c2', N'764', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.963' AS DateTime), CAST(N'2015-07-08T01:10:00.000' AS DateTime), NULL, N'требуется перевод русской версии сайта на английский язык', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'2419177f-39e4-493a-81ec-c25090f58ec0', N'770', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.957' AS DateTime), CAST(N'2015-07-08T10:25:00.000' AS DateTime), NULL, N'Уважаемые коллеги!

Группа компаний Правовой Партнёр заинтересована в расширении сотрудничества с профессиональными внештатными переводчиками.

ВАЖНО - наличие лингвистического диплома /указание искомого языка в дипломе, а также возможности подъезжать к нотариусу и ставить свою подпись (территориально м.Тушинская) не чаще 1 раза в месяц.

Уровень оплаты обсуждается индивидуально.

По всем вопросам пишите на почту: svetlana@pravovoi-partner.ru

С уважением, Светлана
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'5bfd953c-58e5-48a2-9839-c0a8d12f07da', N'779', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.953' AS DateTime), CAST(N'2015-07-08T23:16:00.000' AS DateTime), NULL, N'Ищу людей которые будут продвигать мои услуги.
1 E-mail marketing ( smtp, рассылки, базы)
2 SEO продвижение (Прогоны по форумам , оптимизация)
3 SMM продвижение ( соц сети)
От каждого заказа 20 процентов в  ваш карман!
пишите в скайп jcmir.company', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'5e7b74ff-103a-4cc0-b807-b0f84f7c6e25', N'776', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.953' AS DateTime), CAST(N'2015-07-08T16:11:00.000' AS DateTime), NULL, N'Нужен Фрилансер-фотограф на 2 месяца(август, сентябрь) работа по договору ГПХ (на проект предметной фотосъёмки - ювелирки) работа не сложная, неполная занятость, требуется: умение работы со студийном светом, умение работать (базовые знания) в фотошопе, остальному обучим и расскажем :)Офис в двух шагах от метро! оплата работы и многие другие детали обсуждаются лично. и самое главное требование : в течении этих 2 месяцев нужно находится в Москве! 
город Москва
страница для связи http://vk.com/mit1994', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'607dacf8-2776-4e11-b7e1-b4ef801f6e15', N'702', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.963' AS DateTime), CAST(N'2015-07-02T12:15:00.000' AS DateTime), NULL, N'Требуются ответственные люди, способные писать не менее 10 тысяч знаков б.п. в сутки (под ключи). Приветствуется трудолюбие, грамотность. Оплата Webmoney 1000 знаков без пробелов- 25 руб. Пишите на электронную почту webcoper@yandex.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'7ed823d1-450d-4c2b-9752-a74e00bcbeeb', N'756', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.963' AS DateTime), CAST(N'2015-07-07T18:16:00.000' AS DateTime), NULL, N'Ищу человека, который будет искать заказы на разработку веб-сайтов за 20% от стоимости заказа. Если заказов будет много, то процент сильно увеличиться. Опыт не важен. Писать на: 
Email - Wozl77774@yandex.ru
или ВК - http://vk.com/id303303306', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e774a4c6-6dfb-41d1-890c-740906d4b468', N'700', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.963' AS DateTime), CAST(N'2015-07-02T07:37:00.000' AS DateTime), NULL, N'Ищем авторов интересных статей для нашей газеты https://plus.google.com/u/0/+PyhtaRu/about . Предлагайте свои темы и статьи. Оплата сразу на карту. Пост 1000 знаков+картинка=200 рублей*коэффицент уникальности. количество статей не ограниченно.Так же принимаем уникальные фото и видео цена от 500 рублей.
Темы:
1.Здоровое питание.
2.Здоровый образ жизни
3.Сад огород
4.народные традиции( траволечение, медицина, заговоры, ремесла)
5.Научные открытия в медицине и диетологии.
Обращаться: Email: 3541104@mail.ru Skype: Paramon20131 или пишите админу https://plus.google.com/u/0/+PyhtaRu/about', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e85a1432-a05b-459f-9d48-a2d96d239f37', N'704', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.963' AS DateTime), CAST(N'2015-07-02T13:40:00.000' AS DateTime), NULL, N'Срочно нужно создать сайт компании по развитию и продвижению бизнеса. Ищу для этого дела профессионала который справиться. Есть подробное ТЗ и макет сайта. Пишите на почту. 
nicola@ex.ua', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f852b7ec-116b-46cd-a9b1-a999d08305c5', N'774', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.957' AS DateTime), CAST(N'2015-07-08T14:21:00.000' AS DateTime), NULL, N'От вас требуется только одно - поиск заказчиков на изготовление видео(интро,аутро,презентаций и т.д.) и на обработку фото. Вы получаете 35% от заказа.

Про свою кандидатуру пишите на нашу страничку в вк:http://vk.com/id221245379', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'044671cd-481b-4cfe-a328-be0f558ff4f6', N'832', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.373' AS DateTime), CAST(N'2015-07-12T12:09:00.000' AS DateTime), NULL, N'Есть шаблон:
http://themes.renklibeyaz.com/?theme=GhostWP

И есть такой плеер: http://lambertgroup.ro/canyon/shoutcast_and_icecast_radio_wordpress/index.html

Нужно получить:
http://hostingkartinok.com/show-image.php?id=97f0c64cc6e7cbdcbcdb5a63429538f6

Суть в том, чтобы плеер не реагировал на перелистывание страниц.


', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'40e735ce-48d1-4cf1-ba6e-8723b8ebca62', N'698', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:59:57.093' AS DateTime), CAST(N'2015-07-01T17:25:00.000' AS DateTime), NULL, N'Требуется специалист владеющий техникой создания дизайна сайта с адаптивной версией для мобильников и планшетов', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'bfff7d3b-b993-47c4-ade5-4a3b192e7dc6', N'764', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:05.900' AS DateTime), CAST(N'2015-07-08T01:10:00.000' AS DateTime), NULL, N'требуется перевод русской версии сайта на английский язык', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'adaa62dd-444e-4e08-b57f-1f7d75f98f5d', N'773', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:19.957' AS DateTime), CAST(N'2015-07-08T13:38:00.000' AS DateTime), NULL, N'В онлайн-образовательный проект “Практикум” требуется трафик-менеджер
Для привлечения трафика из соц. сетей (Facebook, Вконтакте),  контекстной рекламы, баннерной рекламы и т.п.
Работа на результат.

Требования:
– Таргет/ретаргет в соцсетях, размещение рекламы в группах и пабликах
– Успешны опыт работы с Я. Директом и Google Adwords
– Опыт анализа трафика и подсчета основных показателей
– Знания Google Analytics, Яндекс.Метрика
– Анализ трафика, советы по повышению конверсии


Обязанности:
– Подготавливать и запускать рекламные кампании
– Отслеживать эффективность
– Проводить анализ рекламных кампаний
– Управление трафиком веб ресурсов
– Эффективная закупка трафика
– Анализ трафика, повышение CTR и конверта
– Поиск альтернативных источников трафика


Условия:
– Высокий уровень ответственности и свободы в принятии решений.
– Возможность для творческого и карьерного роста
– Удаленная работа
– % от продаж


Присылайте резюме на нашу почту 
job@allpraktik.ru 
в теме письма указывайте вакансию “Трафик-менеджер” 
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'21b21505-8d53-42a2-b463-0fbfe9de2c40', N'843', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.337' AS DateTime), CAST(N'2015-07-13T18:23:00.000' AS DateTime), NULL, N'Всем привет!

Интересует создание общего дизайна для сайта : www.millanna.jimdo.com

Сейчас занимаюсь сам, но я в этом деле полный профан)
общая стилистика должна быть для каждой страницы, но при это должен делаться упор на определенный продукт.
наша компания занимается полиграфией, хотел бы услышать примерную вилку цен и сколько это может занимать по срокам.

Спасибо большое.
Извините если пишу не в тот раздел, просто впервые у вас.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'36a7209f-3641-452b-8d81-fa3a5eec4fbb', N'842', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.357' AS DateTime), CAST(N'2015-07-13T15:22:00.000' AS DateTime), NULL, N'Добрый день!
Ребят,помогите разработать логотип для фирмы, занимающейся установкой и монтажом систем пожарной охранной безопасности, установкой видеонаблюдения.

1. Компания называется "БИКАР-СБ"
2. Компания работает с госструктурами, при этом сейчас вышла на рынок частных заказчиков.
3. Логотип не должен быть слишком замысловатым, он должен быть плоским и легко запоминающимся
4. Мы не претендуем на особую творческую составляющую, но и элементы таких картинок,как "глаза, орлы, башни" слишком избиты, также хотелось бы видеть иной цвет,кроме синего.

Готова обсуждать все в режиме реального времени.Пишите. Спасибо', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'463ef8c5-714e-4336-84fa-0e9cbbdfd228', N'828', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.383' AS DateTime), CAST(N'2015-07-11T18:21:00.000' AS DateTime), NULL, N'Требуется фрилансер, который будет искать заказчиков на написание уникальных поздравительных стихотворений. Фрилансер будет получать 10% от каждого заказа.

Связь по емейлу: yoga-kirov@mail.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'5be7802d-af32-4deb-9be6-b7000e91193e', N'786', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.427' AS DateTime), CAST(N'2015-07-09T09:08:00.000' AS DateTime), NULL, N'Ищу человека, который поможет с поиском заказов на создание сайтов, логотипов, фирменного стиля, и др. С каждого заказа вы получаете 20%. Если заинтересует, пишите в скайп: live:web.creator.kot', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'7dd362a8-ec49-4998-a9fa-ca63f06be587', N'791', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.423' AS DateTime), CAST(N'2015-07-09T11:28:00.000' AS DateTime), NULL, N'В связи с расширением проекта нужны начинающие автора!!! Рерайт/копирайт. Работа на длительное время. Олата первое время 1000сбп/10руб - рерайт, 15 рублей - копирайт.

П.С.: Работа для тех, кто хочет обучатся и стремится к развитию. Писать надо от 5к/день. Работа есть постояно! Тематика разлиная, как и объемы статей! Нужны авторы с перспективой личностного роста!
Ответственность, грамотность и пунктуальность - обязательное условие.
Писать на почту: maddlen@ukr.net', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'3dfce014-113b-4059-a265-8bf305e6cc5b', N'820', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.407' AS DateTime), CAST(N'2015-07-10T09:05:00.000' AS DateTime), NULL, N'Компания производитель - стабильная, надежная, с сильной конкурентной позицией, энергичная и сплоченная, с амбициозными планами развития,
приглашает специалистов для совместной реализации проектов развития.

Обязанности:
Расширения присутствия на разных каналах продвижения;
Разработка новых каналов, доп. возможностей привлечения клиентов;
​Поддержание непрерывного потока исходящей активности;
Контроль работы провайдеров по SEO, контекстной рекламе и т.д.
Копирайтинг;
Анализ маркетинговых данных, формирование аналитических отчетов.

При оценке Вашей работы мы будем смотреть на следующие показатели:

Количество входящих обращений;
Стоимость привлечения входящих обращений;
Место сайта в поисковых запросах;
Показатели качества (рост целевых обращений).

Требования к опыту:
Навык управления контекстной рекламой (Youtube, Google, Yandex…);
Навык проведения конкурентного анализа;
Знания в области SEO (продвижение, оптимизация);
Навык в проведении переговоров на уровне владельцев бизнеса;
Знания в области управления рассылками;
Общие знания в области рекламы и PR;
Знания в области управления рекламой в соц. сетях и форумах;
Навыки интервьюирования, направленные на выявление потребностей;
Навыки проведения выставок;
Навыки в области проведения и модерации вебинаров и семинаров;
Навыки в составлении технических требований.
Требования к личностным особенностям:
Креативность мышления;
Творческая активность;
Умение четко излагать свои мысли и преобразовывать их в текстовый формат;
Коммуникабельность;
Четкая речь, грамотное письмо.

ЕСЛИ ВЫ МОЖЕТЕ ДЕЛАТЬ ХОТЯ БЫ ПОЛОВИНУ, ТО НАМ НАДО СОТРУДНИЧАТЬ! 
СОТРУДНИЧЕСТВО НА ДЛИТЕЛЬНОЕ ВРЕМЯ В УДАЛЕННОМ РЕЖИМЕ, КАК ФРИЛАНС

ПРИСЫЛАЙТЕ СВОЕ РЕЗЮМЕ НА ПОЧТУ: jobs@fundament2000.ru

наш сайт для знакомства с компанией: fundament2000.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'c6da695b-a090-43c6-ac3c-61234703374f', N'822', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.390' AS DateTime), CAST(N'2015-07-10T13:45:00.000' AS DateTime), NULL, N'Наш прекрасный редакторский коллектив ищет рерайтера новостей на удаленку! 

От вас:
- умение или желание научиться писать грамотные, лаконичные новости со смыслом;
- возможность регулярно работать;
- орфография, пунктуация, стилистика и/или задор (эрудиция приветствуется и восхваляется).

От нас: 
- постоянная работа (по производственному календарю примерно с 7 до 16 по Москве);
- неплохой заработок (60 рублей за текст ~ 1000 знаков);
- честная и своевременная оплата.

Заинтересованных прошу писать на почту zyabone@yandex.ru или в скайп пользователю asn-wings.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'cd38907b-f0ad-44e8-bc9f-4ec06fee4692', N'801', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.420' AS DateTime), CAST(N'2015-07-09T17:29:00.000' AS DateTime), NULL, N'Интернет-магазину детской одежды требуется женщина для ответа на звонки с сайта.  
Желательный регион проживания: Владивосток.  
Время работы с 20:00 до 09:00 по московскому времени.  
График работы: 7/7  
В среднем поступает 1-3 звонка в день  
Оплата на испытательный срок: 3000 рублей в месяц ', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f05f2b07-ab89-47ac-bc06-a1d8b42cc026', N'833', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:56:23.367' AS DateTime), CAST(N'2015-07-12T14:00:00.000' AS DateTime), NULL, N'Нужна помощь по интернет-магазину Opencart версии 1.5.5.2

1. http://cultoutlet.com/man
Сделать изменение фотографии при наведении как здесь, взять первую фотку при наведении из дополнительных фото в карточке продукта http://brooklynstore.com.ua/catalog/muzhskaja-obuv/

2. Устранить ошибку, не работает фильтр $(...).slider is not a function

', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'0c463b0b-87c7-43d3-a4a2-50d361d83920', N'663', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:10.593' AS DateTime), CAST(N'2015-06-29T17:04:00.000' AS DateTime), NULL, N'Работаю по продвижению в Соц.Сетях.
Нужны помощники по привлечению заказчиков на мои услуги.
С каждого заказа Вы будете получать % от прибыли.

Ваша задача привлечение заказчиков на мои услуги которые указаны ниже:
Продвижение Вконтакте:  вступившие в группу живые люди, лайки, репосты, комментарии, друзей на
страницу, ведение группу от начала и до конца раскрутки. Создание
продающего объявления и рассылка его по стенам тематических групп по
вашему запросу.
Продвижение в Одноклассниках: вступивших в группу, вступивших по критериям (пол, возраст, страна, город), друзей на страницу, классы и тд!
Продвижение в Instagram: весь спектр услуг.
Продвижение в Facebook: весь спектр услуг.
Продвижение в Twitter: весь спектр услуг.
Продвижение в YouTube: весь спектр услуг.
Продвижение в Мой мир: весь спектр услуг.
Продвижение в PromoDJ: весь спектр услуг.

Оплата сразу после перечисления денег нам.
Обязательные требования:Поиск клиентов, связь в skype или icq 

Наши контакты: 
- Skype - vanchoxxl
- ICQ - 561677671 
vipsmm@yandex.ru
- Тел 7(966)194-4429', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'b57e760f-bca0-4300-81ca-020fe5c6f32c', N'698', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:10.593' AS DateTime), CAST(N'2015-07-01T17:25:00.000' AS DateTime), NULL, N'Требуется специалист владеющий техникой создания дизайна сайта с адаптивной версией для мобильников и планшетов', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'3c74d407-30a2-4d0b-a609-a90d23921366', N'779', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.513' AS DateTime), CAST(N'2015-07-08T23:16:00.000' AS DateTime), NULL, N'Ищу людей которые будут продвигать мои услуги.
1 E-mail marketing ( smtp, рассылки, базы)
2 SEO продвижение (Прогоны по форумам , оптимизация)
3 SMM продвижение ( соц сети)
От каждого заказа 20 процентов в  ваш карман!
пишите в скайп jcmir.company', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'478393b9-ee64-440c-8356-4f4f076f57f6', N'776', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.520' AS DateTime), CAST(N'2015-07-08T16:11:00.000' AS DateTime), NULL, N'Нужен Фрилансер-фотограф на 2 месяца(август, сентябрь) работа по договору ГПХ (на проект предметной фотосъёмки - ювелирки) работа не сложная, неполная занятость, требуется: умение работы со студийном светом, умение работать (базовые знания) в фотошопе, остальному обучим и расскажем :)Офис в двух шагах от метро! оплата работы и многие другие детали обсуждаются лично. и самое главное требование : в течении этих 2 месяцев нужно находится в Москве! 
город Москва
страница для связи http://vk.com/mit1994', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'811fcee3-a438-457c-973c-3f77e1e6e38d', N'770', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.520' AS DateTime), CAST(N'2015-07-08T10:25:00.000' AS DateTime), NULL, N'Уважаемые коллеги!

Группа компаний Правовой Партнёр заинтересована в расширении сотрудничества с профессиональными внештатными переводчиками.

ВАЖНО - наличие лингвистического диплома /указание искомого языка в дипломе, а также возможности подъезжать к нотариусу и ставить свою подпись (территориально м.Тушинская) не чаще 1 раза в месяц.

Уровень оплаты обсуждается индивидуально.

По всем вопросам пишите на почту: svetlana@pravovoi-partner.ru

С уважением, Светлана
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'84ccfa43-3f4d-4816-ae7e-c113138907e7', N'700', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.523' AS DateTime), CAST(N'2015-07-02T07:37:00.000' AS DateTime), NULL, N'Ищем авторов интересных статей для нашей газеты https://plus.google.com/u/0/+PyhtaRu/about . Предлагайте свои темы и статьи. Оплата сразу на карту. Пост 1000 знаков+картинка=200 рублей*коэффицент уникальности. количество статей не ограниченно.Так же принимаем уникальные фото и видео цена от 500 рублей.
Темы:
1.Здоровое питание.
2.Здоровый образ жизни
3.Сад огород
4.народные традиции( траволечение, медицина, заговоры, ремесла)
5.Научные открытия в медицине и диетологии.
Обращаться: Email: 3541104@mail.ru Skype: Paramon20131 или пишите админу https://plus.google.com/u/0/+PyhtaRu/about', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'd4d1cc40-c042-4d20-9fde-6f914b58f7ae', N'764', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.520' AS DateTime), CAST(N'2015-07-08T01:10:00.000' AS DateTime), NULL, N'требуется перевод русской версии сайта на английский язык', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'b86707bc-90cc-4110-9d0b-d571de91a574', N'773', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.520' AS DateTime), CAST(N'2015-07-08T13:38:00.000' AS DateTime), NULL, N'В онлайн-образовательный проект “Практикум” требуется трафик-менеджер
Для привлечения трафика из соц. сетей (Facebook, Вконтакте),  контекстной рекламы, баннерной рекламы и т.п.
Работа на результат.

Требования:
– Таргет/ретаргет в соцсетях, размещение рекламы в группах и пабликах
– Успешны опыт работы с Я. Директом и Google Adwords
– Опыт анализа трафика и подсчета основных показателей
– Знания Google Analytics, Яндекс.Метрика
– Анализ трафика, советы по повышению конверсии


Обязанности:
– Подготавливать и запускать рекламные кампании
– Отслеживать эффективность
– Проводить анализ рекламных кампаний
– Управление трафиком веб ресурсов
– Эффективная закупка трафика
– Анализ трафика, повышение CTR и конверта
– Поиск альтернативных источников трафика


Условия:
– Высокий уровень ответственности и свободы в принятии решений.
– Возможность для творческого и карьерного роста
– Удаленная работа
– % от продаж


Присылайте резюме на нашу почту 
job@allpraktik.ru 
в теме письма указывайте вакансию “Трафик-менеджер” 
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'd94ab3ff-0a42-4dc7-b006-4e048eeddfc7', N'756', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.523' AS DateTime), CAST(N'2015-07-07T18:16:00.000' AS DateTime), NULL, N'Ищу человека, который будет искать заказы на разработку веб-сайтов за 20% от стоимости заказа. Если заказов будет много, то процент сильно увеличиться. Опыт не важен. Писать на: 
Email - Wozl77774@yandex.ru
или ВК - http://vk.com/id303303306', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e9300dc1-866d-48b6-9d4e-80542d407c6c', N'774', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.520' AS DateTime), CAST(N'2015-07-08T14:21:00.000' AS DateTime), NULL, N'От вас требуется только одно - поиск заказчиков на изготовление видео(интро,аутро,презентаций и т.д.) и на обработку фото. Вы получаете 35% от заказа.

Про свою кандидатуру пишите на нашу страничку в вк:http://vk.com/id221245379', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f6a317fa-f06e-44fc-bce0-43eb18057136', N'704', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.523' AS DateTime), CAST(N'2015-07-02T13:40:00.000' AS DateTime), NULL, N'Срочно нужно создать сайт компании по развитию и продвижению бизнеса. Ищу для этого дела профессионала который справиться. Есть подробное ТЗ и макет сайта. Пишите на почту. 
nicola@ex.ua', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'ffc29d0d-c6d9-48e3-9a62-57f5213d6630', N'702', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:15.523' AS DateTime), CAST(N'2015-07-02T12:15:00.000' AS DateTime), NULL, N'Требуются ответственные люди, способные писать не менее 10 тысяч знаков б.п. в сутки (под ключи). Приветствуется трудолюбие, грамотность. Оплата Webmoney 1000 знаков без пробелов- 25 руб. Пишите на электронную почту webcoper@yandex.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'154f6887-28b6-49ec-a64f-c1d095b8c1d3', N'828', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.660' AS DateTime), CAST(N'2015-07-11T18:21:00.000' AS DateTime), NULL, N'Требуется фрилансер, который будет искать заказчиков на написание уникальных поздравительных стихотворений. Фрилансер будет получать 10% от каждого заказа.

Связь по емейлу: yoga-kirov@mail.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'470aa276-3841-4010-b1fd-5b520c04bd7b', N'832', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.660' AS DateTime), CAST(N'2015-07-12T12:09:00.000' AS DateTime), NULL, N'Есть шаблон:
http://themes.renklibeyaz.com/?theme=GhostWP

И есть такой плеер: http://lambertgroup.ro/canyon/shoutcast_and_icecast_radio_wordpress/index.html

Нужно получить:
http://hostingkartinok.com/show-image.php?id=97f0c64cc6e7cbdcbcdb5a63429538f6

Суть в том, чтобы плеер не реагировал на перелистывание страниц.


', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'a639414e-3a86-44b4-a86a-1a13d40c8961', N'843', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.653' AS DateTime), CAST(N'2015-07-13T18:23:00.000' AS DateTime), NULL, N'Всем привет!

Интересует создание общего дизайна для сайта : www.millanna.jimdo.com

Сейчас занимаюсь сам, но я в этом деле полный профан)
общая стилистика должна быть для каждой страницы, но при это должен делаться упор на определенный продукт.
наша компания занимается полиграфией, хотел бы услышать примерную вилку цен и сколько это может занимать по срокам.

Спасибо большое.
Извините если пишу не в тот раздел, просто впервые у вас.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'aeac7efb-06d1-418a-be8a-b45b502d2e7a', N'822', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.663' AS DateTime), CAST(N'2015-07-10T13:45:00.000' AS DateTime), NULL, N'Наш прекрасный редакторский коллектив ищет рерайтера новостей на удаленку! 

От вас:
- умение или желание научиться писать грамотные, лаконичные новости со смыслом;
- возможность регулярно работать;
- орфография, пунктуация, стилистика и/или задор (эрудиция приветствуется и восхваляется).

От нас: 
- постоянная работа (по производственному календарю примерно с 7 до 16 по Москве);
- неплохой заработок (60 рублей за текст ~ 1000 знаков);
- честная и своевременная оплата.

Заинтересованных прошу писать на почту zyabone@yandex.ru или в скайп пользователю asn-wings.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'b73f020b-060f-4068-9408-aaf1784b5847', N'786', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.667' AS DateTime), CAST(N'2015-07-09T09:08:00.000' AS DateTime), NULL, N'Ищу человека, который поможет с поиском заказов на создание сайтов, логотипов, фирменного стиля, и др. С каждого заказа вы получаете 20%. Если заинтересует, пишите в скайп: live:web.creator.kot', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'caf3ca13-f581-4698-a7d9-079043ec705c', N'820', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.663' AS DateTime), CAST(N'2015-07-10T09:05:00.000' AS DateTime), NULL, N'Компания производитель - стабильная, надежная, с сильной конкурентной позицией, энергичная и сплоченная, с амбициозными планами развития,
приглашает специалистов для совместной реализации проектов развития.

Обязанности:
Расширения присутствия на разных каналах продвижения;
Разработка новых каналов, доп. возможностей привлечения клиентов;
​Поддержание непрерывного потока исходящей активности;
Контроль работы провайдеров по SEO, контекстной рекламе и т.д.
Копирайтинг;
Анализ маркетинговых данных, формирование аналитических отчетов.

При оценке Вашей работы мы будем смотреть на следующие показатели:

Количество входящих обращений;
Стоимость привлечения входящих обращений;
Место сайта в поисковых запросах;
Показатели качества (рост целевых обращений).

Требования к опыту:
Навык управления контекстной рекламой (Youtube, Google, Yandex…);
Навык проведения конкурентного анализа;
Знания в области SEO (продвижение, оптимизация);
Навык в проведении переговоров на уровне владельцев бизнеса;
Знания в области управления рассылками;
Общие знания в области рекламы и PR;
Знания в области управления рекламой в соц. сетях и форумах;
Навыки интервьюирования, направленные на выявление потребностей;
Навыки проведения выставок;
Навыки в области проведения и модерации вебинаров и семинаров;
Навыки в составлении технических требований.
Требования к личностным особенностям:
Креативность мышления;
Творческая активность;
Умение четко излагать свои мысли и преобразовывать их в текстовый формат;
Коммуникабельность;
Четкая речь, грамотное письмо.

ЕСЛИ ВЫ МОЖЕТЕ ДЕЛАТЬ ХОТЯ БЫ ПОЛОВИНУ, ТО НАМ НАДО СОТРУДНИЧАТЬ! 
СОТРУДНИЧЕСТВО НА ДЛИТЕЛЬНОЕ ВРЕМЯ В УДАЛЕННОМ РЕЖИМЕ, КАК ФРИЛАНС

ПРИСЫЛАЙТЕ СВОЕ РЕЗЮМЕ НА ПОЧТУ: jobs@fundament2000.ru

наш сайт для знакомства с компанией: fundament2000.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'd385065e-a127-4c63-8f46-de95e4f7ee23', N'801', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.663' AS DateTime), CAST(N'2015-07-09T17:29:00.000' AS DateTime), NULL, N'Интернет-магазину детской одежды требуется женщина для ответа на звонки с сайта.  
Желательный регион проживания: Владивосток.  
Время работы с 20:00 до 09:00 по московскому времени.  
График работы: 7/7  
В среднем поступает 1-3 звонка в день  
Оплата на испытательный срок: 3000 рублей в месяц ', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e1d7c321-fac0-4ab0-b2d6-87838e8a019a', N'791', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.667' AS DateTime), CAST(N'2015-07-09T11:28:00.000' AS DateTime), NULL, N'В связи с расширением проекта нужны начинающие автора!!! Рерайт/копирайт. Работа на длительное время. Олата первое время 1000сбп/10руб - рерайт, 15 рублей - копирайт.

П.С.: Работа для тех, кто хочет обучатся и стремится к развитию. Писать надо от 5к/день. Работа есть постояно! Тематика разлиная, как и объемы статей! Нужны авторы с перспективой личностного роста!
Ответственность, грамотность и пунктуальность - обязательное условие.
Писать на почту: maddlen@ukr.net', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e64b4ba9-2a2f-4fc2-8b4e-afa2a218f2f0', N'842', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.653' AS DateTime), CAST(N'2015-07-13T15:22:00.000' AS DateTime), NULL, N'Добрый день!
Ребят,помогите разработать логотип для фирмы, занимающейся установкой и монтажом систем пожарной охранной безопасности, установкой видеонаблюдения.

1. Компания называется "БИКАР-СБ"
2. Компания работает с госструктурами, при этом сейчас вышла на рынок частных заказчиков.
3. Логотип не должен быть слишком замысловатым, он должен быть плоским и легко запоминающимся
4. Мы не претендуем на особую творческую составляющую, но и элементы таких картинок,как "глаза, орлы, башни" слишком избиты, также хотелось бы видеть иной цвет,кроме синего.

Готова обсуждать все в режиме реального времени.Пишите. Спасибо', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e9af333c-00c8-433b-b3c7-6e9d83b82e8f', N'833', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:58:18.657' AS DateTime), CAST(N'2015-07-12T14:00:00.000' AS DateTime), NULL, N'Нужна помощь по интернет-магазину Opencart версии 1.5.5.2

1. http://cultoutlet.com/man
Сделать изменение фотографии при наведении как здесь, взять первую фотку при наведении из дополнительных фото в карточке продукта http://brooklynstore.com.ua/catalog/muzhskaja-obuv/

2. Устранить ошибку, не работает фильтр $(...).slider is not a function

', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'b754998c-7be5-405d-92f8-c82375b0d473', N'663', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T21:59:57.767' AS DateTime), CAST(N'2015-06-29T17:04:00.000' AS DateTime), NULL, N'Работаю по продвижению в Соц.Сетях.
Нужны помощники по привлечению заказчиков на мои услуги.
С каждого заказа Вы будете получать % от прибыли.

Ваша задача привлечение заказчиков на мои услуги которые указаны ниже:
Продвижение Вконтакте:  вступившие в группу живые люди, лайки, репосты, комментарии, друзей на
страницу, ведение группу от начала и до конца раскрутки. Создание
продающего объявления и рассылка его по стенам тематических групп по
вашему запросу.
Продвижение в Одноклассниках: вступивших в группу, вступивших по критериям (пол, возраст, страна, город), друзей на страницу, классы и тд!
Продвижение в Instagram: весь спектр услуг.
Продвижение в Facebook: весь спектр услуг.
Продвижение в Twitter: весь спектр услуг.
Продвижение в YouTube: весь спектр услуг.
Продвижение в Мой мир: весь спектр услуг.
Продвижение в PromoDJ: весь спектр услуг.

Оплата сразу после перечисления денег нам.
Обязательные требования:Поиск клиентов, связь в skype или icq 

Наши контакты: 
- Skype - vanchoxxl
- ICQ - 561677671 
vipsmm@yandex.ru
- Тел 7(966)194-4429', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'0d69c0f5-7e48-494a-bdf9-ffdb9172f0ec', N'702', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:07.823' AS DateTime), CAST(N'2015-07-02T12:15:00.000' AS DateTime), NULL, N'Требуются ответственные люди, способные писать не менее 10 тысяч знаков б.п. в сутки (под ключи). Приветствуется трудолюбие, грамотность. Оплата Webmoney 1000 знаков без пробелов- 25 руб. Пишите на электронную почту webcoper@yandex.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'1d9a9c15-9c56-4377-ba7b-0b67926f34db', N'704', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:07.160' AS DateTime), CAST(N'2015-07-02T13:40:00.000' AS DateTime), NULL, N'Срочно нужно создать сайт компании по развитию и продвижению бизнеса. Ищу для этого дела профессионала который справиться. Есть подробное ТЗ и макет сайта. Пишите на почту. 
nicola@ex.ua', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'4bf50245-7e3b-4eb0-a8f4-6cd608daa807', N'700', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:08.467' AS DateTime), CAST(N'2015-07-02T07:37:00.000' AS DateTime), NULL, N'Ищем авторов интересных статей для нашей газеты https://plus.google.com/u/0/+PyhtaRu/about . Предлагайте свои темы и статьи. Оплата сразу на карту. Пост 1000 знаков+картинка=200 рублей*коэффицент уникальности. количество статей не ограниченно.Так же принимаем уникальные фото и видео цена от 500 рублей.
Темы:
1.Здоровое питание.
2.Здоровый образ жизни
3.Сад огород
4.народные традиции( траволечение, медицина, заговоры, ремесла)
5.Научные открытия в медицине и диетологии.
Обращаться: Email: 3541104@mail.ru Skype: Paramon20131 или пишите админу https://plus.google.com/u/0/+PyhtaRu/about', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'6760adbc-6c98-458a-a2c2-05b66c5e2297', N'770', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:05.380' AS DateTime), CAST(N'2015-07-08T10:25:00.000' AS DateTime), NULL, N'Уважаемые коллеги!

Группа компаний Правовой Партнёр заинтересована в расширении сотрудничества с профессиональными внештатными переводчиками.

ВАЖНО - наличие лингвистического диплома /указание искомого языка в дипломе, а также возможности подъезжать к нотариусу и ставить свою подпись (территориально м.Тушинская) не чаще 1 раза в месяц.

Уровень оплаты обсуждается индивидуально.

По всем вопросам пишите на почту: svetlana@pravovoi-partner.ru

С уважением, Светлана
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'6cf3833f-88ca-41c1-a4b5-178755f7e47b', N'779', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:02.730' AS DateTime), CAST(N'2015-07-08T23:16:00.000' AS DateTime), NULL, N'Ищу людей которые будут продвигать мои услуги.
1 E-mail marketing ( smtp, рассылки, базы)
2 SEO продвижение (Прогоны по форумам , оптимизация)
3 SMM продвижение ( соц сети)
От каждого заказа 20 процентов в  ваш карман!
пишите в скайп jcmir.company', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'989dad31-b899-4d46-b8af-64707276fc4b', N'776', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:03.447' AS DateTime), CAST(N'2015-07-08T16:11:00.000' AS DateTime), NULL, N'Нужен Фрилансер-фотограф на 2 месяца(август, сентябрь) работа по договору ГПХ (на проект предметной фотосъёмки - ювелирки) работа не сложная, неполная занятость, требуется: умение работы со студийном светом, умение работать (базовые знания) в фотошопе, остальному обучим и расскажем :)Офис в двух шагах от метро! оплата работы и многие другие детали обсуждаются лично. и самое главное требование : в течении этих 2 месяцев нужно находится в Москве! 
город Москва
страница для связи http://vk.com/mit1994', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'e5df57d7-a911-4338-aee6-b144f49b9fdc', N'773', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:04.663' AS DateTime), CAST(N'2015-07-08T13:38:00.000' AS DateTime), NULL, N'В онлайн-образовательный проект “Практикум” требуется трафик-менеджер
Для привлечения трафика из соц. сетей (Facebook, Вконтакте),  контекстной рекламы, баннерной рекламы и т.п.
Работа на результат.

Требования:
– Таргет/ретаргет в соцсетях, размещение рекламы в группах и пабликах
– Успешны опыт работы с Я. Директом и Google Adwords
– Опыт анализа трафика и подсчета основных показателей
– Знания Google Analytics, Яндекс.Метрика
– Анализ трафика, советы по повышению конверсии


Обязанности:
– Подготавливать и запускать рекламные кампании
– Отслеживать эффективность
– Проводить анализ рекламных кампаний
– Управление трафиком веб ресурсов
– Эффективная закупка трафика
– Анализ трафика, повышение CTR и конверта
– Поиск альтернативных источников трафика


Условия:
– Высокий уровень ответственности и свободы в принятии решений.
– Возможность для творческого и карьерного роста
– Удаленная работа
– % от продаж


Присылайте резюме на нашу почту 
job@allpraktik.ru 
в теме письма указывайте вакансию “Трафик-менеджер” 
', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f5bf54fc-c591-4c99-96a0-90ac566be097', N'756', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:06.563' AS DateTime), CAST(N'2015-07-07T18:16:00.000' AS DateTime), NULL, N'Ищу человека, который будет искать заказы на разработку веб-сайтов за 20% от стоимости заказа. Если заказов будет много, то процент сильно увеличиться. Опыт не важен. Писать на: 
Email - Wozl77774@yandex.ru
или ВК - http://vk.com/id303303306', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f92fd411-0a9b-46e6-8039-87c8fcb2009f', N'774', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:03.963' AS DateTime), CAST(N'2015-07-08T14:21:00.000' AS DateTime), NULL, N'От вас требуется только одно - поиск заказчиков на изготовление видео(интро,аутро,презентаций и т.д.) и на обработку фото. Вы получаете 35% от заказа.

Про свою кандидатуру пишите на нашу страничку в вк:http://vk.com/id221245379', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'1e5fdc12-3921-424f-ae17-56bb8201cf0f', N'842', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.250' AS DateTime), CAST(N'2015-07-13T15:22:00.000' AS DateTime), NULL, N'Добрый день!
Ребят,помогите разработать логотип для фирмы, занимающейся установкой и монтажом систем пожарной охранной безопасности, установкой видеонаблюдения.

1. Компания называется "БИКАР-СБ"
2. Компания работает с госструктурами, при этом сейчас вышла на рынок частных заказчиков.
3. Логотип не должен быть слишком замысловатым, он должен быть плоским и легко запоминающимся
4. Мы не претендуем на особую творческую составляющую, но и элементы таких картинок,как "глаза, орлы, башни" слишком избиты, также хотелось бы видеть иной цвет,кроме синего.

Готова обсуждать все в режиме реального времени.Пишите. Спасибо', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'2c07f7e3-f58b-4ee9-82ed-1f56e60243d5', N'843', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:32.950' AS DateTime), CAST(N'2015-07-13T18:23:00.000' AS DateTime), NULL, N'Всем привет!

Интересует создание общего дизайна для сайта : www.millanna.jimdo.com

Сейчас занимаюсь сам, но я в этом деле полный профан)
общая стилистика должна быть для каждой страницы, но при это должен делаться упор на определенный продукт.
наша компания занимается полиграфией, хотел бы услышать примерную вилку цен и сколько это может занимать по срокам.

Спасибо большое.
Извините если пишу не в тот раздел, просто впервые у вас.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'2e706acc-3b4b-4039-9835-f56a7fefaf04', N'801', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-09T17:29:00.000' AS DateTime), NULL, N'Интернет-магазину детской одежды требуется женщина для ответа на звонки с сайта.  
Желательный регион проживания: Владивосток.  
Время работы с 20:00 до 09:00 по московскому времени.  
График работы: 7/7  
В среднем поступает 1-3 звонка в день  
Оплата на испытательный срок: 3000 рублей в месяц ', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'3d92ec76-65e4-460a-be39-bc056d77b17d', N'786', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.267' AS DateTime), CAST(N'2015-07-09T09:08:00.000' AS DateTime), NULL, N'Ищу человека, который поможет с поиском заказов на создание сайтов, логотипов, фирменного стиля, и др. С каждого заказа вы получаете 20%. Если заинтересует, пишите в скайп: live:web.creator.kot', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'492ac8b3-2a23-4d01-b53e-addd61a76952', N'820', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-10T09:05:00.000' AS DateTime), NULL, N'Компания производитель - стабильная, надежная, с сильной конкурентной позицией, энергичная и сплоченная, с амбициозными планами развития,
приглашает специалистов для совместной реализации проектов развития.

Обязанности:
Расширения присутствия на разных каналах продвижения;
Разработка новых каналов, доп. возможностей привлечения клиентов;
​Поддержание непрерывного потока исходящей активности;
Контроль работы провайдеров по SEO, контекстной рекламе и т.д.
Копирайтинг;
Анализ маркетинговых данных, формирование аналитических отчетов.

При оценке Вашей работы мы будем смотреть на следующие показатели:

Количество входящих обращений;
Стоимость привлечения входящих обращений;
Место сайта в поисковых запросах;
Показатели качества (рост целевых обращений).

Требования к опыту:
Навык управления контекстной рекламой (Youtube, Google, Yandex…);
Навык проведения конкурентного анализа;
Знания в области SEO (продвижение, оптимизация);
Навык в проведении переговоров на уровне владельцев бизнеса;
Знания в области управления рассылками;
Общие знания в области рекламы и PR;
Знания в области управления рекламой в соц. сетях и форумах;
Навыки интервьюирования, направленные на выявление потребностей;
Навыки проведения выставок;
Навыки в области проведения и модерации вебинаров и семинаров;
Навыки в составлении технических требований.
Требования к личностным особенностям:
Креативность мышления;
Творческая активность;
Умение четко излагать свои мысли и преобразовывать их в текстовый формат;
Коммуникабельность;
Четкая речь, грамотное письмо.

ЕСЛИ ВЫ МОЖЕТЕ ДЕЛАТЬ ХОТЯ БЫ ПОЛОВИНУ, ТО НАМ НАДО СОТРУДНИЧАТЬ! 
СОТРУДНИЧЕСТВО НА ДЛИТЕЛЬНОЕ ВРЕМЯ В УДАЛЕННОМ РЕЖИМЕ, КАК ФРИЛАНС

ПРИСЫЛАЙТЕ СВОЕ РЕЗЮМЕ НА ПОЧТУ: jobs@fundament2000.ru

наш сайт для знакомства с компанией: fundament2000.ru', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'95e0a014-22ce-46fe-a6db-07a8f8d1cbac', N'833', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.250' AS DateTime), CAST(N'2015-07-12T14:00:00.000' AS DateTime), NULL, N'Нужна помощь по интернет-магазину Opencart версии 1.5.5.2

1. http://cultoutlet.com/man
Сделать изменение фотографии при наведении как здесь, взять первую фотку при наведении из дополнительных фото в карточке продукта http://brooklynstore.com.ua/catalog/muzhskaja-obuv/

2. Устранить ошибку, не работает фильтр $(...).slider is not a function

', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'99aa31f1-6993-4bfd-bdac-247412545d61', N'832', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-12T12:09:00.000' AS DateTime), NULL, N'Есть шаблон:
http://themes.renklibeyaz.com/?theme=GhostWP

И есть такой плеер: http://lambertgroup.ro/canyon/shoutcast_and_icecast_radio_wordpress/index.html

Нужно получить:
http://hostingkartinok.com/show-image.php?id=97f0c64cc6e7cbdcbcdb5a63429538f6

Суть в том, чтобы плеер не реагировал на перелистывание страниц.


', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'dc63ccce-086d-4579-9ff4-744ccc871135', N'822', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-10T13:45:00.000' AS DateTime), NULL, N'Наш прекрасный редакторский коллектив ищет рерайтера новостей на удаленку! 

От вас:
- умение или желание научиться писать грамотные, лаконичные новости со смыслом;
- возможность регулярно работать;
- орфография, пунктуация, стилистика и/или задор (эрудиция приветствуется и восхваляется).

От нас: 
- постоянная работа (по производственному календарю примерно с 7 до 16 по Москве);
- неплохой заработок (60 рублей за текст ~ 1000 знаков);
- честная и своевременная оплата.

Заинтересованных прошу писать на почту zyabone@yandex.ru или в скайп пользователю asn-wings.', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f6de549f-0233-4a14-9303-41ce67327d96', N'791', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-09T11:28:00.000' AS DateTime), NULL, N'В связи с расширением проекта нужны начинающие автора!!! Рерайт/копирайт. Работа на длительное время. Олата первое время 1000сбп/10руб - рерайт, 15 рублей - копирайт.

П.С.: Работа для тех, кто хочет обучатся и стремится к развитию. Писать надо от 5к/день. Работа есть постояно! Тематика разлиная, как и объемы статей! Нужны авторы с перспективой личностного роста!
Ответственность, грамотность и пунктуальность - обязательное условие.
Писать на почту: maddlen@ukr.net', 0)
INSERT [dbo].[Works] ([Id], [Identificator], [SourceId], [Registrated], [Created], [EmployerId], [Text], [Reward]) VALUES (N'f978325f-c792-4598-a0c1-9dea1df7746d', N'828', N'03b225af-e363-439b-ae89-23e457fa0d1a', CAST(N'2018-11-17T22:00:55.263' AS DateTime), CAST(N'2015-07-11T18:21:00.000' AS DateTime), NULL, N'Требуется фрилансер, который будет искать заказчиков на написание уникальных поздравительных стихотворений. Фрилансер будет получать 10% от каждого заказа.

Связь по емейлу: yoga-kirov@mail.ru', 0)
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Works] ADD  CONSTRAINT [DF_Works_Reward]  DEFAULT ((-1)) FOR [Reward]
GO
