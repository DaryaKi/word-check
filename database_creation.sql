CREATE DATABASE WordCheck
ON PRIMARY
(NAME = Word_checker,
FILENAME = 'D:\Word_checker\Word_checker.mdf',
SIZE = 5120KB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 1024KB)
LOG ON
(NAME = Word_checker_log,
FILENAME = 'D:\Word_checker\Word_checker_log.ldf',
SIZE = 2048KB,
MAXSIZE = 2048GB,
FILEGROWTH = 10%)
GO