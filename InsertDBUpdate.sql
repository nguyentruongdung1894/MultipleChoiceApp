use  MultipleChoiceAppUpdate
go
---Inser into table TB_Admin
insert into TB_Admin values('A00001','admin','Nguyen Truong Dung','0334084488','nguyentruongdung1894@gmail.com','Minh Tan - Hung Ha - Thai Binh',1)
insert into TB_Admin values('A00002','admin','Nguyen Thi Dung','01678569305','nguyendung2208@gmail.com','Dong Da - Ha Noi',1)
insert into TB_Admin values('A00003','admin','Nguyen Bich Phuong Anh','0982220891','phuonganh0809@gmail.com','Dong Da - Ha Noi',1)

---Inser into table TB_Category
insert into TB_Category values('C00001','C',1)
insert into TB_Category values('C00002','C#',1)
insert into TB_Category values('C00003','HTML',1)
insert into TB_Category values('C00004','JAVA',1)
insert into TB_Category values('C00005','SQL',1)

---Inser into table TB_Question
insert into TB_Question values('A00001','C00004','What is the size of 1 Char?',0,1)
insert into TB_Question values('A00002','C00004','A class cannot be declared in mode',0,1)
insert into TB_Question values('A00001','C00004','Results after compiling the code int a = 3.5',0,1)
insert into TB_Question values('A00003','C00004','Results of compiling the code int a1 = 5; double a2 = (float) a1',0,1)
insert into TB_Question values('A00001','C00004','The result after compiling the code int a = 9/0',0,1)
insert into TB_Question values('A00002','C00004','Results after compiling the code: float a = 9/0',0,1)
insert into TB_Question values('A00003','C00004','Class can operate in transient mode',0,1)
insert into TB_Question values('A00001','C00004','Results after compiling the code: Class A {int b = 1; public static void main (String [] args) {System.out.println ("b is" + b);}}',0,1)
insert into TB_Question values('A00001','C00004','Result after compiling class A code {public static void main (String [] args) {B b = new A (); }} class B extends A {}',0,1)
insert into TB_Question values('A00002','C00004','Result after compiling the code: class A {public static void main (String [] args) {A a = new B ();}} class B extends A {}',0,1)
insert into TB_Question values('A00001','C00004','Structured, syntax protected protected can be called in any subclass of that class',0,1)
insert into TB_Question values('A00001','C00004','A abstract class can use non - abstract syntax',0,1)
insert into TB_Question values('A00001','C00004','Java keywords are declared in lower case as well as uppercase',0,1)
insert into TB_Question values('A00003','C00004','What is the concept of instanceof?',0,1)
insert into TB_Question values('A00001','C00004','Primitive datatype is allocated based on the stack',0,1)
insert into TB_Question values('A00002','C00004','Can compare boolean value with integer',0,1)
insert into TB_Question values('A00002','C00004','If class A works with the interface then must it implement all the constructs of that interface?',0,1)
insert into TB_Question values('A00001','C00004','Integer a = new Integer (2); Integer b = new Integer (2). What happens if we apply the if (a == b) syntax?',0,1)
insert into TB_Question values('A00001','C00004','What are the wait (), notify () and notifyAll () structures in an object that need to be called from the synchronized code?',0,1)
insert into TB_Question values('A00002','C00004','How to prevent a variable - variable from becoming serialized - is serializable',0,1)

insert into TB_Question values('A00001','C00004','Primitive datatype is allocated based on the stack',1,1)
insert into TB_Question values('A00002','C00004','Can compare boolean value with integer',1,1)
insert into TB_Question values('A00002','C00004','If class A works with the interface then must it implement all the constructs of that interface?',1,1)
insert into TB_Question values('A00001','C00004','Integer a = new Integer (2); Integer b = new Integer (2). What happens if we apply the if (a == b) syntax?',1,1)
insert into TB_Question values('A00001','C00004','What are the wait (), notify () and notifyAll () structures in an object that need to be called from the synchronized code?',1,1)

insert into TB_Question values('A00001','C00005','What are the wait (), notify () and notifyAll () structures in an object that need to be called from the synchronized code?',1,1)

---Inser into table TB_Answer
insert into TB_Answer values(1,'4 bit',0)
insert into TB_Answer values(1,'8 bit',0)
insert into TB_Answer values(1,'16 bit',1)
insert into TB_Answer values(1,'32 bit',0)

insert into TB_Answer values(2,'Static',0)
insert into TB_Answer values(2,'Private',1)
insert into TB_Answer values(2,'Default',0)
insert into TB_Answer values(2,'public',0)

insert into TB_Answer values(3,'Compilation error',1)
insert into TB_Answer values(3,'Runtime error',0)
insert into TB_Answer values(3,'3.5',0)
insert into TB_Answer values(3,'3',0)

insert into TB_Answer values(4,'Compilation error',0)
insert into TB_Answer values(4,'Runtime error',0)
insert into TB_Answer values(4,'No error',1)
insert into TB_Answer values(4,'Runtime Exception',0)

insert into TB_Answer values(5,'Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values(5,'Compilation error: DivideByZeroException',0)
insert into TB_Answer values(5,'Runtime Exception',1)
insert into TB_Answer values(5,'No Error: The result is NaN',0)

insert into TB_Answer values(6,'Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values(6,'Compilation error: DivideByZeroException',0)
insert into TB_Answer values(6,'Runtime Exception',1)
insert into TB_Answer values(6,'No Error: The result is NaN',0)

insert into TB_Answer values(7,'True',0)
insert into TB_Answer values(7,'False',1)
insert into TB_Answer values(7,'All answers are wrong',0)
insert into TB_Answer values(7,'All answers are correct',0)

insert into TB_Answer values(8,'Compilation error',1)
insert into TB_Answer values(8,'Runtime Error',0)
insert into TB_Answer values(8,'Runtime Exception',0)
insert into TB_Answer values(8,'The result of b is 1',0)

insert into TB_Answer values(9,'Compile error',1)
insert into TB_Answer values(9,'Runtime Exception',0)
insert into TB_Answer values(9,'No error',0)
insert into TB_Answer values(9,'No Error: The result is NaN',0)

insert into TB_Answer values(10,'Compile error',0)
insert into TB_Answer values(10,'Runtime Exception',0)
insert into TB_Answer values(10,'No error',1)
insert into TB_Answer values(10,'No Error: The result is NaN',0)

insert into TB_Answer values(11,'True',1)
insert into TB_Answer values(11,'False',0)
insert into TB_Answer values(11,'All answers are wrong',0)
insert into TB_Answer values(11,'All answers are correct',0)

insert into TB_Answer values(12,'True',1)
insert into TB_Answer values(12,'False',0)
insert into TB_Answer values(12,'All answers are wrong',0)
insert into TB_Answer values(12,'All answers are correct',0)

insert into TB_Answer values(13,'True',0)
insert into TB_Answer values(13,'False',1)
insert into TB_Answer values(13,'All answers are wrong',0)
insert into TB_Answer values(13,'All answers are correct',0)

insert into TB_Answer values(14,'Structure, command syntax in an object',0)
insert into TB_Answer values(14,'Operator and keyword structure',1)
insert into TB_Answer values(14,'All answers are wrong',0)
insert into TB_Answer values(14,'All answers are correct',0)

insert into TB_Answer values(15,'True',1)
insert into TB_Answer values(15,'False',0)
insert into TB_Answer values(15,'All answers are wrong',0)
insert into TB_Answer values(15,'All answers are correct',0)

insert into TB_Answer values(16,'True',0)
insert into TB_Answer values(16,'False',1)
insert into TB_Answer values(16,'All answers are wrong',0)
insert into TB_Answer values(16,'All answers are correct',0)

insert into TB_Answer values(17,'Yes,always',0)
insert into TB_Answer values(17,'No, unless that class is abstract',1)
insert into TB_Answer values(17,'All answers are wrong',0)
insert into TB_Answer values(17,'All answers are correct',0)

insert into TB_Answer values(18,'Compiler error',0)
insert into TB_Answer values(18,'Runtime Exception',0)
insert into TB_Answer values(18,'True',0)
insert into TB_Answer values(18,'False',1)

insert into TB_Answer values(19,'True',1)
insert into TB_Answer values(19,'False',0)
insert into TB_Answer values(19,'All answers are wrong',0)
insert into TB_Answer values(19,'All answers are correct',0)
	
insert into TB_Answer values(20,'Mark as private',0)
insert into TB_Answer values(20,'Marked as volatile',0)
insert into TB_Answer values(20,'Marked as transient',1)
insert into TB_Answer values(20,'It is impossible to do',0)

insert into TB_Answer values(21,'Mark as private',1)
insert into TB_Answer values(21,'Marked as volatile',0)
insert into TB_Answer values(21,'Marked as transient',1)
insert into TB_Answer values(21,'It is impossible to do',0)

insert into TB_Answer values(22,'Mark as private',0)
insert into TB_Answer values(22,'Marked as volatile',1)
insert into TB_Answer values(22,'Marked as transient',1)
insert into TB_Answer values(22,'It is impossible to do',0)


insert into TB_Answer values(23,'Mark as private',1)
insert into TB_Answer values(23,'Marked as volatile',1)
insert into TB_Answer values(23,'Marked as transient',0)
insert into TB_Answer values(23,'It is impossible to do',0)

insert into TB_Answer values(24,'Mark as private',0)
insert into TB_Answer values(24,'Marked as volatile',0)
insert into TB_Answer values(24,'Marked as transient',1)
insert into TB_Answer values(24,'It is impossible to do',1)

insert into TB_Answer values(25,'True',1)
insert into TB_Answer values(25,'False',1)
insert into TB_Answer values(25,'All answers are wrong',0)
insert into TB_Answer values(25,'All answers are correct',0)

insert into TB_Exam values('Nguyen Truong Dung','0982220891','nguyentruongdung1894@gmail.com','2020-01-02',25,1)
insert into TB_Exam values('Nguyen Van Duc','01569874563','nguyenvanduc012345@gmail.com','2020-03-05',17,1)
insert into TB_Exam values('Bui Duc Nhat','0982220891','buiduc14141441@gmail.com','2020-07-09',21,1)

insert into TB_ExamResult values(1,1,1)
insert into TB_ExamResult values(1,5,2)
insert into TB_ExamResult values(1,9,3)
insert into TB_ExamResult values(1,13,4)
insert into TB_ExamResult values(1,17,5)
insert into TB_ExamResult values(1,21,6)
insert into TB_ExamResult values(1,25,7)
insert into TB_ExamResult values(1,29,8)
insert into TB_ExamResult values(1,33,9)
insert into TB_ExamResult values(1,37,10)

insert into TB_ExamResult values(2,41,11)
insert into TB_ExamResult values(2,45,12)
insert into TB_ExamResult values(2,49,13)
insert into TB_ExamResult values(2,53,14)
insert into TB_ExamResult values(2,57,15)
insert into TB_ExamResult values(2,61,16)
insert into TB_ExamResult values(2,65,17)
insert into TB_ExamResult values(2,69,18)
insert into TB_ExamResult values(2,73,19)
insert into TB_ExamResult values(2,77,20)

insert into TB_ExamResult values(3,81,21)
insert into TB_ExamResult values(3,83,21)
insert into TB_ExamResult values(3,89,23)
insert into TB_ExamResult values(3,90,23)
insert into TB_ExamResult values(3,13,04)
insert into TB_ExamResult values(3,95,24)
insert into TB_ExamResult values(3,96,24)
insert into TB_ExamResult values(3,26,07)
insert into TB_ExamResult values(3,62,16)
insert into TB_ExamResult values(3,41,11)
insert into TB_ExamResult values(3,99,25)
insert into TB_ExamResult values(3,98,25)
insert into TB_ExamResult values(3,73,19)
insert into TB_ExamResult values(3,86,22)
insert into TB_ExamResult values(3,87,22)


select ex.AnswerId, ex.QuestionId from TB_ExamResult ex inner join TB_Exam e on e.ExamId = ex.ExamId where e.ExamId = '3'

select * from TB_Answer where QuestionId = '23' AND CorrectAnswer = 1

select * from TB_ExamResult