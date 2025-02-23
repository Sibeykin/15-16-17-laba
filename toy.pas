program ToyStore;

type
  toy = record
    name: string;
    price: real;
    age: string;
  end;

const
  MaxToys = 3;

var
  toys: array[1..MaxToys] of toy;
  i: Integer;

begin
  for i := 1 to MaxToys do
  begin
    WriteLn('данные для игрушки:' , i);
    with toys[i] do
    begin
      Write('название: ');
      ReadLn(name);
      Write('цена: ');
      ReadLn(price);
      Write('возрастной диапазон: ');
      ReadLn(age);
    end;
  end;
  
  WriteLn;
  WriteLn('информация о игрушках находящиеся в продаже:');
  for i := 1 to MaxToys do
  begin
    with toys[i] do
    begin
      WriteLn('игрушка ', i, ':');
      WriteLn('название: ', name);
      WriteLn('цена: ', price:0:2, 'р');
      WriteLn('возрастной диапазон: ', age);
    end;
  end;
end.