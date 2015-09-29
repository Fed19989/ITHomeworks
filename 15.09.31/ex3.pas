program ex2;
//Дан текст. Найти максимальное из имеющихся в нем чисел.

var
  s: string;
  i, max: integer;

begin
  max := 0;
  read(s);
  for i := Length(s) downto 1 do 
    if (s[i] in ['0'..'9']) and (StrToInt(s[i]) > max) then 
      max := StrToInt(s[i]);
  write(max);
end.