program student;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  student: anketa;

begin
  Write('напишите Ф.И.О.: ');
  ReadLn(student.fio);
  Write('введите дату рождения: ');
  ReadLn(student.birth);
  Write('введите курс 1-5: ');
  ReadLn(student.kurs);
  
  WriteLn('анкетные данные студента:');
  WriteLn('Ф.И.О.: ', student.fio);
  WriteLn('дата рождения: ', student.birth);
  WriteLn('курс: ', student.kurs);
end.
