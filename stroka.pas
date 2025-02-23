program stroka;

type
  t_chs = set of Char;

const
  lett: t_chs = ['a'..'z', 'A'..'Z', '_'];
  num: t_chs = ['0'..'9'];

var
  str: string;
  i: byte;
  flag: boolean;

begin
  Write('строка: ');
  ReadLn(str);
  
  if Length(str) = 0 then
  begin
    WriteLn('некорректная строка');
    Exit;
  end;
  
  flag := (str[1] in lett);
  
  if flag then
  begin
    for i := 2 to Length(str) do
    begin
      if not (str[i] in (lett + num)) then
      begin
        flag := False;
        Break;
      end;
    end;
  end;
  
  if flag then
    WriteLn('корректна')
  else
    WriteLn('некорректна');
end.
