use MultipleChoiceApp
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

---Inser into table TB_Answer
insert into TB_Answer values('As00001','Q00001','4 bit',0)
insert into TB_Answer values('As00002','Q00001','8 bit',0)
insert into TB_Answer values('As00003','Q00001','16 bit',1)
insert into TB_Answer values('As00004','Q00001','32 bit',0)

insert into TB_Answer values('As00005','Q00002','Static',0)
insert into TB_Answer values('As00006','Q00002','Private',1)
insert into TB_Answer values('As00007','Q00002','Default',0)
insert into TB_Answer values('As00008','Q00002','public',0)

insert into TB_Answer values('As00009','Q00003','Compilation error',1)
insert into TB_Answer values('As00010','Q00003','Runtime error',0)
insert into TB_Answer values('As00011','Q00003','3.5',0)
insert into TB_Answer values('As00012','Q00003','3',0)

insert into TB_Answer values('As00013','Q00004','Compilation error',0)
insert into TB_Answer values('As00014','Q00004','Runtime error',0)
insert into TB_Answer values('As00015','Q00004','No error',1)
insert into TB_Answer values('As00016','Q00004','Runtime Exception',0)

insert into TB_Answer values('As00017','Q00005','Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values('As00018','Q00005','Compilation error: DivideByZeroException',0)
insert into TB_Answer values('As00019','Q00005','Runtime Exception',1)
insert into TB_Answer values('As00020','Q00005','No Error: The result is NaN',0)

insert into TB_Answer values('As00021','Q00006','Compilatinon error: The division operation must be in a try syntax',0)
insert into TB_Answer values('As00022','Q00006','Compilation error: DivideByZeroException',0)
insert into TB_Answer values('As00023','Q00006','Runtime Exception',1)
insert into TB_Answer values('As00024','Q00006','No Error: The result is NaN',0)

insert into TB_Answer values('As00025','Q00007','True',0)
insert into TB_Answer values('As00026','Q00007','False',1)
insert into TB_Answer values('As00027','Q00007','All answers are wrong',0)
insert into TB_Answer values('As00028','Q00007','All answers are correct',0)

insert into TB_Answer values('As00029','Q00008','Compilation error',1)
insert into TB_Answer values('As00030','Q00008','Runtime Error',0)
insert into TB_Answer values('As00031','Q00008','Runtime Exception',0)
insert into TB_Answer values('As00032','Q00008','The result of b is 1',0)

insert into TB_Answer values('As00033','Q00009','Compile error',1)
insert into TB_Answer values('As00034','Q00009','Runtime Exception',0)
insert into TB_Answer values('As00035','Q00009','No error',0)
insert into TB_Answer values('As00036','Q00009','No Error: The result is NaN',0)

insert into TB_Answer values('As00037','Q00010','Compile error',0)
insert into TB_Answer values('As00038','Q00010','Runtime Exception',0)
insert into TB_Answer values('As00039','Q00010','No error',1)
insert into TB_Answer values('As00040','Q00010','No Error: The result is NaN',0)

insert into TB_Answer values('As00041','Q00011','True',1)
insert into TB_Answer values('As00042','Q00011','False',0)
insert into TB_Answer values('As00043','Q00011','All answers are wrong',0)
insert into TB_Answer values('As00044','Q00011','All answers are correct',0)

insert into TB_Answer values('As00045','Q00012','True',1)
insert into TB_Answer values('As00046','Q00012','False',0)
insert into TB_Answer values('As00047','Q00012','All answers are wrong',0)
insert into TB_Answer values('As00048','Q00012','All answers are correct',0)

insert into TB_Answer values('As00049','Q00013','True',0)
insert into TB_Answer values('As00050','Q00013','False',1)
insert into TB_Answer values('As00051','Q00013','All answers are wrong',0)
insert into TB_Answer values('As00052','Q00013','All answers are correct',0)

insert into TB_Answer values('As00053','Q00014','Structure, command syntax in an object',0)
insert into TB_Answer values('As00054','Q00014','Operator and keyword structure',1)
insert into TB_Answer values('As00055','Q00014','All answers are wrong',0)
insert into TB_Answer values('As00056','Q00014','All answers are correct',0)

insert into TB_Answer values('As00057','Q00015','True',1)
insert into TB_Answer values('As00058','Q00015','False',0)
insert into TB_Answer values('As00059','Q00015','All answers are wrong',0)
insert into TB_Answer values('As00060','Q00015','All answers are correct',0)

insert into TB_Answer values('As00061','Q00016','True',0)
insert into TB_Answer values('As00062','Q00016','False',1)
insert into TB_Answer values('As00063','Q00016','All answers are wrong',0)
insert into TB_Answer values('As00064','Q00016','All answers are correct',0)

insert into TB_Answer values('As00065','Q00017','Yes,always',0)
insert into TB_Answer values('As00066','Q00017','No, unless that class is abstract',1)
insert into TB_Answer values('As00067','Q00017','All answers are wrong',0)
insert into TB_Answer values('As00068','Q00017','All answers are correct',0)

insert into TB_Answer values('As00069','Q00018','Compiler error',0)
insert into TB_Answer values('As00070','Q00018','Runtime Exception',0)
insert into TB_Answer values('As00071','Q00018','True',0)
insert into TB_Answer values('As00072','Q00018','False',1)

insert into TB_Answer values('As00073','Q00019','True',1)
insert into TB_Answer values('As00074','Q00019','False',0)
insert into TB_Answer values('As00075','Q00019','All answers are wrong',0)
insert into TB_Answer values('As00076','Q00019','All answers are correct',0)
	
insert into TB_Answer values('As00077','Q00020','Mark as private',0)
insert into TB_Answer values('As00078','Q00020','Marked as volatile',0)
insert into TB_Answer values('As00079','Q00020','Marked as transient',1)
insert into TB_Answer values('As00080','Q00020','It is impossible to do',0)
