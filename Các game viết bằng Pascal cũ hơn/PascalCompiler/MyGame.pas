program MyGame;
uses crt; 
var Button: char;
    Time, Money, test: text;
    Ngay, Thang, Nam: integer;
    Moneys, b, demT, demN: Integer;
    DanhSo, Moneyss: string; 
const a = 1;
procedure Info;
begin
  gotoxy(15,14);
  writeln('Game Online Dev Simulator');
end;
procedure MyName; 
var Name: string;
    TestName : String; 
    NameChar: text; 
begin
  assign(NameChar,'tennv.inp');
  reset(NameChar); 
  read(NameChar,TestName); 
  if length(TestName) = 1 then
  begin
    rewrite(NameChar); 
    gotoxy(15,14);
    writeln('Vui long nhap ten cong ty'); 
    gotoxy(23,15);
    read(Name);
    write(NameChar,Name); 
  end; 
  close(NameChar);
  clrscr;    
end; 
procedure Main; 
var NameChar, Time, Money, test: text;
    Ngay, Thang, Nam: integer; 
    Name: string;
    Moneyss: string;
    Moneys, a: integer; 
begin
  assign(NameChar,'tennv.inp');
  assign(Time,'NgayThangNam.inp');
  assign(Money,'money.inp');
  assign(test,'test.inp'); 
  reset(Money); 
  reset(NameChar);
  reset(Time);
  reset(test); 
  gotoxy(0,1); 
  write('Nhan H de xem chuc nang cac nut');
  gotoxy(40,1);
  read(Time,Ngay,Thang,Nam); 
  write(Ngay,'/',Thang,'/',Nam); 
  gotoxy(15,2);
  write('Game Online Dev Simulator');
  gotoxy(43,2);
  write('Ver Demo'); 
  gotoxy(23,3);
  read(NameChar,Name);
  close(NameChar);
  close(Time);
  write(Name);
  gotoxy(38,4);
  read(Money,Moneys,Moneyss); 
  write('Money : ',Moneys,Moneyss);
  read(test,a); 
  if a > 0 then
  begin
    gotoxy(5,6);
    write('Dang phat trien game...');
  end;
  close(test); 
  close(Money); 
end;
procedure Back; 
var Button : char;
    test : byte; 
begin
  test := 1;
  while test > 0
  do
  begin
    Button := readkey; 
    if button = 'q' then
    begin
      clrscr; 
      test := 0; 
    end;
  end; 
end; 
procedure Buttons;
var Button: char;
begin
  gotoxy(10,10);
  write('Nhan Q De Quay Lai');
  gotoxy(10,11);
  write('Nhan M De Phat Trien Game Moi'); 
  gotoxy(10,12);
  write('Nhan N De Qua 1 Ngay');
  gotoxy(10,13);
  write('Nhan T De Qua 1 Thang');
  gotoxy(10,14);
  write('Nhan Y De Qua 1 Nam');
  Back;
  Main;   
end; 
begin
  clrscr;
  assign(Time,'NgayThangNam.inp');
  assign(Money,'money.inp');
  assign(test,'test.inp'); 
  delay(1000);
  Info;
  delay(5000);
  MyName;
  Main;
  b := 0;
  demT := 0;
  demN := 0;
  while a>0
  do
  begin
    reset(Time);
    read(Time,Ngay,Thang,Nam);
    reset(money);
    read(Money,Moneys,Moneyss); 
    rewrite(test);
    if b = 1 then
    begin
      write(test,b);
      clrscr; 
      Main; 
    end
    else write(test,b); 
    if demT = 6 then
    begin
      b := 0;
      clrscr; 
      Main; 
      gotoxy(5,6);
      write('Game da hoan thanh sau 6 thang'); 
      delay(5000);
      clrscr; 
      Main; 
      gotoxy(5,6);
      DanhSo := '1 Tr'; 
      write('Danh So Ban Ra : ',DanhSo); 
      Moneys := Moneys + 1;
      Moneyss := 'Tr'; 
      rewrite(test); 
      rewrite(Money);
      write(money,moneys,' ',moneyss);
      write(test,b);
      delay(5000);
      clrscr; 
      Main; 
      demT := 0;
      demN := 0;
    end; 
    Button := readkey;
    if button = 'm' then
    begin
      b := 1;
    end; 
    if button = 'h' then
    begin
      clrscr; 
      Buttons;
    end;
    if button = 'n' then
    begin
      Ngay := Ngay + 1;
      if b = 1 then
      demN := demN + 1;
      if demN = 30 then
      begin
        demT := demT + 1;
        demN := 0;
      end;
      if demT = 6 then
      b := 0; 
      if ngay = 30 then
      begin
        Thang := Thang + 1;
        Ngay := 1;
      end; 
    end; 
    if button = 't' then
    begin
      Thang := Thang + 1;
      if b = 1 then
      demT := demT + 1;
      if demT = 6 then
      b := 0;
      if thang = 12 then
      begin
        Nam := Nam + 1;
        Thang := 1;
      end;
    end;
    if button = 'y' then
      Nam := Nam + 1; 
    if (button = 'n') or (button = 't') or (button = 'y') then
    begin
    rewrite(Time);
    write(Time,Ngay,' ',Thang,' ',Nam);
    Main;
    end;
  end;
  close(test);
  close(Time); 
  readln;
end.
