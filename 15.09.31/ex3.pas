program ex3;
//ƒан текст. Ќайти максимальное из имеющихс€ в нем чисел.

var
  s: string;
  i: integer;

//GetMax возвращает наибольшее число, полученное из строки, содержащей только целые числа и пробелы.
function GetMax(s: string): integer;
begin
  //”бираем пробелы с конца строки.
  while s[Length(s)] = ' ' do
    Delete(s, Length(s), 1);
  //”бираем пробелы с начала строки.
  while s[1] = ' ' do
    Delete(s, 1, 1);
  
  //≈сли строка пуста€ или представл€ет собой пробел, возвращаем 0.
  if s in [' ', ''] then 
    Result := 0
  //»наче, если в строке есть пробел, возвращаем наибольшее значение, полученное сравнением между числом до пробела и числом, полученным применением описываемой функции к части строки после пробела. 
  else if Pos(' ', s) = 0 then
    Result := StrToInt(s) else
    Result := Max(StrToInt(Copy(s, 1, Pos(' ', s) - 1)), GetMax(Copy(s, Pos(' ', s) + 1, Length(s) - Pos(' ', s))));
end;

begin
  read(s);
  //¬ строке оставл€ем только числа и пробелы.
  for i := Length(s) downto 1 do
    if not (s[i] in ['0'..'9', ' ']) then
      Delete(s, i, 1);
      
  write(GetMax(s));
end.