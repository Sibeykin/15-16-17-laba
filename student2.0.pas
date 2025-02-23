program student;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

const
  MaxStudents = 3;

var
  students: array[1..MaxStudents] of anketa;
  i: Integer;

begin
  for i := 1 to MaxStudents do
  begin
    WriteLn('введите данные студента ', i, ':');
    Write('Ф.И.О.: ');
    ReadLn(students[i].fio);
    Write('дата рождения: ');
    ReadLn(students[i].birth);
    Write('курс 1-5: ');
    ReadLn(students[i].kurs);
  end;
  WriteLn;  
  WriteLn('анкетные данные студентов:');
  for i := 1 to MaxStudents do
  begin
    WriteLn('студент ', i, ':');
    WriteLn('Ф.И.О.: ', students[i].fio);
    WriteLn('дата рождения: ', students[i].birth);
    WriteLn('курс: ', students[i].kurs);
  end;
end.
