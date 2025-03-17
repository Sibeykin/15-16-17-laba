program R162;

type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;

var
  Head, Temp, Current: PNode;
  i: Integer;

begin
  Head := nil;

  for i := 10 downto 1 do
  begin
    New(Temp);
    Temp^.Data := i;
    Temp^.Next := Head;
    Head := Temp;
  end;

  Writeln('список:');
  Current := Head;
  while Current <> nil do
  begin
    Write(Current^.Data, ' ');
    Current := Current^.Next;
  end;
  Writeln;

  Writeln('четные:');
  Current := Head;
  while Current <> nil do
  begin
    if (Current^.Data mod 2 = 0) then
      Write(Current^.Data, ' ');
    Current := Current^.Next;
  end;
  Writeln;
end.
