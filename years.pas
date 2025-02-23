program years;

var
  n: Integer;

function GetYearSuffix(n: Integer): string;
begin
  if (n mod 100 >= 11) and (n mod 100 <= 14) then
    Result := 'лет'
  else if (n mod 10 = 1) then
    Result := 'год'
  else if (n mod 10 >= 2) and (n mod 10 <= 4) then
    Result := 'года'
  else
    Result := 'лет';
end;

begin
  Write('количество лет: ');
  ReadLn(n);
  WriteLn(n, ' ', GetYearSuffix(n));
end.
