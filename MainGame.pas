program MainGame;
uses crt;
var FileSaveNumber,LuuDuLieu: array [1..100] of int64;
    FileSaveString: array [1..100] of String;
    FileSaveStrings,FileSaveNumbers,LuuDuLieus: text;
    i,j,DiChuyen,KiemTra,i1: integer;
    Nut: char;
    TrangThai: String;
    PhiThang: int64;
procedure TheGioi;
begin
  if FileSaveNumber[4] >= FileSaveNumber[15] then
  begin 
    inc(FileSaveNumber[9]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[15];
    FileSaveNumber[15] := (FileSaveNumber[15] + 10)*3;
    FileSaveNumber[5] := FileSaveNumber[5] + 150;
    FileSaveNumber[8] := FileSaveNumber[8] + 100;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 100;
    FileSaveNumber[21] := 0;
  end; 
end;
procedure DoHoa;
begin
  if FileSaveNumber[4] >= FileSaveNumber[16] then
  begin 
    inc(FileSaveNumber[10]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[16];
    FileSaveNumber[16] := (FileSaveNumber[16] + 10)*10;
    FileSaveNumber[5] := FileSaveNumber[5] * 2;
    FileSaveNumber[8] := FileSaveNumber[8] * 2;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 500;
    FileSaveNumber[21] := 0;
  end; 
end;
procedure NPC;
begin
  if FileSaveNumber[4] >= FileSaveNumber[17] then
  begin 
    inc(FileSaveNumber[11]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[17];
    FileSaveNumber[17] := FileSaveNumber[17] + 100;
    FileSaveNumber[5] := FileSaveNumber[5] + 10;
    FileSaveNumber[8] := FileSaveNumber[8] + 10;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 20;
    FileSaveNumber[21] := 0;
  end; 
end;
procedure VatPham;
begin
  if FileSaveNumber[4] >= FileSaveNumber[18] then
  begin 
    inc(FileSaveNumber[12]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[18];
    FileSaveNumber[18] := FileSaveNumber[18] + 10;
    FileSaveNumber[5] := FileSaveNumber[5] + 1;
    FileSaveNumber[8] := FileSaveNumber[8] + 1;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 5;
    FileSaveNumber[21] := 0;
  end; 
end;
procedure CotTruyen;
begin
  if FileSaveNumber[4] >= FileSaveNumber[19] then
  begin 
    inc(FileSaveNumber[13]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[19];
    FileSaveNumber[19] := FileSaveNumber[19] + 100;
    FileSaveNumber[5] := FileSaveNumber[5] + 15;
    FileSaveNumber[8] := FileSaveNumber[8] + 50;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 50;
    FileSaveNumber[21] := 0;
  end; 
end;
procedure Boss;
begin
  if FileSaveNumber[4] >= FileSaveNumber[20] then
  begin 
    inc(FileSaveNumber[14]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[20];
    FileSaveNumber[20] := FileSaveNumber[20] + 500;
    FileSaveNumber[5] := FileSaveNumber[5] + 25;
    FileSaveNumber[8] := FileSaveNumber[8] + 50;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 100; 
    FileSaveNumber[21] := 0;
  end; 
end;
procedure NhanVat;
begin
  if FileSaveNumber[4] >= FileSaveNumber[31] then
  begin 
    inc(FileSaveNumber[29]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[31];
    FileSaveNumber[31] := FileSaveNumber[31] + 1000;
    FileSaveNumber[5] := FileSaveNumber[5] + 50;
    FileSaveNumber[8] := FileSaveNumber[8] + 100;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 100; 
    FileSaveNumber[21] := 0;
  end; 
end;
procedure Quai;
begin
  if FileSaveNumber[4] >= FileSaveNumber[32] then
  begin 
    inc(FileSaveNumber[30]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[32];
    FileSaveNumber[32] := FileSaveNumber[32] + 20;
    FileSaveNumber[5] := FileSaveNumber[5] + 5;
    FileSaveNumber[8] := FileSaveNumber[8] + 5;
    if FileSaveNumber[7] > 0 then
    FileSaveNumber[24] := FileSaveNumber[24] + 10; 
    FileSaveNumber[21] := 0;
  end; 
end;
procedure ChongHack;
begin
  if FileSaveNumber[4] >= FileSaveNumber[34] then
  begin 
    inc(FileSaveNumber[33]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[34];
    FileSaveNumber[34] := FileSaveNumber[34] + 10;
    FileSaveNumber[5] := FileSaveNumber[5] + 1;
  end; 
end;
procedure Dulieu;
begin
  if FileSaveNumber[4] >= FileSaveNumber[36] then
  begin 
    inc(FileSaveNumber[35]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[36];
    FileSaveNumber[36] := FileSaveNumber[36] + 20;
    FileSaveNumber[5] := FileSaveNumber[5] + 2;
  end; 
end;
procedure ToiUu;
begin
  if FileSaveNumber[4] >= FileSaveNumber[38] then
  begin 
    inc(FileSaveNumber[37]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[38];
    FileSaveNumber[38] := FileSaveNumber[38] + 50;
    FileSaveNumber[5] := FileSaveNumber[5] + 5;
  end; 
end;
procedure FixLoi;
begin
  if FileSaveNumber[4] >= FileSaveNumber[40] then
  begin 
    inc(FileSaveNumber[39]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[40];
    FileSaveNumber[40] := FileSaveNumber[40] + 100;
    FileSaveNumber[5] := FileSaveNumber[5] + 10;
  end; 
end;
procedure Mang;
begin
  if FileSaveNumber[4] >= FileSaveNumber[42] then
  begin 
    inc(FileSaveNumber[41]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[42];
    FileSaveNumber[42] := FileSaveNumber[42] + 500;
    FileSaveNumber[5] := FileSaveNumber[5] + 50;
  end; 
end;
procedure Tuongthich;
begin
  if FileSaveNumber[4] >= FileSaveNumber[44] then
  begin 
    inc(FileSaveNumber[43]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[44];
    FileSaveNumber[44] := FileSaveNumber[44] + 1000;
    FileSaveNumber[5] := FileSaveNumber[5] + 100;
  end; 
end;
procedure Lag;
begin
  if FileSaveNumber[4] >= FileSaveNumber[46] then
  begin 
    inc(FileSaveNumber[45]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[46];
    FileSaveNumber[46] := FileSaveNumber[46] + 5000;
    FileSaveNumber[5] := FileSaveNumber[5] + 500;
  end; 
end;
procedure DaNenTang;
begin
  if FileSaveNumber[4] >= FileSaveNumber[48] then
  begin 
    inc(FileSaveNumber[47]);
    FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[48];
    FileSaveNumber[48] := FileSaveNumber[48] + 50000;
    FileSaveNumber[5] := FileSaveNumber[5] + 5000;
  end; 
end;
procedure HDFixLoi;
begin  
  j := 1;
  Dichuyen := 0;
  clrscr;
  FileSaveNumber[23] := 2;
  FileSaveNumber[24] := 30;
  LuuDuLieu[41] := 100;
  FileSaveString[3] := 'Đang_Xử_Lý_Hợp_Đồng...';
end;
procedure HDKiemTra;
begin  
  j := 1;
  Dichuyen := 0;
  clrscr;
  FileSaveNumber[23] := 2;
  FileSaveNumber[24] := 30;
  LuuDuLieu[41] := 150;
  FileSaveString[3] := 'Đang_Xử_Lý_Hợp_Đồng...';
end;
procedure HDChayThu;
begin  
  j := 1;
  Dichuyen := 0;
  clrscr;
  FileSaveNumber[23] := 2;
  FileSaveNumber[24] := 30;
  LuuDuLieu[41] := 200;
  FileSaveString[3] := 'Đang_Xử_Lý_Hợp_Đồng...';
end;
procedure HDQuangcao;
begin  
  j := 1;
  Dichuyen := 0;
  clrscr;
  FileSaveNumber[23] := 2;
  FileSaveNumber[24] := 100;
  LuuDuLieu[41] := 800;
  FileSaveString[3] := 'Đang_Xử_Lý_Hợp_Đồng...';
end;
procedure HDEngine;
begin  
  j := 1;
  Dichuyen := 0;
  clrscr;
  FileSaveNumber[23] := 2;
  FileSaveNumber[24] := 360;
  LuuDuLieu[41] := 3500;
  FileSaveString[3] := 'Đang_Xử_Lý_Hợp_Đồng...';
end;
procedure KhongCapNhat;
begin
  if FileSaveNumber[23] = 0 then
  FileSaveNumber[4] := LuuDuLieu[1];
  FileSaveNumber[5] := LuuDuLieu[2];
  FileSaveNumber[21] := LuuDuLieu[3];
  for i := 4 to 9 do 
  FileSaveNumber[i+11] := LuuDuLieu[i];
  for i := 10 to 15 do
  FileSaveNumber[i-1] := LuuDuLieu[i];
  FileSaveNumber[8] := LuuDuLieu[16];
  for i := 17 to 20 do 
  FileSaveNumber[i+12] := LuuDuLieu[i];
end;
procedure CapNhatGame;
begin 
  LuuDuLieu[21] := FileSaveNumber[5];
  LuuDuLieu[22] := FileSaveNumber[21];
  for i := 23 to 28 do 
  LuuDuLieu[i] := FileSaveNumber[i-8];
  for i := 29 to 34 do
  LuuDuLieu[i] := FileSaveNumber[i-20];
  LuuDuLieu[35] := FileSaveNumber[8];
  for i := 36 to 39 do
  LuuDuLieu[i] := FileSaveNumber[i-7];
  FileSaveNumber[23] := 1;
  FileSaveString[3] := 'Đang_Cập_Nhật...';
  FileSaveNumber[24] := FileSaveNumber[24] - FileSaveNumber[22];
  KhongCapNhat;
  j := 1;
  DiChuyen := 0;
  clrscr;
end;
procedure Reset(Thua: byte);
begin 
  clrscr;
  while j = 0 do 
  begin 
    if Thua = 2 then
    begin  
      gotoxy(18,15);
      write('Bạn Đã Bị Phá Sản');
      delay(5000);
    end;
    if Thua = 0 then 
    begin
      gotoxy(13,15);
      write('Nhấn O Để Chấp Nhận Chơi Lại');   
    end;
    if (KiemTra = 1) or (Thua = 2) then  
    begin
      clrscr;
      gotoxy(7,15);
      write('Game Đã Được Reset Thoát Ra Để Chơi Lại');
      assign(FileSaveStrings,'FileSaveString.inp');  
      rewrite(FileSaveStrings);
      writeln(FileSaveStrings,'...');
      writeln(FileSaveStrings,'...');
      writeln(FileSaveStrings,'Rảnh_Rỗi');
      close(FileSaveStrings);
      assign(FileSaveNumbers,'FileSaveNumber.inp');
      rewrite(FileSaveNumbers);
      writeln(FileSaveNumbers,1);
      writeln(FileSaveNumbers,1);
      writeln(FileSaveNumbers,2021);
      writeln(FileSaveNumbers,10);
      for i := 1 to 17 do
      writeln(FileSaveNumbers,0);
      writeln(FileSaveNumbers,5);
      for i := 1 to 3 do
      writeln(FileSaveNumbers,0);
      writeln(FileSaveNumbers,1);
      writeln(FileSaveNumbers,0);
      writeln(FileSaveNumbers,100);
      for i := 1 to 20 do 
      writeln(FileSaveNumbers,0);
      close(FileSaveNumbers);
      assign(LuuDuLieus,'LuuDuLieu.inp');
      rewrite(LuuDuLieus);
      for i := 1 to 41 do
      writeln(LuuDuLieus,0);
      close(LuuDuLieus);
      Thua := 1;
    end;
    Nut := ReadKey;
    if Thua = 0 then 
    begin 
      if Nut = 'o' then 
      KiemTra := 1;
      if Nut = 'q' then 
      begin 
        j := 1;
        clrscr;
      end;
    end;
  end;
end;
procedure CacNut;
begin  
  clrscr; 
  while j = 0 do 
  begin  
    gotoxy(10,6);
    write('Nhấn W Để Lên');
    gotoxy(10,8);
    write('Nhấn S Để Xuống');
    gotoxy(10,10);
    write('Nhấn K Để Chọn');
    gotoxy(10,12);
    write('Nhấn Q Để Thoát');
    gotoxy(10,14);
    write('Nhấn N Để Qua 1 Ngày');
    Nut := ReadKey; 
    if Nut = 'q' then 
    begin  
      j := 1; 
      DiChuyen := 0; 
      clrscr;
    end;
  end;
end;
procedure CachChoi;
begin 
  clrscr; 
  while j = 0 do
  begin 
    gotoxy(5,6);
    write('Chưa làm xong nên chưa có hướng dẫn cụ thể');
    Nut := Readkey;
    if Nut = 'q' then 
    begin  
      j := 1; 
      DiChuyen := 0; 
      clrscr;
    end;
  end;
end;
procedure Luu;
begin 
  clrscr; 
  assign(FileSaveNumbers,'FileSaveNumber.inp');
  rewrite(FileSaveNumbers);
  for i := 1 to 48 do
  writeln(FileSaveNumbers,FileSaveNumber[i]);
  close(FileSaveNumbers);
  assign(FileSaveStrings,'FileSaveString.inp');
  rewrite(FileSaveStrings);
  for i := 1 to 3 do
  writeln(FileSaveStrings,FileSaveString[i]);
  close(FileSaveStrings);
  assign(LuuDuLieus,'LuuDuLieu.inp');
  rewrite(LuuDuLieus);
  for i := 1 to 41 do
  writeln(LuuDuLieus,LuuDuLieu[i]);
  close(LuuDuLieus);
  gotoxy(18,15);
  write('Đã Lưu Thành Công');
  delay(2000);
  clrscr;
end;
procedure CaiDat;
begin
  clrscr;
  DiChuyen := 0;
  while j = 0 do
  begin 
    gotoxy(22,6);
    if DiChuyen = 0 then
    write('•') 
    else write(' ');
    gotoxy(24,6);
    write('Lưu');
    gotoxy(20,8);
    if DiChuyen = 1 then
    write('•') 
    else write(' ');
    gotoxy(22,8);
    write('Chơi Mới');
    gotoxy(11,10);
    if DiChuyen = 2 then
    write('•') 
    else write(' ');
    gotoxy(13,10);
    write('Chức Năng Các Nút Trong Game');
    gotoxy(20,12);
    if DiChuyen = 3 then
    write('•') 
    else write(' ');
    gotoxy(22,12);
    write('Câch Chơi');
    Nut := ReadKey;
    case Nut of
      's': 
      begin 
         if DiChuyen < 3 then 
         inc(DiChuyen);
      end;
      'w': 
      begin 
         if DiChuyen > 0 then
         DiChuyen := DiChuyen - 1;
      end;
      'q':
      begin  
        j := 1; 
        DiChuyen := 0;
        clrscr;
      end;
      'k': 
      begin 
      if DiChuyen = 0 then 
      Luu;
      if DiChuyen = 1 then
      Reset(0);
      if DiChuyen = 2 then 
      CacNut;
      if DiChuyen = 3 then
      CachChoi;
      j := 0;
      end;
    end;
  end;
end;
procedure PhatTrienGame;
begin 
  clrscr; 
  while j = 0 do 
  begin
    gotoxy(5,2);
    write('Số Nhân Viên: ',FileSaveNumber[22]);
    gotoxy(28,3);
    write('Money: ',FileSaveNumber[4],' K');
    gotoxy(8,6);
    if DiChuyen = 0 then
    write('•')
    else write(' ');
    gotoxy(10,6);
    write('Thế Giới: Lvl ',FileSaveNumber[9]);
    gotoxy(38,6);
    write(FileSaveNumber[15],' K'); 
    gotoxy(8,8);
    if DiChuyen = 1 then
    write('•')
    else write(' ');
    gotoxy(10,8);
    write('Điều Chỉnh Nhân Vật: Lvl ',FileSaveNumber[29]); 
    gotoxy(38,8);
    write(FileSaveNumber[31],' K');
    gotoxy(8,10);
    if DiChuyen = 2 then
    write('•')
    else write(' ');
    gotoxy(10,10);
    write('Đồ Hoạ: Lvl ',FileSaveNumber[10]); 
    gotoxy(38,10);
    write(FileSaveNumber[16],' K');
    gotoxy(8,12);
    if DiChuyen = 3 then
    write('•')
    else write(' ');
    gotoxy(10,12);
    write('Số Lượng NPC: ',FileSaveNumber[11]); 
    gotoxy(38,12);
    write(FileSaveNumber[17],' K');
    gotoxy(8,14);
    if DiChuyen = 4 then
    write('•')
    else write(' ');
    gotoxy(10,14);
    write('Số Lượng Vật Phẩm: ',FileSaveNumber[12]); 
    gotoxy(38,14);
    write(FileSaveNumber[18],' K');
    gotoxy(8,16);
    if DiChuyen = 5 then
    write('•')
    else write(' ');
    gotoxy(10,16);
    write('Số Lượng Cốt Truyện: ',FileSaveNumber[13]);
    gotoxy(38,16);
    write(FileSaveNumber[19],' K'); 
    gotoxy(8,18);
    if DiChuyen = 6 then
    write('•')
    else write(' ');
    gotoxy(10,18);
    write('Số Lượng Boss: ',FileSaveNumber[14]);  
    gotoxy(38,18);
    write(FileSaveNumber[20],' K');
    gotoxy(8,20);
    if DiChuyen = 7 then
    write('•')
    else write(' ');
    gotoxy(10,20);
    write('Số Lượng Quái: ',FileSaveNumber[30]); 
    gotoxy(38,20);
    write(FileSaveNumber[32],' K');
    gotoxy(20,24);
    if DiChuyen = 8 then 
    write('•')
    else write(' ');
    gotoxy(22,24);
    if FileSaveNumber[7] > 0 then
    write('Cập Nhật Game')
    else write('Phát Hành Game');
    Nut := ReadKey;
    case Nut of
      's': 
      begin 
        if DiChuyen < 8 then 
        inc(DiChuyen);
      end;
      'w': 
      begin 
        if DiChuyen > 0 then
        DiChuyen := DiChuyen - 1;
      end;
      'k': 
      begin
        if DiChuyen = 0 then
        TheGioi;
        if DiChuyen = 1 then
        NhanVat;
        if DiChuyen = 2 then 
        DoHoa;
        if DiChuyen = 3 then
        NPC;
        if DiChuyen = 4 then
        VatPham;
        if DiChuyen = 5 then
        CotTruyen;
        if DiChuyen = 6 then
        Boss;
        if DiChuyen = 7 then
        Quai;
        if DiChuyen = 8 then
        CapNhatGame;
      end;
      'q':
      begin
        j := 1;
        DiChuyen := 0;
        clrscr;
        FileSaveNumber[24] := 0;
        KhongCapNhat;
      end;
    end;
  end;
end; 
procedure FixManHinh;
begin 
  clrscr;
end;
procedure TuyenNhanVien;
begin
  clrscr;
  while j = 0 do 
  begin
    gotoxy(10,14);
    write('Tuyển 10 Nhân Viên Với Giá 100 K ?');
    gotoxy(19,15);
    write('Nhấn O Để Tuyển');
    Nut := ReadKey;
    case Nut of 
      'q': 
      begin  
        j := 1;
        DiChuyen := 0;
        clrscr;
      end; 
      'o': 
      begin
        if FileSaveNumber[4] >= 100 then 
        begin 
          j := 1;
          DiChuyen := 0;
          clrscr;
          FileSaveNumber[22] := FileSaveNumber[22] + 10;
          FileSaveNumber[4] := FileSaveNumber[4] - 100;
        end;
      end;
    end;
  end;
end;
procedure TinhNang;
begin 
  clrscr;
  while j = 0 do 
  begin 
    gotoxy(28,3);
    write('Money: ',FileSaveNumber[4],' K');
    gotoxy(8,6);
    if DiChuyen = 0 then
    write('•')
    else write(' ');
    gotoxy(10,6);
    write('Chống Hack: Lvl ',FileSaveNumber[33]);
    gotoxy(38,6);
    write(FileSaveNumber[34],' K'); 
    gotoxy(8,8);
    if DiChuyen = 1then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 10 then 
    begin
      gotoxy(1,8);
      write('Level 10');
    end;
    gotoxy(10,8);
    write('Tải Dữ Liệu: Lvl ',FileSaveNumber[35]); 
    gotoxy(38,8);
    write(FileSaveNumber[36],' K');
    gotoxy(8,10);
    if DiChuyen = 2 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 20 then 
    begin
      gotoxy(1,10);
      write('Level 20');
    end;
    gotoxy(10,10);
    write('Tối Ưu: Lvl ',FileSaveNumber[37]); 
    gotoxy(38,10);
    write(FileSaveNumber[38],' K');
    gotoxy(8,12);
    if DiChuyen = 3 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 30 then 
    begin
      gotoxy(1,12);
      write('Level 30');
    end;
    gotoxy(10,12);
    write('Sửa Lỗi: Lvl ',FileSaveNumber[39]); 
    gotoxy(38,12);
    write(FileSaveNumber[40],' K');
    gotoxy(8,14);
    if DiChuyen = 4 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 40 then 
    begin
      gotoxy(1,14);
      write('Level 40');
    end;
    gotoxy(10,14);
    write('Cải Thiện Mạng: Lvl ',FileSaveNumber[41]); 
    gotoxy(38,14);
    write(FileSaveNumber[42],' K');
    gotoxy(8,16);
    if DiChuyen = 5 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 50 then 
    begin
      gotoxy(1,16);
      write('Level 50');
    end;
    gotoxy(10,16);
    write('Tương Thích: Lvl ',FileSaveNumber[43]);
    gotoxy(38,16);
    write(FileSaveNumber[44],' K'); 
    gotoxy(8,18);
    if DiChuyen = 6 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 60 then 
    begin
      gotoxy(1,18);
      write('Level 60');
    end;
    gotoxy(10,18);
    write('Cải Thiện Lag: Lvl ',FileSaveNumber[45]);  
    gotoxy(38,18);
    write(FileSaveNumber[46],' K');
    gotoxy(8,20);
    if DiChuyen = 7 then
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 80 then 
    begin
      gotoxy(1,20);
      write('Level 80');
    end;
    gotoxy(10,20);
    write('Đa Nền Tảng: Lvl ',FileSaveNumber[47]); 
    gotoxy(38,20);
    write(FileSaveNumber[48],' K');
    Nut := Readkey;
    case Nut of 
      'q': 
      begin 
        j := 1;
        DiChuyen := 0;
        clrscr; 
      end;
      's': 
      begin 
        if FileSaveNumber[26] >= 10 then
        i1 := 1;
        if FileSaveNumber[26] >= 20 then
        i1 := 2;
        if FileSaveNumber[26] >= 30 then
        i1 := 3;
        if FileSaveNumber[26] >= 40 then
        i1 := 4;
        if FileSaveNumber[26] >= 50 then
        i1 := 5;
        if FileSaveNumber[26] >= 60 then
        i1 := 6;
        if FileSaveNumber[26] >= 80 then
        i1 := 7;
        if DiChuyen < i1 then 
        inc(DiChuyen);
      end;
      'w': 
      begin 
        if DiChuyen > 0 then
        DiChuyen := DiChuyen - 1;
      end;
      'k': 
      begin
        if DiChuyen = 0 then
        ChongHack;
        if DiChuyen = 1 then
        DuLieu;
        if DiChuyen = 2 then 
        ToiUu;
        if DiChuyen = 3 then
        FixLoi;
        if DiChuyen = 4 then
        Mang;
        if DiChuyen = 5 then
        TuongThich;
        if DiChuyen = 6 then
        Lag;
        if DiChuyen = 7 then
        DaNenTang;
      end;
    end;
  end;
end;
procedure LamViec;
begin  
  clrscr;
  while j = 0 do 
  begin 
    gotoxy(8,6);
    if DiChuyen = 0 then 
    write('•')
    else write(' ');
    gotoxy(10,6);
    write('Sửa Lỗi Game');
    gotoxy(35,6);
    write('30 Ngày: 100 K');
    gotoxy(8,8);
    if DiChuyen = 1 then 
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 10 then 
    begin
      gotoxy(1,8);
      write('Level 10');
    end;
    gotoxy(10,8);
    write('Kiểm Tra Game');
    gotoxy(35,8);
    write('30 Ngày: 150 K');
    gotoxy(8,10);
    if DiChuyen = 2 then 
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 20 then 
    begin
      gotoxy(1,10);
      write('Level 20');
    end;
    gotoxy(10,10);
    write('Chạy Thử Game');
    gotoxy(35,10);
    write('30 Ngày: 200 K');
    gotoxy(8,12);
    if DiChuyen = 3 then 
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 30 then 
    begin
      gotoxy(1,12);
      write('Level 30');
    end;
    gotoxy(10,12);
    write('Tạo Quảng Cáo');
    gotoxy(35,12);
    write('100 Ngày: 800 K');
    gotoxy(8,14);
    if DiChuyen = 4 then 
    write('•')
    else write(' ');
    if FileSaveNumber[26] < 40 then 
    begin
      gotoxy(1,14);
      write('Level 40');
    end;
    gotoxy(10,14);
    write('Phát Triển Engine Game');
    gotoxy(35,14);
    write('360 Ngày: 3500 K');
    Nut := ReadKey;
    case Nut of 
      'q': 
      begin  
        j := 1;
        DiChuyen := 0;
        clrscr;
      end;
      's': 
      begin 
        if FileSaveNumber[26] >= 10 then
        i1 := 1;
        if FileSaveNumber[26] >= 20 then
        i1 := 2;
        if FileSaveNumber[26] >= 30 then
        i1 := 3;
        if FileSaveNumber[26] >= 40 then
        i1 := 4;
        if DiChuyen < i1 then 
        inc(DiChuyen);
      end;
      'w': 
      begin 
        if DiChuyen > 0 then
        DiChuyen := DiChuyen - 1;
      end; 
      'k': 
      begin  
        if DiChuyen = 0 then 
        HDFixLoi;
        if DiChuyen = 1 then 
        HDKiemTra;
        if DiChuyen = 2 then 
        HDChayThu;
        if DiChuyen = 3 then 
        HDQuangCao;
        if DiChuyen = 4 then 
        HDEngine;
      end;     
    end;
  end;
end;
begin
  clrscr;
  assign(FileSaveStrings,'FileSaveString.inp');
  reset(FileSaveStrings);
  for i := 1 to 3 do
  readln(FileSaveStrings,FileSaveString[i]);
  close(FileSaveStrings);
  assign(FileSaveNumbers,'FileSaveNumber.inp');
  reset(FileSaveNumbers);
  for i := 1 to 48 do
  readln(FileSaveNumbers,FileSaveNumber[i]);
  close(FileSaveNumbers);
  assign(LuuDuLieus,'LuuDuLieu.inp');
  reset(LuuDuLieus);
  for i := 1 to 41 do
  readln(LuuDuLieus,LuuDuLieu[i]);
  close(LuuDuLieus);
  if FileSaveNumber[34] = 0 then 
  FileSaveNumber[34] := 10;
  if FileSaveNumber[36] = 0 then 
  FileSaveNumber[36] := 20;
  if FileSaveNumber[38] = 0 then 
  FileSaveNumber[38] := 50;
  if FileSaveNumber[40] = 0 then 
  FileSaveNumber[40] := 100;
  if FileSaveNumber[42] = 0 then 
  FileSaveNumber[42] := 500;
  if FileSaveNumber[44] = 0 then 
  FileSaveNumber[44] := 1000;
  if FileSaveNumber[46] = 0 then 
  FileSaveNumber[46] := 5000;
  if FileSaveNumber[48] = 0 then 
  FileSaveNumber[48] := 50000;
  while j = 0 do
  begin
    if FileSaveString[1] = '...' then
    begin
      gotoxy(15,14);
      write('Vui Lòng Nhập Tên Công Ty');
      gotoxy(22,15);
      readln(FileSaveString[1]);
      clrscr;
    end;
    if FileSaveString[2] = '...' then
    begin
      gotoxy(17,14);
      write('Vui Lòng Nhập Tên Game');
      gotoxy(22,15);
      readln(FileSaveString[2]);
      clrscr;
    end;
    gotoxy(1,1);
    write('Ngày ',FileSaveNumber[1],' Tháng ',FileSaveNumber[2],' Năm ',FileSaveNumber[3]);
    gotoxy(42,1);
    if DiChuyen = -1 then
    write('•')
    else write(' ');
    gotoxy(44,1);
    write('Cài Đặt');
    gotoxy(13,2);
    write('MMORPG Dev Tycoon VBeta1.1');
    gotoxy(20,3);
    write(FileSaveString[1]);
    gotoxy(28,4);
    write('Money: ',FileSaveNumber[4],' K');
    gotoxy(1,5);
    write('Level: ',FileSaveNumber[26],' (',FileSaveNumber[27],'/',FileSaveNumber[28],')');
    gotoxy(1,6);
    write('Điểm Game: ',FileSaveNumber[5]);
    gotoxy(1,7);
    write('Số Người Online: ',FileSaveNumber[6]);
    gotoxy(1,8);
    write(FileSaveString[2],': ',FileSaveNumber[7],' Lượt Tải Xuống');
    gotoxy(1,9);
    write('Fan: ',FileSaveNumber[25]);
    gotoxy(1,10);
    write('Dung Lượng: ',FileSaveNumber[8],' Mb');
    if FileSaveNumber[24] <= 0 then 
    begin
      FileSaveNumber[24] := 0;
      FileSaveString[3] := 'Rảnh_Rỗi';
    end;
    if FileSaveString[3] = 'Rảnh_Rỗi' then 
    TrangThai := 'Rảnh Rỗi'
    else if FileSaveString[3] = 'Đang_Cập_Nhật...' then 
    TrangThai := 'Đang cập nhật ...'
    else TrangThai := 'Đang Xử Lý Hợp Đồng ...';
    gotoxy(1,11);
    write('Trạng Thái: ',TrangThai,);
    if ((FileSaveNumber[23] = 1) or (FileSaveNumber[23] = 2)) and (FileSaveNumber[24] <> 0) then
    write(' ( ',FilesaveNumber[24],' Ngày )');
    gotoxy(5,13);
    if PhiThang > 0 then 
    begin
      write('Phí Tháng : -',PhiThang,' K');
      PhiThang := 0;
    end
    else write('                      ');      
    gotoxy(18,15);
    if DiChuyen = 0 then
    write('•')
    else write(' ');
    gotoxy(20,15);
    write('Phát Triển Game');
    gotoxy(18,17);
    if DiChuyen = 1 then
    write('•')
    else write(' ');
    gotoxy(20,17);
    write('Tuyển Nhân Viên');
    gotoxy(16,19);
    if DiChuyen = 2 then
    write('•')
    else write(' ');
    gotoxy(18,19);
    write('Phát Triển Tính Năng');
    gotoxy(17,21);
    if DiChuyen = 3 then
    write('•')
    else write(' ');
    gotoxy(19,21);
    write('Hợp Đồng Làm Việc');
    Nut := ReadKey;
    case Nut of 
    'n':
      begin
        inc(FileSaveNumber[21]);
        inc(FileSaveNumber[1]);
        if FileSaveNumber[1] = 31 then
        begin 
          inc(FileSaveNumber[2]);
          FileSaveNumber[1] := 1; 
          FixManHinh;
          if (FileSaveNumber[2] >= 1) and (FileSaveNumber[2] <= 5) then
          begin 
            FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[22]*5;
            PhiThang := FileSaveNumber[22]*5;
          end;
          if (FileSaveNumber[2] > 5) and (FileSaveNumber[2] <= 12) then
          begin
            FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[22]*10;
            PhiThang := FileSaveNumber[22]*10;
          end;
          if (FileSaveNumber[3] >= 2022) and (FileSaveNumber[3] <= 2026) then
          begin
            FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[22]*25;
            PhiThang := FileSaveNumber[22]*25;
          end;
          if FileSaveNumber[3] > 2027 then
          begin
            FileSaveNumber[4] := FileSaveNumber[4] - FileSaveNumber[22]*50;
            PhiThang := FileSaveNumber[22]*50;
          end;
        end;
        if FileSaveNumber[2] = 13 then
        begin 
          inc(FileSaveNumber[3]);
          FileSaveNumber[2] := 1;
        end;
        LuuDuLieu[40] := FileSaveNumber[5];
        if (FileSaveNumber[8] >= 500) and (FileSaveNumber[8] <= 1500) then 
        FileSaveNumber[5] := int(FileSaveNumber[5]/2);
        if (FileSaveNumber[8] > 1500) and (FileSaveNumber[8] <= 5000) then 
        FileSaveNumber[5] := int(FileSaveNumber[5]/3);
        if (FileSaveNumber[8] > 5000) and (FileSaveNumber[8] <= 15000) then 
        FileSaveNumber[5] := int(FileSaveNumber[5]/4);
        if (FileSaveNumber[8] > 15000) and (FileSaveNumber[8] <= 50000) then 
        FileSaveNumber[5] := int(FileSaveNumber[5]/8);
        if (FileSaveNumber[8] > 50000) then 
        FileSaveNumber[5] := int(FileSaveNumber[5]/16);
        if FileSaveNumber[5] > 0 then 
        begin 
          if FileSaveNumber[21] <= 10 then
          FileSaveNumber[7] := int(FileSaveNumber[25]/10) + FileSaveNumber[7] + FileSaveNumber[5]*5;
          if (FileSaveNumber[21] > 10) and (FileSaveNumber[21] <= 40) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/25) + FileSaveNumber[7] + FileSaveNumber[5]*3;   
          if (FileSaveNumber[21] > 40) and (FileSaveNumber[21] <= 130) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/50) + FileSaveNumber[7] + FileSaveNumber[5]*2;
          if (FileSaveNumber[21] > 130) and (FileSaveNumber[21] <= 360) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/100) + FileSaveNumber[7] + FileSaveNumber[5]*1;
          if (FileSaveNumber[21] > 360) and (FileSaveNumber[21] <= 720) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/250) + FileSaveNumber[7] + int(FileSaveNumber[5]/4);  
          if (FileSaveNumber[21] > 720) and (FileSaveNumber[21] <= 1080) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/500) + FileSaveNumber[7] + int(FileSaveNumber[5]/8);
          if (FileSaveNumber[21] > 1080) and (FileSaveNumber[21] <= 1440) then
          FileSaveNumber[7] := int(FileSaveNumber[25]/1000) + FileSaveNumber[7] + int(FileSaveNumber[5]/16);
          if FileSaveNumber[21] > 1440 then
          FileSaveNumber[7] := int(FileSaveNumber[25]/5000) + FileSaveNumber[7] + int(FileSaveNumber[5]/32);
        end;
        if (FileSaveNumber[7] > 0) then 
        begin 
          if FileSaveNumber[21] <= 10 then
          FileSaveNumber[6] := FileSaveNumber[6] + FileSaveNumber[5]*5;
          if (FileSaveNumber[21] > 10) and (FileSaveNumber[21] <= 40) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]*3/2) ;   
          if (FileSaveNumber[21] > 40) and (FileSaveNumber[21] <= 130) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]*2/3);
          if (FileSaveNumber[21] > 130) and (FileSaveNumber[21] <= 360) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]/4);
          if (FileSaveNumber[21] > 360) and (FileSaveNumber[21] <= 720) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]/8);
          if (FileSaveNumber[21] > 720) and (FileSaveNumber[21] <= 1080) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]/16);
          if (FileSaveNumber[21] > 1080) and (FileSaveNumber[21] <= 1440) then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]/32);
          if FileSaveNumber[21] > 1440 then
          FileSaveNumber[6] := FileSaveNumber[6] + int(FileSaveNumber[5]/64);
       end;
       if (FileSaveNumber[7] > 0) then 
       begin 
         if FileSaveNumber[21] <= 10 then
         FileSaveNumber[25] := FileSaveNumber[25] + int(FileSaveNumber[5]/2);
         if (FileSaveNumber[21] > 10) and (FileSaveNumber[21] <= 40) then
         FileSaveNumber[25] := FileSaveNumber[25] + int(FileSaveNumber[5]/4) ;   
         if (FileSaveNumber[21] > 40) and (FileSaveNumber[21] <= 130) then
         FileSaveNumber[25] := FileSaveNumber[25] + int(FileSaveNumber[5]/6);
         if (FileSaveNumber[21] > 130) and (FileSaveNumber[21] <= 360) then
         FileSaveNumber[25] := FileSaveNumber[25] + int(FileSaveNumber[5]/8);
         if (FileSaveNumber[21] > 360) and (FileSaveNumber[21] <= 720) then
         FileSaveNumber[25] := FileSaveNumber[25] + int(FileSaveNumber[5]/16);
         if (FileSaveNumber[21] > 720) and (FileSaveNumber[21] <= 1080) then
         FileSaveNumber[25] := FileSaveNumber[25] - int(FileSaveNumber[5]/16);
         if (FileSaveNumber[21] > 1080) and (FileSaveNumber[21] <= 1440) then
         FileSaveNumber[25] := FileSaveNumber[25] - int(FileSaveNumber[5]/8);
         if FileSaveNumber[21] > 1440 then
         FileSaveNumber[25] := FileSaveNumber[25] - int(FileSaveNumber[5]/4);
      end;
      FileSaveNumber[5] := LuuDuLieu[40];
      if FileSaveNumber[25] < 0 then 
      FileSaveNumber[25] := 0;
      if FileSaveNumber[6] > 0 then 
      begin 
        FileSaveNumber[4] := FileSaveNumber[4] + int(FileSaveNumber[6]/5000);
        FileSaveNumber[27] := FileSaveNumber[27] + int(FileSaveNumber[6]/5000);
      end;
      if FileSaveNumber[27] >= FileSaveNumber[28] then 
      begin  
        inc(FileSaveNumber[26]);
        FileSaveNumber[27] := FileSaveNumber[27] - FileSaveNumber[28];
        FileSaveNumber[28] := FileSaveNumber[26]*100;
      end;
      if FileSaveNumber[23] = 1 then 
      begin 
        FileSaveNumber[24] := FileSaveNumber[24] - 1;
        if FileSaveNumber[24] <= 0 then 
        begin 
          FileSaveNumber[23] := 0;
          FileSaveString[3] := 'Rảnh_Rỗi';
          FileSaveNumber[5] := LuuDuLieu[21];
          FileSaveNumber[21] := LuuDuLieu[22];
          for i := 23 to 28 do 
          FileSaveNumber[i-8] := LuuDuLieu[i];
          for i := 29 to 34 do
          FileSaveNumber[i-20] := LuuDuLieu[i];
          FileSaveNumber[8] := LuuDuLieu[35];
          for i := 36 to 39 do 
          FileSaveNumber[i-7] := LuuDuLieu[i];
          FixManHinh;
        end;
      end;
      if FileSaveNumber[23] = 2 then 
      begin  
        FileSaveNumber[24] := FileSaveNumber[24] - 1;
        if FileSaveNumber[24] <= 0 then 
        begin 
          FileSaveNumber[23] := 0;
          FileSaveString[3] := 'Rảnh_Rỗi';
          FileSaveNumber[4] := FileSaveNumber[4] + LuuDuLieu[41];  
          FixManHinh;
        end;
      end;
      end;
      's': 
      begin 
        if DiChuyen < 3 then 
        inc(DiChuyen);
      end;
      'w': 
      begin 
        if DiChuyen > -1 then
        DiChuyen := DiChuyen - 1;
      end;
      'k': 
      begin
        if DiChuyen = -1 then
        CaiDat;
        if (DiChuyen = 0) and (FileSaveNumber[23] = 0) then
        begin
          LuuDuLieu[1] := FileSaveNumber[4];
          LuuDuLieu[2] := FileSaveNumber[5];
          LuuDuLieu[3] := FileSaveNumber[21];
          for i := 4 to 9 do 
          LuuDuLieu[i] := FileSaveNumber[i+11];
          for i := 10 to 15 do
          LuuDuLieu[i] := FileSaveNumber[i-1];
          LuuDuLieu[16] := FileSaveNumber[8];
          for i := 17 to 20 do
          LuuDuLieu[i] := FileSaveNumber[i+12];
          PhatTrienGame;
        end;
        if DiChuyen = 1 then
        TuyenNhanVien;
        if (DiChuyen = 2) and (FileSaveNumber[5] > 0) then 
        begin 
          DiChuyen := 0;
          TinhNang;
          i1 := 0;
        end;
        if (DiChuyen = 3) and (FileSaveNumber[23] = 0) then 
        begin  
          DiChuyen := 0;
          LamViec;
          i1 := 0;
        end;
        j := 0;
      end;
    end;
    if FileSaveNumber[4] < 0 then 
    Reset(2);
  end;
end.
{*
  1: Ngày
  2: Tháng
  3: Năm
  4: Money
  5: Điểm Game
  6: Số Người Online
  7: Lượt Tải Xuống
  8: Dung Lượng
  9: Thế Giới
  10: Đồ Hoạ
  11: Nhân Vật
  12: Vật Phẩm
  13: Cốt Truyện
  14: Boss
  15: Money Phải Trả Của 9
  16: .................. 10
  17: .................. 11
  18: .................. 12
  19: .................. 13
  20: .................. 14
  21: Đếm Số Ngày
  22: Số Nhân Viên
  23: Kiểm Tra Trạng Thái
  24: Số Ngày Cập Nhật
  25: Fan
  26: Lvl
  27: Kinh Nghiệm Đang Có
  28: Kinh Nghiệm Giới Hạn
  29: Nhân Vật 
  30: Quái 
  31: Money Phải Trả Của 29
  32: Money Phải Trả Của 30
  33: Chống Hack
  34: Money Phải Trả Của(MPTC) 33
  35: Tải Dữ Liệu
  36: MPTC 35
  37: Tối Ưu
  38: MPTC 37
  39: Sửa Lỗi
  40: MPTC 39
  41: Cải Thiện Mạng
  42: MPTC 41
  43: Tương Thích
  44: MPTC 43
  45: Cải Thiện Lag
  46: MPTC 45
  47: Đa Nền Tảng
  48: MPTC 47
*}
