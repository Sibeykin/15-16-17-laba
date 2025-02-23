program LinkedListMinMax;

type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;

var
  Head, Temp: PNode;
  i, MinValue, MaxValue: Integer;
begin
  Head := nil;
  for i := 1 to 20 do
  begin
    New(Temp);
    Temp^.Data := Random(100); 
    Temp^.Next := Head;
    Head := Temp;
  end;
  
  if Head <> nil then
  begin
    MinValue := Head^.Data;
    MaxValue := Head^.Data;
    Temp := Head;
    
    while Temp <> nil do
    begin
      if Temp^.Data < MinValue then
        MinValue := Temp^.Data;
      if Temp^.Data > MaxValue then
        MaxValue := Temp^.Data;
      Temp := Temp^.Next;
    end;
    
    Writeln('минимальный: ', MinValue);
    Writeln('максимальный: ', MaxValue);
  end;
end.
