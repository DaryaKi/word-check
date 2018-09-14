CREATE TABLE Languages (
LanguageID int NOT NULL PRIMARY KEY,
Language varchar(20) NOT NULL
)

CREATE TABLE Topics (
TopicID int NOT NULL PRIMARY KEY,
Topic varchar(20) NOT NULL
)

CREATE TABLE Users (
UserID int NOT NULL PRIMARY KEY,
Name varchar(20) NOT NULL,
Surname varchar(20) NOT NULL
)

CREATE TABLE Words (
WordID int PRIMARY KEY NOT NULL,
LanguageID int NOT NULL,
TopicID int NOT NULL,
CONSTRAINT FK_LanguageID FOREIGN KEY(LanguageID)
REFERENCES dbo.Languages(LanguageID)
ON UPDATE CASCADE,
CONSTRAINT FK_TopicID FOREIGN KEY(TopicID)
REFERENCES dbo.Topics(TopicID)
ON UPDATE CASCADE,
Word varchar(20) NOT NULL,
Translation varchar(20)NOT NULL
)

CREATE TABLE UserAnswer (
AnswerID int PRIMARY KEY NOT NULL,
LanguageID int NOT NULL,
TopicID int NOT NULL,
WordID int NOT NULL,
UserID int NOT NULL,
CONSTRAINT FKe_LanguageID FOREIGN KEY(LanguageID)
REFERENCES dbo.Languages(LanguageID)
ON UPDATE CASCADE,
CONSTRAINT FKe_TopicID FOREIGN KEY(TopicID)
REFERENCES dbo.Topics(TopicID)
ON UPDATE CASCADE,
CONSTRAINT FK_WordID FOREIGN KEY(WordID)
REFERENCES dbo.Words(WordID)
ON UPDATE NO ACTION,
CONSTRAINT FK_UserID FOREIGN KEY(UserID)
REFERENCES dbo.Users(UserID)
ON UPDATE CASCADE,
Word varchar(20) NOT NULL,
Translation varchar(20)NOT NULL,
Mark int
)

GO