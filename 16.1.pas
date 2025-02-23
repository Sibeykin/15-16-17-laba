program P161;
var
  i: integer;
  i_ptr: ^integer;
begin
  i := 2;          
  i_ptr := @i;     
  writeln('значение i: ', i);
  writeln('значение i_ptr: ', i_ptr^);
end.
