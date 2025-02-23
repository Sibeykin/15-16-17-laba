program R17;
var
  inputFile, outputFile: Text;
  numbers: array of Integer;
  num, count, i: Integer;
begin
  Assign(inputFile, '1.txt');
  Reset(inputFile);
  
  count := 0;
  while not Eof(inputFile) do
  begin
    if not SeekEof(inputFile) then
    begin
      ReadLn(inputFile, num);
      SetLength(numbers, count + 1);
      numbers[count] := num;
      count := count + 1;
    end;
  end;
  Close(inputFile);
  
  Assign(outputFile, '2.txt');
  Rewrite(outputFile);
  
  for i := count - 1 downto 0 do
    WriteLn(outputFile, numbers[i]);
  
  Close(outputFile);
end.
