program R163;

type
  PNode = ^TNode;
  TNode = record
    Word: string;
    Count: Integer;
    Next: PNode;
  end;

var
  Head, Current, Temp, Prev: PNode;
  WordFromInput: string;

procedure AddWord(NewWord: string);
begin
  Current := Head;
  Prev := nil;

  while (Current <> nil) and (Current^.Word < NewWord) do
  begin
    Prev := Current;
    Current := Current^.Next;
  end;

  if (Current <> nil) and (Current^.Word = NewWord) then
    Inc(Current^.Count)
  else
  begin
    New(Temp);
    Temp^.Word := NewWord;
    Temp^.Count := 1;
    Temp^.Next := Current;

    if Prev = nil then
      Head := Temp
    else
      Prev^.Next := Temp;
  end;
end;

procedure PrintDictionary;
begin
  Current := Head;
  Writeln('количество слов:');
  while Current <> nil do
  begin
    Writeln(Current^.Word, ' - ', Current^.Count);
    Current := Current^.Next;
  end;
end;

begin
  Head := nil;
  Writeln('вводите слова:');

  repeat
    Readln(WordFromInput);
    if WordFromInput <> '' then AddWord(WordFromInput);
  until WordFromInput = '';

  PrintDictionary;
end.
