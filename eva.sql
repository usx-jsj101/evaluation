if exists (select * from sysobjects where id = OBJECT_ID('[Authority]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Authority]

CREATE TABLE [Authority] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (MAX) NULL)

SET IDENTITY_INSERT [Authority] ON


SET IDENTITY_INSERT [Authority] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Class]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Class]

CREATE TABLE [Class] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (MAX) NOT NULL,
[MajorId] [int]  NULL)

SET IDENTITY_INSERT [Class] ON

INSERT [Class] ([Id],[Name],[MajorId]) VALUES ( 1,N'计算机101',1)
INSERT [Class] ([Id],[Name],[MajorId]) VALUES ( 2,N'计算机102',1)
INSERT [Class] ([Id],[Name],[MajorId]) VALUES ( 3,N'法律101',4)
INSERT [Class] ([Id],[Name],[MajorId]) VALUES ( 4,N'法律102',4)

SET IDENTITY_INSERT [Class] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[College]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [College]

CREATE TABLE [College] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (50) NOT NULL)

SET IDENTITY_INSERT [College] ON

INSERT [College] ([Id],[Name]) VALUES ( 1,N'工学院')
INSERT [College] ([Id],[Name]) VALUES ( 2,N'法学院')

SET IDENTITY_INSERT [College] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Course]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Course]

CREATE TABLE [Course] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (50) NULL,
[Gpa] [float]  NULL,
[Introdution] [nvarchar]  (MAX) NULL)

SET IDENTITY_INSERT [Course] ON

INSERT [Course] ([Id],[Name],[Gpa],[Introdution]) VALUES ( 1,N'高等数学',4,N'高等数学')
INSERT [Course] ([Id],[Name],[Gpa],[Introdution]) VALUES ( 2,N'数据结构',4,N'数据结构')
INSERT [Course] ([Id],[Name],[Gpa],[Introdution]) VALUES ( 3,N'英语',2,N'英语')
INSERT [Course] ([Id],[Name],[Gpa],[Introdution]) VALUES ( 4,N'高级语言',2,N'高级语言')

SET IDENTITY_INSERT [Course] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Evaluation]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Evaluation]

CREATE TABLE [Evaluation] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[StudentId] [int]  NULL,
[AcademicYear] [int]  NULL,
[Gpa] [float]  NULL,
[Ave] [float]  NULL,
[TeacherEvaluation] [nvarchar]  (MAX) NULL,
[SelfEvaluation] [nvarchar]  (MAX) NULL,
[TeacherId] [int]  NULL,
[SchoolTerm] [int]  NULL)

SET IDENTITY_INSERT [Evaluation] ON


SET IDENTITY_INSERT [Evaluation] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Item]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Item]

CREATE TABLE [Item] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (50) NULL,
[Value] [float]  NULL)

SET IDENTITY_INSERT [Item] ON

INSERT [Item] ([Id],[Name],[Value]) VALUES ( 1,N'思想品德',10)
INSERT [Item] ([Id],[Name],[Value]) VALUES ( 2,N'社会实践',10)
INSERT [Item] ([Id],[Name],[Value]) VALUES ( 3,N'竞赛表现',10)

SET IDENTITY_INSERT [Item] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ItemList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ItemList]

CREATE TABLE [ItemList] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[EvaluationId] [int]  NULL,
[ItemId] [int]  NULL,
[Evaluation] [nvarchar]  (MAX) NULL,
[score] [int]  NULL)

SET IDENTITY_INSERT [ItemList] ON


SET IDENTITY_INSERT [ItemList] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Major]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Major]

CREATE TABLE [Major] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[Name] [nvarchar]  (MAX) NULL,
[CollegeId] [int]  NULL)

SET IDENTITY_INSERT [Major] ON

INSERT [Major] ([Id],[Name],[CollegeId]) VALUES ( 1,N'计算机科学与技术',1)
INSERT [Major] ([Id],[Name],[CollegeId]) VALUES ( 2,N'机械',1)
INSERT [Major] ([Id],[Name],[CollegeId]) VALUES ( 3,N'建筑',1)
INSERT [Major] ([Id],[Name],[CollegeId]) VALUES ( 4,N'法律',2)
INSERT [Major] ([Id],[Name],[CollegeId]) VALUES ( 5,N'思想品德',2)

SET IDENTITY_INSERT [Major] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Mark]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Mark]

CREATE TABLE [Mark] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[CourseId] [int]  NULL,
[StudentId] [int]  NULL,
[EvalutionId] [int]  NULL,
[Score] [float]  NULL,
[BonusPoint] [float]  NULL,
[AcademicYear] [int]  NULL,
[SchoolTerm] [int]  NULL,
[CheckStep] [int]  NULL)

SET IDENTITY_INSERT [Mark] ON

INSERT [Mark] ([Id],[CourseId],[StudentId],[EvalutionId],[Score],[AcademicYear],[SchoolTerm]) VALUES ( 1,1,1,1,90,2012,1)
INSERT [Mark] ([Id],[CourseId],[StudentId],[EvalutionId],[Score],[AcademicYear],[SchoolTerm]) VALUES ( 2,2,1,1,88,2012,2)
INSERT [Mark] ([Id],[CourseId],[StudentId],[EvalutionId],[Score],[AcademicYear],[SchoolTerm]) VALUES ( 3,3,1,1,99,2013,1)
INSERT [Mark] ([Id],[CourseId],[StudentId],[EvalutionId],[Score],[AcademicYear],[SchoolTerm]) VALUES ( 4,4,1,1,7,2013,2)

SET IDENTITY_INSERT [Mark] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[Teach]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Teach]

CREATE TABLE [Teach] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[CourseId] [int]  NULL,
[TeacherId] [int]  NULL,
[AcademicYear] [int]  NULL,
[SchoolTerm] [int]  NULL)

SET IDENTITY_INSERT [Teach] ON


SET IDENTITY_INSERT [Teach] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[WebUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WebUser]

CREATE TABLE [WebUser] (
[Id] [int]  IDENTITY (1, 1)  NOT NULL,
[LoginId] [nvarchar]  (50) NULL,
[PassWord] [nvarchar]  (50) NULL,
[AuthorityId] [int]  NULL,
[Name] [nvarchar]  (50) NOT NULL,
[StudentId] [int]  NULL,
[Sex] [nvarchar]  (50) NULL,
[CollegeId] [int]  NULL,
[ClassId] [int]  NULL,
[MajorId] [int]  NULL,
[IdCard] [nvarchar]  (50) NULL,
[Address] [nvarchar]  (MAX) NULL,
[Phone] [nvarchar]  (50) NULL)

SET IDENTITY_INSERT [WebUser] ON

INSERT [WebUser] ([Id],[PassWord],[AuthorityId],[Name],[Sex],[IdCard]) VALUES ( 1,N'ddd',2,N'dd',N'nan',N'sdf')
INSERT [WebUser] ([Id],[LoginId],[PassWord],[AuthorityId],[Name],[StudentId],[Sex],[CollegeId]) VALUES ( 3,N'df',N'sdf',1,N'sdf',1,N'nv',1)

SET IDENTITY_INSERT [WebUser] OFF
