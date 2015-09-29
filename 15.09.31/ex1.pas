program ex1;
//Дан текст. Определить, является ли он правильной записью целого числа.

var
  s: string;
  i: integer;
  b: boolean;

begin
  b := true;
  read(s);
  for i := 1 to Length(s) do 
    if not (s[i] in ['0'..'9']) then 
      b := false;
  write(b);
end.