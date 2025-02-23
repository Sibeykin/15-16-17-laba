program ToysFileHandler;

type
  toy = record
    name: string;  
    price: real;  
    ageLimit: byte; 
  end;

var
  f: Text;
  toys: array[1..3] of toy;
  i: integer;

begin
  for i := 1 to 3 do
  begin
    Write('напиши название игрушки: ');
    ReadLn(toys[i].name);
    Write('напиши цену игрушки: ');
    ReadLn(toys[i].price);
    Write('напиши возрастное ограничение: ');
    ReadLn(toys[i].ageLimit);
  end;
  Assign(f, 'toys.txt');
  Rewrite(f);
  for i := 1 to 3 do
    WriteLn(f, toys[i].name, ' ', toys[i].price:0:2, ' ', toys[i].ageLimit);
  Close(f);
  WriteLn('сохраненно');

  Assign(f, 'toys.txt');
  Reset(f);
  WriteLn('считывание данных:');
  while not Eof(f) do
  begin
    ReadLn(f, toys[i].name, toys[i].price, toys[i].ageLimit);
    WriteLn('название: ', toys[i].name, ' |цена: ', toys[i].price:0:2, ' | возраст: ', toys[i].ageLimit);
  end;
  Close(f);
end.
