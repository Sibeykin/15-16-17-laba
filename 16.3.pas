program R163;
var
  numbers: array[1..10] of Integer;
  i: Integer;
begin
  for i := 1 to 10 do
    numbers[i] := i; 
  
  Write('список: ');
  for i := 1 to 10 do
    Write(numbers[i], ' ');
  Writeln;
  
  Write('четные: ');
  for i := 1 to 10 do
    if numbers[i] mod 2 = 0 then
      Write(numbers[i], ' ');
  Writeln;
end.
