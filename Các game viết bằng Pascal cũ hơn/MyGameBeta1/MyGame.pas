program MyGame;
uses crt; 
var Button: char;
    Time, NameGame, Money, TrangThai: text;
    ThietKe, PhatTrienGame, Fan, Update: text;
    Ngay, Thang, Nam, Fans, Download, Play: integer; 
    dk, test, a, b, dkxd, tests, dkxds, demt: integer;
    tkdh, tknv, tkat, tktg, tg, tgs, ptg, dem, tt: integer;
    demtime, updates: integer;
    Moneys: real;
    NameGames, Moneyss: string;
procedure Intro1;
begin
  gotoxy(15,14);
  writeln('Game Online Dev Simulator');
end;
procedure Intro2;
begin
  clrscr;
  gotoxy(22,14);
  writeln('By VinhCK');
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
    writeln('Vui Lòng Nhập Tên Công Ty'); 
    gotoxy(23,15);
    read(Name);
    write(NameChar,Name); 
  end; 
  close(NameChar);
  clrscr;    
end; 
procedure Main; 
var NameChar, Time, Money, TrangThai, ThietKe, PhatTrienGame: text;
    Ngay, Thang, Nam, testtt, tkdh, tknv, tkat, tktg, tg: integer; 
    a, b, tgs: integer;
    Name: string;    
    Moneyss: string;
    Moneys: real; 
begin
  assign(NameChar,'tennv.inp');
  assign(Time,'NgayThangNam.inp');
  assign(Money,'money.inp');
  assign(TrangThai,'trangthai.inp');
  assign(ThietKe,'game.inp');
  assign(PhatTrienGame,'phattriengame.inp');
  reset(PhatTrienGame);
  reset(ThietKe);
  read(PhatTrienGame,a,b,tg);
  read(ThietKe,tkdh,tknv,tkat,tktg);
  reset(TrangThai);
  reset(Money); 
  reset(NameChar);
  reset(Time); 
  gotoxy(0,1); 
  write('Nhấn S Để Vào Cài Đặt');
  gotoxy(40,1);
  read(Time,Ngay,Thang,Nam); 
  write(Ngay,'/',Thang,'/',Nam); 
  gotoxy(15,2);
  write('Game Online Dev Simulator');
  gotoxy(43,2);
  write('Ver Beta1'); 
  gotoxy(23,3);
  read(NameChar,Name);
  close(NameChar);
  close(Time);
  write(Name);
  gotoxy(30,4);
  read(Money,Moneys,Moneyss); 
  write('Tiền : ',Moneys:0:3,Moneyss);
  close(Money);
  gotoxy(0,6);
  read(TrangThai,testtt);
  write('Trạng Thái: ');
  if testtt = 0 then
  write('Rảnh Rỗi');
  if testtt = 1 then
  begin
    if tg = 0 then
    begin
      tgs := (tkdh + tknv + tkat + tktg) * 10;
      write('Đang Phát Triển Game');
      write(' (',tgs,' Ngày)');
    end
    else
    begin
      write('Đang Phát Triển Game');
      write(' (',tg,' Ngày)');
    end;
  end;
  if testtt = 2 then
  begin
    if tg = 0 then
    begin
      tgs := (tkdh + tknv + tkat + tktg) * 5;
      write('Đang Cập Nhật Game');
      write(' (',tgs,' Ngày)');
    end
    else
    begin
      write('Đang Cập Nhật Game');
      write(' (',tg,' Ngày)');
    end;
  end;
  if testtt = 3 then
  write('Đang Cập Nhật Event');
  if testtt = 4 then
  write('Đang Tạo Quảng Cáo');
  close(TrangThai); 
  close(PhatTrienGame);
end;
procedure Back; 
var Button : char;
    test: byte; 
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
procedure ThongTin;
var NameGame, NenTang, TheLoai, ChuDe, PhatTrienGame: text; 
    Fan, ThietKe: text;
    NameGames, NenTangs, TheLoais, ChuDes: string;
    ng, nt, tl, cd, tt, ptg, Fans, Download, Play: integer;
    test: integer;
    Button: char;
begin
  clrscr;
  assign(TheLoai,'theloaigame.inp');
  assign(NenTang,'nentanggame.inp');
  assign(ChuDe,'chudegame.inp');
  assign(NameGame,'tengame.inp');
  assign(PhatTrienGame,'phattriengame.inp');
  assign(Fan,'fan.inp');
  assign(ThietKe,'game.inp');
  reset(PhatTrienGame);
  reset(TheLoai);
  reset(NenTang);
  reset(ChuDe);
  reset(NameGame);
  reset(Fan);
  read(PhatTrienGame,ptg,tt);
  read(TheLoai,TheLoais);
  read(NenTang,NenTangs);
  read(ChuDe,ChuDes);
  read(NameGame,NameGames);
  read(Fan,Fans,Download,Play);
  close(TheLoai);
  close(NenTang);
  close(ChuDe);
  close(NameGame);
  close(PhatTrienGame);
  close(Fan);
  ng := length(NameGames);
  nt := length(NenTangs);
  tl := length(TheLoais);
  cd := length(ChuDes);
  if (ng > 1) and (nt > 1) and (tl > 1) and (cd > 1) and (tt = 1) then
  begin
    gotoxy(5,5);
    write('Thông Tin Game Đang Phát Hành');
    gotoxy(5,7);
    write('Tên Game: ',NameGames);
    gotoxy(5,9);
    write('Thể Loại: ',TheLoais);
    gotoxy(5,11);
    write('Chủ Đề: ',ChuDes);
    gotoxy(5,13);
    write('Phát Hành Trên: ',NenTangs);
    gotoxy(5,15);
    write('Độ Nổi Tiếng: ',Fans);
    gotoxy(5,17);
    write('Lượt Tải Xuống: ',Download);
    gotoxy(5,19);
    write('Số Người Online Hôm Nay: ',Play);
    gotoxy(5,21);
    write('Nhấn P Để Ngừng Phát Hành Game');
    while test = 0 do
    begin
      Button := readkey;
      if button = 'p' then
      begin
        rewrite(PhatTrienGame);
        rewrite(TheLoai);
        rewrite(NenTang);
        rewrite(ChuDe);
        rewrite(NameGame);
        rewrite(Fan);
        rewrite(ThietKe);
        write(PhatTrienGame,0,' ',0,' ',0);
        write(TheLoai,' ');
        write(NenTang,' ');
        write(ChuDe,' ');
        write(NameGame,' ');
        write(Fan,0,' ',0,' ',0,' ',0);
        write(ThietKe,0,' ',0,' ',0,' ',0,' ',0);
        close(TheLoai);
        close(NenTang);
        close(ChuDe);
        close(NameGame);
        close(PhatTrienGame);
        close(Fan);
        close(ThietKe);
        clrscr;
        Main;
        test := 1;
      end;
      if Button = 'q' then
      begin
        clrscr;
        Main;
        test := 1;
      end;  
    end;
  end
  else 
  begin
    gotoxy(10,14);
    write('Chưa Có Game Nào Được Phát Hành');
    Back;
    Main;
  end;
end;
procedure Buttons;
var Button: char;
begin
  clrscr;
  gotoxy(9,10);
  write('Nhấn Q Để Quay Lại');
  gotoxy(9,12);
  write('Nhấn M Để Chọn Chức Năng Game'); 
  gotoxy(9,14);
  write('Nhấn N Để Qua 1 Ngày');
  gotoxy(9,16);
  write('Nhấn I Để Xem Thông Tin Game Đang Phát Hành');
  Back;
  Main;  
end;
procedure Reset;
var NameChar, Time, NameGame, Money, TrangThai: text;
    NenTang, TheLoai, ChuDe, ThietKe, PhatTrienGame: text;
    Fan, Update: text;
begin
  assign(NameChar,'tennv.inp');
  assign(Time,'NgayThangNam.inp');
  assign(NameGame,'tengame.inp');
  assign(Money,'money.inp');
  assign(TheLoai,'theloaigame.inp');
  assign(NenTang,'nentanggame.inp');
  assign(ChuDe,'chudegame.inp');
  assign(ThietKe,'game.inp');
  assign(TrangThai,'trangthai.inp');
  assign(PhatTrienGame,'phattriengame.inp');
  assign(Fan,'fan.inp');
  assign(Update,'update.inp');
  rewrite(Time);
  rewrite(NameChar);
  rewrite(Time);
  rewrite(NameGame);
  rewrite(Money);
  rewrite(TheLoai);
  rewrite(NenTang);
  rewrite(ChuDe);
  rewrite(ThietKe);
  rewrite(TrangThai);
  rewrite(PhatTrienGame);
  rewrite(Fan);
  rewrite(Update);
  write(NameChar,' ');
  write(Time,1,' ',1,' ',1,' ',0);
  write(NameGame,' ');
  write(Money,10,' Tr');
  write(TheLoai,' ');
  write(NenTang,' ');
  write(ChuDe,' ');
  write(ThietKe,0,' ',0,' ',0,' ',0,' ',0);
  write(TrangThai,0);
  write(PhatTrienGame,0,' ',0,' ',0);
  write(Fan,0,' ',0,' ',0,' ',0);
  write(Update,0);
  close(NameChar);
  close(Time);
  close(NameGame);
  close(Money);
  close(TheLoai);
  close(NenTang);
  close(ChuDe);
  close(ThietKe);
  close(TrangThai);
  close(PhatTrienGame);
  close(Fan);
  close(Update);
end;
procedure GameOver;
const i = 1; 
begin
  clrscr;
  while i > 0 do
  begin
    gotoxy(22,14);
    write('GAME OVER');
    gotoxy(18,15);
    write('Bạn Đã Bị Phá Sản');
    gotoxy(17,17);
    write('Thoát Ra Để Chơi Lại');
    Reset;
    Readln;
  end;
end;
procedure MoneyGame;
var Money: text;
    Moneys: real;
    Moneyss: string;
    dk: byte;
begin
  assign(Money,'money.inp');
  reset(Money);
  read(Money,Moneys,Moneyss);
  close(Money);
  rewrite(Money);
  dk := 1;
  if (Moneys > 1000) and (Moneyss = ' Tr') then
  begin
    Moneys := Moneys / 1000;
    Moneyss := 'T';
    write(Money,Moneys,' ',Moneyss);
    dk := 0;
  end;
  if (Moneys < 1) and (Moneyss = ' T') then
  begin
    Moneys := Moneys * 1000;
    Moneyss := 'Tr';
    write(Money,Moneys,' ',Moneyss);
    dk := 0;
  end;
  if (Moneys < 0) and (Moneyss = ' Tr') then
  begin
    GameOver;
    dk := 0;
  end;
  if dk = 1 then
  write(Money,Moneys,Moneyss);
end;
procedure MakeGame5;
var ThietKe, Money, NameGame, NenTang: text;
    TrangThai, PhatTrienGame, Fan: text;
    tkdh, tkat, tknv, tktg: integer;
    test, test2, Fans: integer;
    cppts, Moneyss, gtnt: string;
    Button: char;
    cppt, Moneys: real;
begin
  test2 := 1;
  repeat
  begin
    clrscr;
    assign(ThietKe,'game.inp');
    assign(Money,'money.inp');
    assign(NenTang,'nentanggame.inp');
    assign(NameGame,'tengame.inp');
    assign(TrangThai,'trangthai.inp');
    assign(PhatTrienGame,'phattriengame.inp');
    assign(Fan,'fan.inp');
    reset(Fan);
    reset(ThietKe);
    reset(NenTang);
    reset(Money);
    read(Fan,Fans);
    read(Money,Moneys,Moneyss);
    read(ThietKe,tkdh,tknv,tkat,tktg,cppt);
    read(NenTang,gtnt);
    close(NenTang);
    close(Money);
    close(Fan);
    test := 1;
    while cppt = 0 
    do
    begin
      if gtnt = 'Android' then
      begin
        cppt := 1;
        Fans := 1000;
      end;
      if gtnt = 'Ios' then
      begin
        cppt := 1;
        Fans := 1000;
      end;
      if gtnt = 'AAI' then
      begin
        cppt := 2;
        Fans := 2000;
      end;
      if gtnt = 'Windows' then
      begin
        cppt := 5;
        Fans := 5000;
      end;
      if gtnt = 'Ps4' then
      begin
        cppt := 10;
        Fans := 10000;
      end;
      if gtnt = 'Ps5' then
      begin
        cppt := 25;
        Fans := 25000;
      end;
      if gtnt = 'NS' then
      begin
        cppt := 10;
        Fans := 10000;
      end;
      if gtnt = 'XO' then
      begin
        cppt := 20;
        Fans := 20000;
      end;
    end;
    gotoxy(5,3);
    write('Tùy Chọn Điểm Thiết Kế Game');
    gotoxy(5,5);
    write('Điểm Càng Cao Thì Càng Hay Và Đẹp');
    gotoxy(5,7);
    write('Nhưng Điểm Càng Cao Càng Tốn Nhiều Chi Phí'); 
    gotoxy(45,9);
    write('R Reset');
    gotoxy(2,11);
    write('A Thiết Kế Đồ Hoạ: ',tkdh);
    gotoxy(27,11);
    write('C Thiết Kế Âm Thanh: ',tkat);
    gotoxy(2,13);
    write('B Thiết Kế Nhân Vật: ',tknv);
    gotoxy(27,13);
    write('D Thiết Kế Thế Giới: ',tktg);
    gotoxy(11,16);
    write('Tổng Chi Phí Phát Triển: ',cppt,' Tr');
    gotoxy(15,18);
    write('Y Đồng Ý');
    gotoxy(26,18);
    write('N Hủy Bỏ');
    close(ThietKe);
    while test > 0 
    do 
    begin
      rewrite(ThietKe);
      Button := readkey;
      if button = 'a' then
      if tkdh < 10 then
      begin
        tkdh := tkdh + 1;
        if tkdh < 3 then
        cppt := cppt + tkdh*4;
        if (tkdh < 5) and (tkdh > 2) then
        cppt := cppt + tkdh*8;
        if (tkdh < 7) and (tkdh > 4)then
        cppt := cppt + tkdh*16;
        if (tkdh < 9) and (tkdh > 6) then
        cppt := cppt + tkdh*32;
        if tkdh = 9 then
        cppt := cppt + tkdh*64;
        if tkdh = 10 then
        cppt := cppt + tkdh*128;
        write(ThietKe,tkdh,' ',tknv,' ',tkat,' ',tktg,' ',cppt);
        test2 := 0;
        test := 0;
      end;
      if button = 'b' then
      if tknv < 10 then
      begin
        tknv := tknv + 1;        
        if tknv < 3 then
        cppt := cppt + tknv*2;
        if (tknv < 5) and (tknv > 2) then
        cppt := cppt + tknv*4;
        if (tknv < 7) and (tknv > 4)then
        cppt := cppt + tknv*8;
        if (tknv < 9) and (tknv > 6) then
        cppt := cppt + tknv*16;
        if tknv = 9 then
        cppt := cppt + tknv*32;
        if tknv = 10 then
        cppt := cppt + tknv*64;
        write(ThietKe,tkdh,' ',tknv,' ',tkat,' ',tktg,' ',cppt);
        test2 := 0;
        test := 0;
      end;
      if button = 'c' then
      if tkat < 10 then
      begin
        tkat := tkat + 1;        
        if tkat < 3 then
        cppt := cppt + tkat*2;
        if (tkat < 5) and (tkat > 2) then
        cppt := cppt + tkat*4;
        if (tkat < 7) and (tkat > 4)then
        cppt := cppt + tkat*8;
        if (tkat < 9) and (tkat > 6) then
        cppt := cppt + tkat*16;
        if tkat = 9 then
        cppt := cppt + tkat*32;
        if tkat = 10 then
        cppt := cppt + tkat*64;
        write(ThietKe,tkdh,' ',tknv,' ',tkat,' ',tktg,' ',cppt);
        test2 := 0;
        test := 0;
      end;
      if button = 'd' then
      if tktg < 10 then
      begin
        tktg := tktg + 1;       
        if tktg < 3 then
        cppt := cppt + tktg*4;
        if (tktg < 5) and (tktg > 2) then
        cppt := cppt + tktg*8;
        if (tktg < 7) and (tktg > 4)then
        cppt := cppt + tktg*16;
        if (tktg < 9) and (tktg > 6) then
        cppt := cppt + tktg*32;
        if tktg = 9 then
        cppt := cppt + tktg*64;
        if tktg = 10 then
        cppt := cppt + tktg*128;
        write(ThietKe,tkdh,' ',tknv,' ',tkat,' ',tktg,' ',cppt);
        test2 := 0;
        test := 0;
      end;
      if button = 'r' then
      begin
        write(ThietKe,0,' ',0,' ',0,' ',0,' ',0,' Tr');
        test2 := 0;
        test := 0;
      end;
      if button = 'y' then
      begin
        if Moneyss = ' Tr' then
        Moneys := Moneys - cppt;
        if Moneyss = ' T' then
        Moneys := Moneys - (cppt/1000);
        rewrite(Money);
        write(Money,Moneys,Moneyss);
        close(Money);
        Fans := Fans + (tkdh + tknv + tkat + tktg) * 10000;
        if (tkdh > 4) and (tknv > 4) and (tkat > 4) and (tktg > 4) then
        Fans := Fans + ((tkdh + tknv + tkat + tktg) * 10000) * 10;
        if (tkdh > 7) and (tknv > 7) and (tkat > 7) and (tktg > 7) then
        Fans := Fans + ((tkdh* + tknv + tkat + tktg) * 10000) * 20;
        if (tkdh > 9) and (tknv > 9) and (tkat > 9) and (tktg > 9) then
        Fans := Fans + ((tkdh + tknv + tkat + tktg) * 10000) * 50;
        write(ThietKe,tkdh,' ',tknv,' ',tkat,' ',tktg,' ',cppt);
        test := 0;
        test2 := 1;
        if (tkdh + tknv + tkat + tktg) = 0 then
        Fans := Fans + 1000;
        rewrite(Fan);
        write(Fan,Fans,' ',0,' ',0,' ',0);
        close(Fan);
        rewrite(TrangThai);
        write(TrangThai,1);
        close(TrangThai);
        rewrite(PhatTrienGame);
        write(PhatTrienGame,1,' ',0,' ',0);
        close(PhatTrienGame);
        clrscr;
        Main;
      end;
      if button = 'n' then
      begin
        rewrite(NameGame);
        write(NameGame,' ');
        close(NameGame);
        write(ThietKe,0,' ',0,' ',0,' ',0,' ',0);
        test := 0;
        test2 := 1;
        clrscr;
        Main;
      end;      
    close(ThietKe);
    end;
  end;
  until test2 > 0;
end;
procedure MakeGame4;
var NenTang: text;
    CNT: string;
    test: integer;
begin
  clrscr;
  test := 1;
  assign(NenTang,'nentanggame.inp');
  rewrite(NenTang);
  gotoxy(10,10);
  write('Chọn Hệ Điều Hành Để Phát Triển Game');
  gotoxy(10,12);
  write('A Android Chi Phí: 1 Tr');
  gotoxy(10,14);
  write('B Ios Chi Phí: 1 Tr');
  gotoxy(10,16);
  write('C AAI (Android And Ios) Chi Phí: 2 Tr');
  gotoxy(10,18);
  write('D Windows Chi Phí: 5 Tr');
  gotoxy(10,20);
  write('E Ps4 Chi Phí: 10 Tr');
  gotoxy(10,22);
  write('F Ps5 Chi Phí: 25 Tr');
  gotoxy(10,24);
  write('G NS (Nidento Switch) Chi Phí: 10 Tr');
  gotoxy(10,26);
  write('H XO (Xbox One) Chi Phí: 20 Tr');
  while test > 0
  do 
  begin
    Button := readkey;
    if Button = 'a' then
    begin
      CNT := 'Android';
      write(NenTang,CNT);
      test := 0;
    end;
    if Button = 'b' then
    begin
      CNT := 'Ios';
      write(NenTang,CNT);
      test := 0;
    end;   
    if Button = 'c' then
    begin
      CNT := 'AAI';
      write(NenTang,CNT);
      test := 0;
    end;
    if Button = 'd' then
    begin
      CNT := 'Windows';
      write(NenTang,CNT);
      test := 0;
    end;
    if Button = 'e' then
    begin
      CNT := 'Ps4';
      write(NenTang,CNT);
      test := 0;
    end;
    if Button = 'f' then
    begin
      CNT := 'Ps5';
      write(NenTang,CNT);
      test := 0;
    end;
    if Button = 'g' then
    begin
      CNT := 'NS';
      write(NenTang,CNT);
      test := 0;
    end; 
    if Button = 'h' then
    begin
      CNT := 'XO';
      write(NenTang,CNT);
      test := 0;
    end; 
  end;
  close(NenTang);
  MakeGame5;
end;
procedure MakeGame3;
var NameGame: text;
    NameGames : string;
begin
  clrscr;
  assign(NameGame,'tengame.inp');
  rewrite(NameGame);
  gotoxy(18,14);
  writeln('Nhập Tên Game');
  gotoxy(20,15);
  read(NameGames);
  write(NameGame,NameGames);
  close(NameGame);
  MakeGame4;
end;
procedure MakeGame2;
var ChuDe: text;
    CDC, Button: string;
    test: integer;
begin
  clrscr;
  assign(ChuDe,'chudegame.inp');
  rewrite(ChuDe);
  test:= 1;
  gotoxy(10,10);
  write('Chọn Chủ Đề Chính');
  gotoxy(10,12);
  write('A Fantasy');
  gotoxy(10,14);
  write('B Hero');
  gotoxy(10,16);
  write('C War');
  gotoxy(10,18);
  write('D Football');
  gotoxy(10,20);
  write('E City');
  gotoxy(10,22);
  write('F Modern');
  gotoxy(10,24);
  write('G HAS (Hide And Seek)');
  gotoxy(10,26);
  write('H Life');
  while test > 0
  do 
  begin
    Button := readkey;
    if Button = 'a' then
    begin
      CDC := 'Fantasy';
      write(ChuDe,CDC);
      test := 0;
    end;
    if Button = 'b' then
    begin
      CDC := 'Hero';
      write(ChuDe,CDC);
      test := 0;
    end; 
    if Button = 'c' then
    begin
      CDC := 'War';
      write(ChuDe,CDC);
      test := 0;
    end;
    if Button = 'd' then
    begin
      CDC := 'Football';
      write(ChuDe,CDC);
      test := 0;
    end;
    if Button = 'e' then
    begin
      CDC := 'City';
      write(ChuDe,CDC);
      test := 0;
    end;
    if Button = 'f' then
    begin
      CDC := 'Modern';
      write(ChuDe,CDC);
      test := 0;
    end; 
    if Button = 'g' then
    begin
      CDC := 'HAS';
      write(ChuDe,CDC);
      test := 0;
    end; 
    if Button = 'h' then
    begin
      CDC := 'Life';
      write(ChuDe,CDC);
      test := 0;
    end;
  end; 
  MakeGame3;
end;
procedure MakeGame1;
var TheLoai: text;
    TLC, Button: string;
    test: integer;
begin
  clrscr;
  assign(TheLoai,'theloaigame.inp');
  rewrite(TheLoai);
  test := 1;
  gotoxy(10,10);
  write('Chọn Thể Loại Chính');
  gotoxy(10,12);
  write('A MMORPG (Nhập Vai)');
  gotoxy(10,14);
  write('B MOBA (Hành Động)');
  gotoxy(10,16);
  write('C MMOFPS (Bắn Súng)');
  gotoxy(10,18);
  write('D MMOSG (Thể Thao)');
  gotoxy(10,20);
  write('E MMOR (Đua Xe)');
  gotoxy(10,22);
  write('F MMORG (Âm Nhạc)');
  gotoxy(10,24);
  write('G MMOPG (Giải Đố)');
  gotoxy(10,26);
  write('H MMOCG (Mô Phỏng)');
  while test > 0
  do 
  begin
    Button := readkey;
    if Button = 'a' then
    begin
      TLC := 'MMORPG';
      write(TheLoai,TLC);
      test := 0;
    end;
    if Button = 'b' then
    begin
      TLC := 'MOBA';
      write(TheLoai,TLC);
      test := 0;
    end; 
    if Button = 'c' then
    begin
      TLC := 'MMOFPS';
      write(TheLoai,TLC);
      test := 0;
    end;
    if Button = 'd' then
    begin
      TLC := 'MMOSG';
      write(TheLoai,TLC);
      test := 0;
    end;
    if Button = 'e' then
    begin
      TLC := 'MMOR';
      write(TheLoai,TLC);
      test := 0;
    end;
    if Button = 'f' then
    begin
      TLC := 'MMORG';
      write(TheLoai,TLC);
      test := 0;
    end; 
    if Button = 'g' then
    begin
      TLC := 'MMOPG';
      write(TheLoai,TLC);
      test := 0;
    end; 
    if Button = 'h' then
    begin
      TLC := 'MMOCG';
      write(TheLoai,TLC);
      test := 0;
    end;
  end; 
  MakeGame2;
end; 
procedure UpdateGame;
var PhatTrienGame, Money, Update, TrangThai: text;
    tf: char;
    test :integer;
    Button: integer;
    Moneyss: string;
    Moneys: real;
begin
  test := 1;
  tf := ' ';
  assign(PhatTrienGame,'phattriengame.inp');
  assign(Money,'money.inp');
  assign(Update,'update.inp');
  assign(TrangThai,'trangthai.inp');
  reset(Money);
  read(Money,Moneys,Moneyss);
  close(Money);
  while test > 0 do
  begin
    if tf = '+' then
    tf := '+'
    else
    tf := '-';   
    gotoxy(10,10);
    write('Chọn Tính Năng Để Cập Nhật Vào Game');
    gotoxy(10,12);
    write('A Thêm Map Mới: ',tf,' (1 Tr)');
    gotoxy(10,14);
    write('Nhấn Y Để Cập Nhật');
    Button := readkey;
    if button = 'a' then
    tf := '+';
    if button = 'y' then
    begin
      if tf = '+' then
      begin
        if Moneyss = ' Tr' then
        Moneys := Moneys - 1;
        if Moneyss = ' T' then
        Moneys := Moneys - 0.001;
        rewrite(Update);
        write(Update,1);
        close(Update);
        rewrite(Money);
        write(Money,Moneys,Moneyss);
        close(Money);
        rewrite(PhatTrienGame);
        write(PhatTrienGame,1,' ',1,' ',0);
        close(PhatTrienGame);
        rewrite(TrangThai);
        write(TrangThai,2);
        close(TrangThai);
      end;
      test := 0;
    end;
  end;
  clrscr;
  Main;
end;
begin
  assign(NameGame,'tengame.inp');
  assign(Time,'NgayThangNam.inp');
  assign(Money,'money.inp');
  assign(TrangThai,'trangthai.inp');
  assign(ThietKe,'game.inp');
  assign(PhatTrienGame,'phattriengame.inp');
  assign(Fan,'fan.inp');
  assign(Update,'update.inp');
  clrscr;
  b := 1;
  delay(1000);
  Intro1;
  delay(3000);
  Intro2;
  delay(3000);
  repeat
  begin
    MyName;
    Main;
    a := 1;
  while a > 0   
  do
  begin
    reset(Time);
    reset(NameGame);
    reset(Money);
    reset(ThietKe);
    reset(PhatTrienGame);
    reset(Fan);
    reset(Update);
    read(Update,updates);
    close(Update);
    read(Fan,Fans,Download,Play,demt);
    close(Fan);
    read(PhatTrienGame,ptg,tt,tg);
    close(PhatTrienGame);
    read(ThietKe,tkdh,tknv,tkat,tktg);
    close(ThietKe);
    read(Money,Moneys,Moneyss);
    close(Money);
    read(Time,Ngay,Thang,Nam,demtime);
    close(Time);
    read(NameGame,NameGames);
    close(NameGame);
    MoneyGame;
    Button := readkey;
    if button = 'm' then
    begin
      clrscr;
      dk := length(NameGames);
      if dk > 1 then 
      begin
        gotoxy(10,10);
        writeln('A Cập Nhật Game');
        gotoxy(10,12);
        writeln('B Cập Nhật Event');
        gotoxy(10,14);
        writeln('C Quảng Cáo');
        test := 1;
        while test > 0
        do
        begin
          Button := readkey; 
          if (button = 'q') or (button = 'a') or (button = 'b') or (button = 'c') then
          begin
            clrscr; 
            test := 0;
            if button = 'q' then
            Main; 
          end;
        end; 
      end
      else
      begin
        gotoxy(10,10);
        writeln('A Phát Triển Game Mới');
        test := 1;
        while test > 0
        do
        begin
          Button := readkey; 
          if (button = 'q') or (button = 'a') then
          begin
            clrscr; 
            test := 0;
            if button = 'q' then
            Main;
          end;
        end; 
      end;
      if button = 'a' then
        begin
          clrscr;
          if dk > 1 then
          UpdateGame
          else
          MakeGame1;
        end; 
      if button = 'b' then
      begin
      Main;  
      end;
      if button = 'c' then 
      begin
      Main; 
      end;
    end;
    if button = 'n' then
    begin   
      Ngay := Ngay + 1;
      demtime := demtime + 1;
      if tt = 1 then
      begin
        demt := demt +1;
        if (demt > 7) and (demt < 31) then
        Fans := trunc(Fans*99.9/100);
        if (demt > 30) and (demt < 331) then
        Fans := trunc(Fans*99.8/100);
        if demt > 330 then
        Fans := trunc(Fans*99.5/100);
        if demt < 11 then
        Download := Download + Fans;
        if (demt < 31) and (demt > 10)then
        Download := Download + trunc(Fans/8);
        if (demt > 30) and (demt < 331) then
        Download := Download + trunc(Fans/16);
        if demt > 330 then
        Download := Download + trunc(Fans/32); 
        if demt < 2 then
        Play := Play + Fans;
        if (demt > 1) and (demt < 8) then
        Play := Play + trunc(Fans/32);
        if (demt > 7) and (demt < 31) then
        Play := Play + trunc(Fans/64);
        if (demt > 30) and (demt < 331) then
        Play := Play + trunc(Fans/128);
        if demt > 330 then
        Play := Play + trunc(Fans/256);
        if Moneyss = ' Tr' then
        begin
          if demt < 8 then 
          Moneys := Moneys + ((Play*30/100)*50)/1000000;
          if (demt > 7) and (demt < 31) then
          Moneys := Moneys + ((Play*15/100)*50)/1000000;
          if (demt > 30) and (demt < 331) then
          Moneys := Moneys + ((Play*5/100)*50)/1000000;
          if demt > 330 then
          Moneys := Moneys + ((Play*1/100)*50)/1000000;
        end;
        if Moneyss = ' T' then
        begin
          if demt < 8 then
          Moneys := Moneys + ((Play*30/100)*50)/1000000000;
          if (demt > 7) and (demt < 31) then
          Moneys := Moneys + ((Play*15/100)*50)/1000000000;
          if (demt > 30) and (demt < 331) then
          Moneys := Moneys + ((Play*5/100)*50)/1000000000;
          if demt > 330 then
          Moneys := Moneys + ((Play*1/100)*50)/1000000000;
        end;
        rewrite(Money);
        write(Money,Moneys,Moneyss);
        close(Money);
        rewrite(Fan);
        write(Fan,Fans,' ',Download,' ',Play,' ',demt);
        close(Fan);
      end;  
      if ptg = 1 then
      begin
        if updates = 0 then
        tgs := (tkdh + tknv + tkat + tktg) * 10
        else tgs := (tkdh + tknv + tkat + tktg) * 5;
        dem := dem + 1;
        if (tg < tgs) and (tg <> 0)then
        tg := tg - 1;
        if tg = 0 then
        tg := tgs - 1;
        rewrite(PhatTrienGame);
        if updates = 0 then
        write(PhatTrienGame,1,' ',0,' ',tg)
        else write(PhatTrienGame,1,' ',1,' ',tg);
        close(PhatTrienGame);
        if (dem = tgs) or (tgs = 0) then
        begin
            rewrite(TrangThai);
            write(TrangThai,0);
            close(TrangThai);
            rewrite(PhatTrienGame);
            write(PhatTrienGame,0,' ',1,' ',0);
            close(PhatTrienGame);
            dem := 0;
          if updates = 1 then
          begin
            Fans := Fans + 1000;
            rewrite(Fan);
            write(Fan,Fans,' ',Download,' ',Play,' ',demt);
            close(Fan);
            rewrite(Update);
            write(Update,0);
            close(Update);
          end;
          clrscr;
          Main;
        end;
      end;
      if ngay = 31 then
      begin
        if demtime < 181 then
        begin
          if Moneyss = ' Tr' then
          Moneys := Moneys - 1;
          if Moneyss = ' T' then
          Moneys := Moneys - 0.001;
        end;
        if (demtime > 180) and (demtime < 361) then
        begin
          if Moneyss = ' Tr' then
          Moneys := Moneys - 5;
          if Moneyss = ' T' then
          Moneys := Moneys - 0.005;
        end;
        if (demtime > 360) and (demtime < 721) then
        begin
          if Moneyss = ' Tr' then
          Moneys := Moneys - 10;
          if Moneyss = ' T' then
          Moneys := Moneys - 0.01;
        end;
        if (demtime > 720) and (demtime < 1801) then
        begin
          if Moneyss = ' Tr' then
          Moneys := Moneys - 20;
          if Moneyss = ' T' then
          Moneys := Moneys - 0.02;
        end;
        if demtime > 1800 then
        begin
          if Moneyss = ' Tr' then
          Moneys := Moneys - 50;
          if Moneyss = ' T' then
          Moneys := Moneys - 0.05;
        end;
        rewrite(Money);
        write(Money,Moneys,Moneyss);
        close(Money);
        Thang := Thang + 1;
        Ngay := 1;
          if thang = 13 then
          begin
            Nam := Nam + 1;
            Thang := 1;
          end;
      end;
    end;
    if button = 'n' then
    begin
      rewrite(Time);
      write(Time,Ngay,' ',Thang,' ',Nam,' ',demtime);
      close(time);
      Main;
    end;
    if button = 'i' then
    ThongTin;
    if button = 's' then
    begin
      clrscr;
      gotoxy(10,10);
      write('Cài Đặt');
      gotoxy(10,12);
      write('A Chơi Mới');
      gotoxy(10,14);
      write('B Thông Tin Chức Năng Các Nút Của Game');
      gotoxy(10,16);
      write('C Thoát');
      tests := 1;
      while tests > 0
      do
      begin
        Button := readkey;
        if button = 'q' then
        begin
          clrscr;
          Main;
          tests := 0;
        end;
        if button = 'a' then
        begin
          Reset;
          dkxd := 1;
          Main;
          tests := 0;  
        end;
        if button = 'b' then
        begin
          Buttons;
          tests := 0; 
        end;
        if button = 'c' then
        begin
          dkxds := 1;
          tests := 0;
        end;
      end;
      if (dkxd = 1) or (dkxds = 1) then
      a := 0;
    end; 
  end;
  if (dkxds = 0) then
  begin
    clrscr;
    b := 0;
  end
  else b := 1;
  end
  until b > 0;
end.
