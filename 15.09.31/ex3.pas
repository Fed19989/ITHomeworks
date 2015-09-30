program ex3;
//��� �����. ����� ������������ �� ��������� � ��� �����.

var
  s: string;
  i: integer;

//GetMax ���������� ���������� �����, ���������� �� ������, ���������� ������ ����� ����� � �������.
function GetMax(s: string): integer;
begin
  //������� ������� � ����� ������.
  while s[Length(s)] = ' ' do
    Delete(s, Length(s), 1);
  //������� ������� � ������ ������.
  while s[1] = ' ' do
    Delete(s, 1, 1);
  
  //���� ������ ������ ��� ������������ ����� ������, ���������� 0.
  if s in [' ', ''] then 
    Result := 0
  //�����, ���� � ������ ���� ������, ���������� ���������� ��������, ���������� ���������� ����� ������ �� ������� � ������, ���������� ����������� ����������� ������� � ����� ������ ����� �������. 
  else if Pos(' ', s) = 0 then
    Result := StrToInt(s) else
    Result := Max(StrToInt(Copy(s, 1, Pos(' ', s) - 1)), GetMax(Copy(s, Pos(' ', s) + 1, Length(s) - Pos(' ', s))));
end;

begin
  read(s);
  //� ������ ��������� ������ ����� � �������.
  for i := Length(s) downto 1 do
    if not (s[i] in ['0'..'9', ' ']) then
      Delete(s, i, 1);
      
  write(GetMax(s));
end.