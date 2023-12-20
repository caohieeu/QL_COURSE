
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/05/2023 23:40:18
-- Generated from EDMX file: D:\WorkspaceSchool\Nam 3\Ky1\LT Web\QL_Course\QL_KhoaHocOnl\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QL_COURSE];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Answers_Questions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Answers] DROP CONSTRAINT [FK_Answers_Questions];
GO
IF OBJECT_ID(N'[dbo].[FK_ARTICLE_USER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ARTICLE] DROP CONSTRAINT [FK_ARTICLE_USER];
GO
IF OBJECT_ID(N'[dbo].[FK_CART_OF_USER_USER_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CART_OF_USER] DROP CONSTRAINT [FK_CART_OF_USER_USER_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_Choices_Questions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Choices] DROP CONSTRAINT [FK_Choices_Questions];
GO
IF OBJECT_ID(N'[dbo].[FK_CM_LS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COMMENT_LESSON] DROP CONSTRAINT [FK_CM_LS];
GO
IF OBJECT_ID(N'[dbo].[FK_COURSE_TEACHER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COURSE] DROP CONSTRAINT [FK_COURSE_TEACHER];
GO
IF OBJECT_ID(N'[dbo].[FK_COURSE_TYPE_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COURSE] DROP CONSTRAINT [FK_COURSE_TYPE_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_FEEDBACK_ORDER_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FEEDBACK] DROP CONSTRAINT [FK_FEEDBACK_ORDER_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_GRADES_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GRADES] DROP CONSTRAINT [FK_GRADES_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_GRADES_USER_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GRADES] DROP CONSTRAINT [FK_GRADES_USER_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_LESSON_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LESSON] DROP CONSTRAINT [FK_LESSON_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_Questions_Quiz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Questions] DROP CONSTRAINT [FK_Questions_Quiz];
GO
IF OBJECT_ID(N'[dbo].[FK_QUIZZES_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QUIZZES] DROP CONSTRAINT [FK_QUIZZES_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_ORDER_COURSE_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ORDER_COURSE] DROP CONSTRAINT [FK_ORDER_COURSE_COURSE];
GO
IF OBJECT_ID(N'[dbo].[FK_ORDER_COURSE_USER_COURSE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ORDER_COURSE] DROP CONSTRAINT [FK_ORDER_COURSE_USER_COURSE];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Answers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Answers];
GO
IF OBJECT_ID(N'[dbo].[ARTICLE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ARTICLE];
GO
IF OBJECT_ID(N'[dbo].[CART_OF_USER]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CART_OF_USER];
GO
IF OBJECT_ID(N'[dbo].[Choices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Choices];
GO
IF OBJECT_ID(N'[dbo].[COMMENT_LESSON]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COMMENT_LESSON];
GO
IF OBJECT_ID(N'[dbo].[COURSE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COURSE];
GO
IF OBJECT_ID(N'[dbo].[FEEDBACK]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FEEDBACK];
GO
IF OBJECT_ID(N'[dbo].[GRADES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GRADES];
GO
IF OBJECT_ID(N'[dbo].[LESSON]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LESSON];
GO
IF OBJECT_ID(N'[dbo].[ORDER_COURSE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ORDER_COURSE];
GO
IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[Quiz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Quiz];
GO
IF OBJECT_ID(N'[dbo].[QUIZZES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QUIZZES];
GO
IF OBJECT_ID(N'[dbo].[TEACHER]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TEACHER];
GO
IF OBJECT_ID(N'[dbo].[TYPE_COURSE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TYPE_COURSE];
GO
IF OBJECT_ID(N'[dbo].[USER_COURSE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[USER_COURSE];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Answers'
CREATE TABLE [dbo].[Answers] (
    [AnswerID] int IDENTITY(1,1) NOT NULL,
    [AnswerText] nvarchar(max)  NULL,
    [QuestionID] int  NULL
);
GO

-- Creating table 'ARTICLEs'
CREATE TABLE [dbo].[ARTICLEs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_USER] int  NULL,
    [TITLE] nvarchar(255)  NULL,
    [CONTENT] nvarchar(max)  NULL,
    [CREATED_AT] datetime  NULL,
    [UPDATED_AT] datetime  NULL,
    [STATUS_ARTICLE] nvarchar(64)  NULL,
    [THUMBNAIL] varchar(64)  NULL,
    [TYPE_ARTICLE] varchar(64)  NULL
);
GO

-- Creating table 'CART_OF_USER'
CREATE TABLE [dbo].[CART_OF_USER] (
    [ID_USER] int  NOT NULL,
    [ID_COURSE] varchar(56)  NOT NULL
);
GO

-- Creating table 'COMMENT_LESSON'
CREATE TABLE [dbo].[COMMENT_LESSON] (
    [ID_COMMENT] varchar(56)  NOT NULL,
    [ID_LESSON] varchar(56)  NOT NULL,
    [CONTENT] nvarchar(256)  NOT NULL,
    [CREATED_AT] datetime  NULL
);
GO

-- Creating table 'COURSEs'
CREATE TABLE [dbo].[COURSEs] (
    [ID_COURSE] varchar(56)  NOT NULL,
    [ID_TYPECOURSE] varchar(56)  NOT NULL,
    [ID_TEACHER] varchar(56)  NOT NULL,
    [NAME_COURSE] nvarchar(64)  NOT NULL,
    [DESCRIPTION_COURSE] nvarchar(256)  NOT NULL,
    [PRICE_COURSE] float  NOT NULL,
    [STATUS_COURSE] nvarchar(64)  NOT NULL,
    [THUMBNAIL] varchar(64)  NOT NULL,
    [COUNT_LESSON_COURSE] int  NOT NULL,
    [LEVEL_COURSE] nvarchar(32)  NOT NULL,
    [CREATED_AT_COURSE] datetime  NULL,
    [UPDATE_AT_COURSE] datetime  NULL
);
GO

-- Creating table 'Choices'
CREATE TABLE [dbo].[Choices] (
    [ChoiceID] int IDENTITY(1,1) NOT NULL,
    [ChoiceText] nvarchar(max)  NULL,
    [QuestionID] int  NULL
);
GO

-- Creating table 'FEEDBACKs'
CREATE TABLE [dbo].[FEEDBACKs] (
    [FEEDBACKID] varchar(56)  NOT NULL,
    [ID_USER] int  NOT NULL,
    [ID_ORDER] varchar(56)  NOT NULL,
    [DATE_FEEDBACK] datetime  NOT NULL,
    [CONTENT_FEEDBACK] nvarchar(255)  NOT NULL,
    [RATE_FEEDBACK] int  NULL
);
GO

-- Creating table 'GRADES'
CREATE TABLE [dbo].[GRADES] (
    [GRADEID] varchar(56)  NOT NULL,
    [ID_USER] int  NOT NULL,
    [ID_COURSE] varchar(56)  NOT NULL,
    [QUIZID] varchar(56)  NOT NULL,
    [GRADE1] float  NULL
);
GO

-- Creating table 'LESSONs'
CREATE TABLE [dbo].[LESSONs] (
    [ID_LESSON] varchar(56)  NOT NULL,
    [ID_COURSE] varchar(56)  NOT NULL,
    [TITLE_LESSON] nvarchar(64)  NOT NULL,
    [DESCRIPTION_LESSON] nvarchar(256)  NULL,
    [STATUS_LESSON] nvarchar(256)  NULL,
    [SESSION_LESSON] int  NULL,
    [THUMBNAIL] varchar(64)  NULL,
    [LINK_LESSON] nvarchar(256)  NULL,
    [CREATED_AT] datetime  NULL,
    [UPDATED_AT] datetime  NULL
);
GO

-- Creating table 'ORDER_COURSE'
CREATE TABLE [dbo].[ORDER_COURSE] (
    [ID_ORDER] varchar(56)  NOT NULL,
    [ID_COURSE] varchar(56)  NOT NULL,
    [ID_USER] int  NOT NULL,
    [STATUS_ORDER] nvarchar(64)  NOT NULL,
    [TIME_AT_ORDER] datetime  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [QuestionID] int IDENTITY(1,1) NOT NULL,
    [QuestionText] nvarchar(max)  NULL,
    [QuizID] int  NULL
);
GO

-- Creating table 'Quizs'
CREATE TABLE [dbo].[Quizs] (
    [QuizID] int IDENTITY(1,1) NOT NULL,
    [QuizName] nvarchar(80)  NULL
);
GO

-- Creating table 'QUIZZES'
CREATE TABLE [dbo].[QUIZZES] (
    [QUIZID] varchar(56)  NOT NULL,
    [ID_COURSE] varchar(56)  NOT NULL,
    [QUESTION] nvarchar(max)  NULL,
    [DUEDATE_QUIZ] datetime  NULL,
    [ANSWER_TRUE] nvarchar(max)  NULL,
    [ANSWER_FALSE] nvarchar(max)  NULL,
    [POINTS_QUIZ] float  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TEACHERs'
CREATE TABLE [dbo].[TEACHERs] (
    [ID_TEACHER] varchar(56)  NOT NULL,
    [NAME_TEACHER] nvarchar(64)  NOT NULL,
    [STATUS_TEACHER] nvarchar(64)  NOT NULL,
    [THUMBNAIL] varchar(64)  NOT NULL,
    [D_CREATED] datetime  NOT NULL,
    [LEVEL_TEACHER] nvarchar(64)  NOT NULL,
    [DESCRIPTION_TEACHER] nvarchar(256)  NULL
);
GO

-- Creating table 'TYPE_COURSE'
CREATE TABLE [dbo].[TYPE_COURSE] (
    [ID_TYPECOURSE] varchar(56)  NOT NULL,
    [NAME_TYPECOURSE] nvarchar(64)  NOT NULL,
    [THUMBNAIL] varchar(64)  NOT NULL
);
GO

-- Creating table 'USER_COURSE'
CREATE TABLE [dbo].[USER_COURSE] (
    [ID_USER] int IDENTITY(1,1) NOT NULL,
    [FULLNAME_USER] nvarchar(64)  NULL,
    [PASSWORD] varchar(max)  NOT NULL,
    [USERNAME] varchar(64)  NOT NULL,
    [BIRTHDAY] datetime  NULL,
    [NUMBER_OF_COURSE] int  NULL,
    [EMAIL_USER] varchar(64)  NOT NULL,
    [PHONE_USER] varchar(64)  NULL,
    [ROLE_USER] varchar(64)  NOT NULL,
    [STATUS_USER] nvarchar(64)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AnswerID] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [PK_Answers]
    PRIMARY KEY CLUSTERED ([AnswerID] ASC);
GO

-- Creating primary key on [ID] in table 'ARTICLEs'
ALTER TABLE [dbo].[ARTICLEs]
ADD CONSTRAINT [PK_ARTICLEs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID_USER], [ID_COURSE] in table 'CART_OF_USER'
ALTER TABLE [dbo].[CART_OF_USER]
ADD CONSTRAINT [PK_CART_OF_USER]
    PRIMARY KEY CLUSTERED ([ID_USER], [ID_COURSE] ASC);
GO

-- Creating primary key on [ID_COMMENT] in table 'COMMENT_LESSON'
ALTER TABLE [dbo].[COMMENT_LESSON]
ADD CONSTRAINT [PK_COMMENT_LESSON]
    PRIMARY KEY CLUSTERED ([ID_COMMENT] ASC);
GO

-- Creating primary key on [ID_COURSE] in table 'COURSEs'
ALTER TABLE [dbo].[COURSEs]
ADD CONSTRAINT [PK_COURSEs]
    PRIMARY KEY CLUSTERED ([ID_COURSE] ASC);
GO

-- Creating primary key on [ChoiceID] in table 'Choices'
ALTER TABLE [dbo].[Choices]
ADD CONSTRAINT [PK_Choices]
    PRIMARY KEY CLUSTERED ([ChoiceID] ASC);
GO

-- Creating primary key on [FEEDBACKID] in table 'FEEDBACKs'
ALTER TABLE [dbo].[FEEDBACKs]
ADD CONSTRAINT [PK_FEEDBACKs]
    PRIMARY KEY CLUSTERED ([FEEDBACKID] ASC);
GO

-- Creating primary key on [GRADEID] in table 'GRADES'
ALTER TABLE [dbo].[GRADES]
ADD CONSTRAINT [PK_GRADES]
    PRIMARY KEY CLUSTERED ([GRADEID] ASC);
GO

-- Creating primary key on [ID_LESSON] in table 'LESSONs'
ALTER TABLE [dbo].[LESSONs]
ADD CONSTRAINT [PK_LESSONs]
    PRIMARY KEY CLUSTERED ([ID_LESSON] ASC);
GO

-- Creating primary key on [ID_ORDER] in table 'ORDER_COURSE'
ALTER TABLE [dbo].[ORDER_COURSE]
ADD CONSTRAINT [PK_ORDER_COURSE]
    PRIMARY KEY CLUSTERED ([ID_ORDER] ASC);
GO

-- Creating primary key on [QuestionID] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([QuestionID] ASC);
GO

-- Creating primary key on [QuizID] in table 'Quizs'
ALTER TABLE [dbo].[Quizs]
ADD CONSTRAINT [PK_Quizs]
    PRIMARY KEY CLUSTERED ([QuizID] ASC);
GO

-- Creating primary key on [QUIZID] in table 'QUIZZES'
ALTER TABLE [dbo].[QUIZZES]
ADD CONSTRAINT [PK_QUIZZES]
    PRIMARY KEY CLUSTERED ([QUIZID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID_TEACHER] in table 'TEACHERs'
ALTER TABLE [dbo].[TEACHERs]
ADD CONSTRAINT [PK_TEACHERs]
    PRIMARY KEY CLUSTERED ([ID_TEACHER] ASC);
GO

-- Creating primary key on [ID_TYPECOURSE] in table 'TYPE_COURSE'
ALTER TABLE [dbo].[TYPE_COURSE]
ADD CONSTRAINT [PK_TYPE_COURSE]
    PRIMARY KEY CLUSTERED ([ID_TYPECOURSE] ASC);
GO

-- Creating primary key on [ID_USER] in table 'USER_COURSE'
ALTER TABLE [dbo].[USER_COURSE]
ADD CONSTRAINT [PK_USER_COURSE]
    PRIMARY KEY CLUSTERED ([ID_USER] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestionID] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [FK_Answers_Questions]
    FOREIGN KEY ([QuestionID])
    REFERENCES [dbo].[Questions]
        ([QuestionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Answers_Questions'
CREATE INDEX [IX_FK_Answers_Questions]
ON [dbo].[Answers]
    ([QuestionID]);
GO

-- Creating foreign key on [ID_USER] in table 'ARTICLEs'
ALTER TABLE [dbo].[ARTICLEs]
ADD CONSTRAINT [FK_ARTICLE_USER]
    FOREIGN KEY ([ID_USER])
    REFERENCES [dbo].[USER_COURSE]
        ([ID_USER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ARTICLE_USER'
CREATE INDEX [IX_FK_ARTICLE_USER]
ON [dbo].[ARTICLEs]
    ([ID_USER]);
GO

-- Creating foreign key on [ID_USER] in table 'CART_OF_USER'
ALTER TABLE [dbo].[CART_OF_USER]
ADD CONSTRAINT [FK_CART_OF_USER_USER_COURSE]
    FOREIGN KEY ([ID_USER])
    REFERENCES [dbo].[USER_COURSE]
        ([ID_USER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_LESSON] in table 'COMMENT_LESSON'
ALTER TABLE [dbo].[COMMENT_LESSON]
ADD CONSTRAINT [FK_CM_LS]
    FOREIGN KEY ([ID_LESSON])
    REFERENCES [dbo].[LESSONs]
        ([ID_LESSON])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CM_LS'
CREATE INDEX [IX_FK_CM_LS]
ON [dbo].[COMMENT_LESSON]
    ([ID_LESSON]);
GO

-- Creating foreign key on [ID_TEACHER] in table 'COURSEs'
ALTER TABLE [dbo].[COURSEs]
ADD CONSTRAINT [FK_COURSE_TEACHER]
    FOREIGN KEY ([ID_TEACHER])
    REFERENCES [dbo].[TEACHERs]
        ([ID_TEACHER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_COURSE_TEACHER'
CREATE INDEX [IX_FK_COURSE_TEACHER]
ON [dbo].[COURSEs]
    ([ID_TEACHER]);
GO

-- Creating foreign key on [ID_TYPECOURSE] in table 'COURSEs'
ALTER TABLE [dbo].[COURSEs]
ADD CONSTRAINT [FK_COURSE_TYPE_COURSE]
    FOREIGN KEY ([ID_TYPECOURSE])
    REFERENCES [dbo].[TYPE_COURSE]
        ([ID_TYPECOURSE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_COURSE_TYPE_COURSE'
CREATE INDEX [IX_FK_COURSE_TYPE_COURSE]
ON [dbo].[COURSEs]
    ([ID_TYPECOURSE]);
GO

-- Creating foreign key on [ID_COURSE] in table 'GRADES'
ALTER TABLE [dbo].[GRADES]
ADD CONSTRAINT [FK_GRADES_COURSE]
    FOREIGN KEY ([ID_COURSE])
    REFERENCES [dbo].[COURSEs]
        ([ID_COURSE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GRADES_COURSE'
CREATE INDEX [IX_FK_GRADES_COURSE]
ON [dbo].[GRADES]
    ([ID_COURSE]);
GO

-- Creating foreign key on [ID_COURSE] in table 'LESSONs'
ALTER TABLE [dbo].[LESSONs]
ADD CONSTRAINT [FK_LESSON_COURSE]
    FOREIGN KEY ([ID_COURSE])
    REFERENCES [dbo].[COURSEs]
        ([ID_COURSE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LESSON_COURSE'
CREATE INDEX [IX_FK_LESSON_COURSE]
ON [dbo].[LESSONs]
    ([ID_COURSE]);
GO

-- Creating foreign key on [ID_COURSE] in table 'QUIZZES'
ALTER TABLE [dbo].[QUIZZES]
ADD CONSTRAINT [FK_QUIZZES_COURSE]
    FOREIGN KEY ([ID_COURSE])
    REFERENCES [dbo].[COURSEs]
        ([ID_COURSE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QUIZZES_COURSE'
CREATE INDEX [IX_FK_QUIZZES_COURSE]
ON [dbo].[QUIZZES]
    ([ID_COURSE]);
GO

-- Creating foreign key on [ID_COURSE] in table 'ORDER_COURSE'
ALTER TABLE [dbo].[ORDER_COURSE]
ADD CONSTRAINT [FK_ORDER_COURSE_COURSE]
    FOREIGN KEY ([ID_COURSE])
    REFERENCES [dbo].[COURSEs]
        ([ID_COURSE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ORDER_COURSE_COURSE'
CREATE INDEX [IX_FK_ORDER_COURSE_COURSE]
ON [dbo].[ORDER_COURSE]
    ([ID_COURSE]);
GO

-- Creating foreign key on [QuestionID] in table 'Choices'
ALTER TABLE [dbo].[Choices]
ADD CONSTRAINT [FK_Choices_Questions]
    FOREIGN KEY ([QuestionID])
    REFERENCES [dbo].[Questions]
        ([QuestionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Choices_Questions'
CREATE INDEX [IX_FK_Choices_Questions]
ON [dbo].[Choices]
    ([QuestionID]);
GO

-- Creating foreign key on [ID_ORDER] in table 'FEEDBACKs'
ALTER TABLE [dbo].[FEEDBACKs]
ADD CONSTRAINT [FK_FEEDBACK_ORDER_COURSE]
    FOREIGN KEY ([ID_ORDER])
    REFERENCES [dbo].[ORDER_COURSE]
        ([ID_ORDER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FEEDBACK_ORDER_COURSE'
CREATE INDEX [IX_FK_FEEDBACK_ORDER_COURSE]
ON [dbo].[FEEDBACKs]
    ([ID_ORDER]);
GO

-- Creating foreign key on [ID_USER] in table 'GRADES'
ALTER TABLE [dbo].[GRADES]
ADD CONSTRAINT [FK_GRADES_USER_COURSE]
    FOREIGN KEY ([ID_USER])
    REFERENCES [dbo].[USER_COURSE]
        ([ID_USER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GRADES_USER_COURSE'
CREATE INDEX [IX_FK_GRADES_USER_COURSE]
ON [dbo].[GRADES]
    ([ID_USER]);
GO

-- Creating foreign key on [ID_USER] in table 'ORDER_COURSE'
ALTER TABLE [dbo].[ORDER_COURSE]
ADD CONSTRAINT [FK_ORDER_COURSE_USER_COURSE]
    FOREIGN KEY ([ID_USER])
    REFERENCES [dbo].[USER_COURSE]
        ([ID_USER])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ORDER_COURSE_USER_COURSE'
CREATE INDEX [IX_FK_ORDER_COURSE_USER_COURSE]
ON [dbo].[ORDER_COURSE]
    ([ID_USER]);
GO

-- Creating foreign key on [QuizID] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_Questions_Quiz]
    FOREIGN KEY ([QuizID])
    REFERENCES [dbo].[Quizs]
        ([QuizID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Questions_Quiz'
CREATE INDEX [IX_FK_Questions_Quiz]
ON [dbo].[Questions]
    ([QuizID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------