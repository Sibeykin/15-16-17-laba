program R162;

var
  inputFile: Text;
  wordList: array of string;
  word: string;
  count, i: Integer;
  found: Boolean;
begin
  Assign(inputFile, '16.2.txt');
  Reset(inputFile);
  
  count := 0;
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, word);
    found := False;
    
    for i := 0 to count - 1 do
      if wordList[i] = word then
      begin
        found := True;
        Break;
      end;
    
    if not found then
    begin
      SetLength(wordList, count + 1);
      wordList[count] := word;
      count := count + 1;
    end;
  end;
  Close(inputFile);
  
  Writeln('количество слов: ', count);
end.
