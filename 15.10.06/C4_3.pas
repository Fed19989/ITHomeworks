program C4_3;

{
  �� ���� ��������� �������� ������������ ���������-�������� �������. ���� ���� �������� ������������� ������. 
  ��������� �������� ���������, ������� ����� �������� ������������������ �������� ���������� ���� ('a' 'b'... 'z') �� ������� ������������������ � ������ �� ����������. 
  ������ ������ ����������� � ���������� �������. ��������, ����� �� ���� �������� ��������� �������:
      fhb5kbf�shfm.
  � ���� ������ ��������� ������ �������
       b2
       f3
       h2
       k1
       m1
       s1
}

var
  a: array [97..122] of integer;
  c, g: char;
  m, i, n: integer;


begin
  repeat
    read(c);
    c := LowCase(c);
    if c in ['a'..'z'] then
      a[ord(c)] += 1;
  until c = '.';
  
  for i := 97 to 122 do 
   if a[i]<>0 then
   writeln(chr(i),a[i]);
 // g := chr(n);
 // g := UpCase(g);
  
end.