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
insert into TB_Question values('Q00001','A00001','C00004','What is the size of 1 Char?',0,1)
insert into TB_Question values('Q00002','A00002','C00004','A class cannot be declared in mode',0,1)
insert into TB_Question values('Q00003','A00001','C00004','Results after compiling the code int a = 3.5',0,1)
insert into TB_Question values('Q00004','A00003','C00004','Results of compiling the code int a1 = 5; double a2 = (float) a1',0,1)
insert into TB_Question values('Q00005','A00001','C00004','The result after compiling the code int a = 9/0',0,1)
insert into TB_Question values('Q00006','A00002','C00004','Results after compiling the code: float a = 9/0',0,1)
insert into TB_Question values('Q00007','A00003','C00004','Class can operate in transient mode',0,1)
insert into TB_Question values('Q00008','A00001','C00004','Results after compiling the code: Class A {int b = 1; public static void main (String [] args) {System.out.println ("b is" + b);}}',0,1)
insert into TB_Question values('Q00009','A00001','C00004','Result after compiling class A code {public static void main (String [] args) {B b = new A (); }} class B extends A {}',0,1)
insert into TB_Question values('Q00010','A00002','C00004','Result after compiling the code: class A {public static void main (String [] args) {A a = new B ();}} class B extends A {}',0,1)
insert into TB_Question values('Q00011','A00001','C00004','Structured, syntax protected protected can be called in any subclass of that class',0,1)
insert into TB_Question values('Q00012','A00001','C00004','A abstract class can use non - abstract syntax',0,1)
insert into TB_Question values('Q00013','A00001','C00004','Java keywords are declared in lower case as well as uppercase',0,1)
insert into TB_Question values('Q00014','A00003','C00004','What is the concept of instanceof?',0,1)
insert into TB_Question values('Q00015','A00001','C00004','Primitive datatype is allocated based on the stack',0,1)
insert into TB_Question values('Q00016','A00002','C00004','Can compare boolean value with integer',0,1)
insert into TB_Question values('Q00017','A00002','C00004','If class A works with the interface then must it implement all the constructs of that interface?',0,1)
insert into TB_Question values('Q00018','A00001','C00004','Integer a = new Integer (2); Integer b = new Integer (2). What happens if we apply the if (a == b) syntax?',0,1)
insert into TB_Question values('Q00019','A00001','C00004','What are the wait (), notify () and notifyAll () structures in an object that need to be called from the synchronized code?',0,1)
insert into TB_Question values('Q00020','A00002','C00004','How to prevent a variable - variable from becoming serialized - is serializable',0,1)

insert into TB_Question values('Q00021','A00001','C00004','Primitive datatype is allocated based on the stack',1,1)
insert into TB_Question values('Q00022','A00002','C00004','Can compare boolean value with integer',1,1)
insert into TB_Question values('Q00023','A00002','C00004','If class A works with the interface then must it implement all the constructs of that interface?',1,1)
insert into TB_Question values('Q00024','A00001','C00004','Integer a = new Integer (2); Integer b = new Integer (2). What happens if we apply the if (a == b) syntax?',1,1)
insert into TB_Question values('Q00025','A00001','C00004','What are the wait (), notify () and notifyAll () structures in an object that need to be called from the synchronized code?',1,1)


---Inser into table TB_Answer
insert into TB_Answer values('Q00001','4 bit',0)
insert into TB_Answer values('Q00001','8 bit',0)
insert into TB_Answer values('Q00001','16 bit',1)
insert into TB_Answer values('Q00001','32 bit',0)

insert into TB_Answer values('Q00002','Static',0)
insert into TB_Answer values('Q00002','Private',1)
insert into TB_Answer values('Q00002','Default',0)
insert into TB_Answer values('Q00002','public',0)

insert into TB_Answer values('Q00003','Compilation error',1)
insert into TB_Answer values('Q00003','Runtime error',0)
insert into TB_Answer values('Q00003','3.5',0)
insert into TB_Answer values('Q00003','3',0)

insert into TB_Answer values('Q00004','Compilation error',0)
insert into TB_Answer values('Q00004','Runtime error',0)
insert into TB_Answer values('Q00004','No error',1)
insert into TB_Answer values('Q00004','Runtime Exception',0)

insert into TB_Answer values('Q00005','Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values('Q00005','Compilation error: DivideByZeroException',0)
insert into TB_Answer values('Q00005','Runtime Exception',1)
insert into TB_Answer values('Q00005','No Error: The result is NaN',0)

insert into TB_Answer values('Q00006','Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values('Q00006','Compilation error: DivideByZeroException',0)
insert into TB_Answer values('Q00006','Runtime Exception',1)
insert into TB_Answer values('Q00006','No Error: The result is NaN',0)

insert into TB_Answer values('Q00007','True',0)
insert into TB_Answer values('Q00007','False',1)
insert into TB_Answer values('Q00007','All answers are wrong',0)
insert into TB_Answer values('Q00007','All answers are correct',0)

insert into TB_Answer values('Q00008','Compilation error',1)
insert into TB_Answer values('Q00008','Runtime Error',0)
insert into TB_Answer values('Q00008','Runtime Exception',0)
insert into TB_Answer values('Q00008','The result of b is 1',0)

insert into TB_Answer values('Q00009','Compile error',1)
insert into TB_Answer values('Q00009','Runtime Exception',0)
insert into TB_Answer values('Q00009','No error',0)
insert into TB_Answer values('Q00009','No Error: The result is NaN',0)

insert into TB_Answer values('Q00010','Compile error',0)
insert into TB_Answer values('Q00010','Runtime Exception',0)
insert into TB_Answer values('Q00010','No error',1)
insert into TB_Answer values('Q00010','No Error: The result is NaN',0)

insert into TB_Answer values('Q00011','True',1)
insert into TB_Answer values('Q00011','False',0)
insert into TB_Answer values('Q00011','All answers are wrong',0)
insert into TB_Answer values('Q00011','All answers are correct',0)

insert into TB_Answer values('Q00012','True',1)
insert into TB_Answer values('Q00012','False',0)
insert into TB_Answer values('Q00012','All answers are wrong',0)
insert into TB_Answer values('Q00012','All answers are correct',0)

insert into TB_Answer values('Q00013','True',0)
insert into TB_Answer values('Q00013','False',1)
insert into TB_Answer values('Q00013','All answers are wrong',0)
insert into TB_Answer values('Q00013','All answers are correct',0)

insert into TB_Answer values('Q00014','Structure, command syntax in an object',0)
insert into TB_Answer values('Q00014','Operator and keyword structure',1)
insert into TB_Answer values('Q00014','All answers are wrong',0)
insert into TB_Answer values('Q00014','All answers are correct',0)

insert into TB_Answer values('Q00015','True',1)
insert into TB_Answer values('Q00015','False',0)
insert into TB_Answer values('Q00015','All answers are wrong',0)
insert into TB_Answer values('Q00015','All answers are correct',0)

insert into TB_Answer values('Q00016','True',0)
insert into TB_Answer values('Q00016','False',1)
insert into TB_Answer values('Q00016','All answers are wrong',0)
insert into TB_Answer values('Q00016','All answers are correct',0)

insert into TB_Answer values('Q00017','Yes,always',0)
insert into TB_Answer values('Q00017','No, unless that class is abstract',1)
insert into TB_Answer values('Q00017','All answers are wrong',0)
insert into TB_Answer values('Q00017','All answers are correct',0)

insert into TB_Answer values('Q00018','Compiler error',0)
insert into TB_Answer values('Q00018','Runtime Exception',0)
insert into TB_Answer values('Q00018','True',0)
insert into TB_Answer values('Q00018','False',1)

insert into TB_Answer values('Q00019','True',1)
insert into TB_Answer values('Q00019','False',0)
insert into TB_Answer values('Q00019','All answers are wrong',0)
insert into TB_Answer values('Q00019','All answers are correct',0)
	
insert into TB_Answer values('Q00020','Mark as private',0)
insert into TB_Answer values('Q00020','Marked as volatile',0)
insert into TB_Answer values('Q00020','Marked as transient',1)
insert into TB_Answer values('Q00020','It is impossible to do',0)

insert into TB_Answer values('Q00021','Mark as private',1)
insert into TB_Answer values('Q00021','Marked as volatile',0)
insert into TB_Answer values('Q00021','Marked as transient',1)
insert into TB_Answer values('Q00021','It is impossible to do',0)

insert into TB_Answer values('Q00022','Mark as private',0)
insert into TB_Answer values('Q00022','Marked as volatile',1)
insert into TB_Answer values('Q00022','Marked as transient',1)
insert into TB_Answer values('Q00022','It is impossible to do',0)


insert into TB_Answer values('Q00023','Mark as private',1)
insert into TB_Answer values('Q00023','Marked as volatile',1)
insert into TB_Answer values('Q00023','Marked as transient',0)
insert into TB_Answer values('Q00023','It is impossible to do',0)

insert into TB_Answer values('Q00024','Mark as private',0)
insert into TB_Answer values('Q00024','Marked as volatile',0)
insert into TB_Answer values('Q00024','Marked as transient',1)
insert into TB_Answer values('Q00024','It is impossible to do',1)

insert into TB_Answer values('Q00025','True',1)
insert into TB_Answer values('Q00025','False',1)
insert into TB_Answer values('Q00025','All answers are wrong',0)
insert into TB_Answer values('Q00025','All answers are correct',0)

insert into TB_Exam values('Nguyen Truong Dung','0982220891','nguyentruongdung1894@gmail.com','2020-01-02',25,1)
insert into TB_Exam values('Nguyen Van Duc','01569874563','nguyenvanduc012345@gmail.com','2020-03-05',17,1)
insert into TB_Exam values('Bui Duc Nhat','0982220891','buiduc14141441@gmail.com','2020-07-09',21,1)

insert into TB_ExamResult values(1,1,'Q00001')
insert into TB_ExamResult values(1,5,'Q00002')
insert into TB_ExamResult values(1,9,'Q00003')
insert into TB_ExamResult values(1,13,'Q00004')
insert into TB_ExamResult values(1,17,'Q00005')
insert into TB_ExamResult values(1,21,'Q00006')
insert into TB_ExamResult values(1,25,'Q00007')
insert into TB_ExamResult values(1,29,'Q00008')
insert into TB_ExamResult values(1,33,'Q00009')
insert into TB_ExamResult values(1,37,'Q00010')

insert into TB_ExamResult values(2,41,'Q00011')
insert into TB_ExamResult values(2,45,'Q00012')
insert into TB_ExamResult values(2,49,'Q00013')
insert into TB_ExamResult values(2,53,'Q00014')
insert into TB_ExamResult values(2,57,'Q00015')
insert into TB_ExamResult values(2,61,'Q00016')
insert into TB_ExamResult values(2,65,'Q00017')
insert into TB_ExamResult values(2,69,'Q00018')
insert into TB_ExamResult values(2,73,'Q00019')
insert into TB_ExamResult values(2,77,'Q00020')

insert into TB_ExamResult values(3,81,'Q00021')
insert into TB_ExamResult values(3,83,'Q00021')
insert into TB_ExamResult values(3,89,'Q00023')
insert into TB_ExamResult values(3,90,'Q00023')
insert into TB_ExamResult values(3,13,'Q00004')
insert into TB_ExamResult values(3,95,'Q00024')
insert into TB_ExamResult values(3,96,'Q00024')
insert into TB_ExamResult values(3,26,'Q00007')
insert into TB_ExamResult values(3,62,'Q00016')
insert into TB_ExamResult values(3,41,'Q00011')
insert into TB_ExamResult values(3,99,'Q00025')
insert into TB_ExamResult values(3,98,'Q00025')
insert into TB_ExamResult values(3,73,'Q00019')
insert into TB_ExamResult values(3,86,'Q00022')
insert into TB_ExamResult values(3,87,'Q00022')


select ex.AnswerId, ex.QuestionId from TB_ExamResult ex inner join TB_Exam e on e.ExamId = ex.ExamId where e.ExamId = '3'

select * from TB_Answer where QuestionId = 'Q00023' AND CorrectAnswer = 1

select * from TB_ExamResult