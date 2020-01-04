create database MultipleChoiceApp
go
use MultipleChoiceApp

go
create table TB_Category(
	CategoryId varchar(25) primary key not null,
	CategoryName varchar(255) not null,
	Status bit
)
go
create table TB_Question(
	QuestionId varchar(25) primary key not null,
	AdminId varchar(25) not null,
	CategoryId varchar(25) not null,
	ContentQuestion text,
	Type bit,
	Status bit,
)
go
create table TB_Answer(
	AnswerId varchar(25) not null,
	QuestionId varchar(25) not null,
	ContentAnswer text,
	CorrectAnswer bit,
	primary key (AnswerId, QuestionId)
)
go
create table TB_Admin(
	AdminId varchar(25) primary key not null,
	Password varchar(255),
	FullName varchar(255),
	Phone varchar(25),
	Email varchar(255),
	Address varchar(255),
	Status bit
)
go
create table TB_Exam(
	ExamId varchar(25) primary key not null,
	FullName varchar(255),
	Phone varchar(25),
	Email nvarchar(255),
	ExamDate Date,
	Result int,
	Status bit
)
create table TB_ExamResult(
	ExamResultId varchar(25) primary key not null,
	ExamId varchar(25) not null,
	AnswerId varchar(25) not null,
)

go
ALTER TABLE TB_Question ADD FOREIGN KEY (AdminId) REFERENCES TB_Admin(AdminId);
go
ALTER TABLE TB_Question ADD FOREIGN KEY (CategoryId) REFERENCES TB_Category(CategoryId);
go
ALTER TABLE TB_Answer ADD FOREIGN KEY (QuestionId) REFERENCES TB_Question(QuestionId);
go
ALTER TABLE TB_ExamResult ADD FOREIGN KEY (ExamId) REFERENCES TB_Exam(ExamId);