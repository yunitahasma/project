IDENTIFICATION DIVISION.
       PROGRAM-ID. T2202.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NAMA PIC X(30).
           01 NPM PIC X(8)
           01 KELAS PIC X(5).
           01 KAMPUS PIC X(30).
       01 ISIMENU.
           02 JARI PIC 99V99.
           02 LLINGKARAN PIC 99999V99.
           02 ALAS PIC 99V99.
           02 TINGGI PIC 99V99.
           02 LSEGITIGA PIC 99V99.
           02 PANJANG PIC 99V99.
           02 LEBAR PIC 99V99.
           02 LPERPANJANG PIC 99999V99.
       01 PILIH PIC 9.
       01 HASIL.
           02 OHASIL PIC ZZZZZ.99.

       SCREEN SECTION.
       01 HAPUS-LAYAR.
           02 BLANK SCREEN.
       01 LAYAR-MENU.
           02 LINE 3 COLUMN 20 VALUE 'MENU'.
           02 LINE 4 COLUMN 20 VALUE '1). MENGHITUNG LUAS LINGKARAN'.
           02 LINE 5 COLUMN 20 VALUE '2). MENGHITUNG LUAS SEGITIGA'.
           02 LINE 6 COLUMN 20 VALUE '3). MENGHITUNG LUAS P.PANJANG'.
           02 LINE 7 COLUMN 20 VALUE '4). SELESAI/KELUAR'.
           02 LINE 10 COLUMN 20 VALUE 'PILIH = '.
       01 BDATA.
           02 LINE 3 COLUMN 20 VALUE 'PERHITUNGAN '.
           02 LINE 4 COLUMN 20 VALUE 'MATEMATIKA'.
         
       PROCEDURE DIVISION.
       MULAI.
           DISPLAY (2,3) "NAMA   : ".
           ACCEPT NAMA.
           DISPLAY (3,3) "NPM    : ".
           ACCEPT NPM.
           DISPLAY (4,3) "KELAS  : ".
           ACCEPT KELAS.
           DISPLAY (5,3) "KAMPUS : ".
           ACCEPT KAMPUS.
       MENU.
           DISPLAY HAPUS-LAYAR.
           DISPLAY LAYAR-MENU.
           ACCEPT PILIH.
           DISPLAY HAPUS-LAYAR.

       SELEKSI.
           IF PILIH = 1 GO TO LINGKARAN.
           IF PILIH = 2 GO TO SEGITIGA.
           IF PILIH = 3 GO TO PERPANJANG.
           IF PILIH = 4 GO TO SELESAI.

       SEGITIGA.
           DISPLAY HAPUS-LAYAR.
           DISPLAY BDATA.
           DISPLAY (5,20) 'NAMA  :', NAMA.
           DISPLAY (6,20) 'KELAS :', KELAS.
           DISPLAY (8, 10)'===MENGHITUNG LUAS SGITIGA==='.
           DISPLAY (9, 13) 'ALAS ='.
           ACCEPT ALAS.
           DISPLAY (10, 13) 'TINGGI ='.
           ACCEPT TINGGI.
           COMPUTE LSEGITIGA = ALAS * TINGGI / 2.
           MOVE LSEGITIGA TO OHASIL.
           DISPLAY (12, 14) 'LUAS SEGITIGA = '
           DISPLAY (12, 30) OHASIL.
           DISPLAY (20, 12) ' '.
           STOP 'TEKAN ENTER UNTUK MELANJUTKAN'.
           GO TO MENU.

       LINGKARAN.
           DISPLAY HAPUS-LAYAR.
           DISPLAY BDATA.
           DISPLAY (5,20) 'NAMA  :', NAMA.
           DISPLAY (6,20) 'KELAS :', KELAS.
           DISPLAY (8, 10)'===MENGHITUNG LUAS LINGKARAN==='.
           DISPLAY (9, 13) 'JARI-JARI : '.
           ACCEPT JARI.
           COMPUTE LLINGKARAN = 3.14 * JARI * JARI.
           MOVE LLINGKARAN TO OHASIL.
           DISPLAY (13, 15) 'LUAS LINGKARAN = '.
           DISPLAY (13, 30) OHASIL.
           DISPLAY (20, 12) ' '.
           STOP 'TEKAN ENTER UNTUK MELANJUTKAN'.
           GO TO MENU.

       PERPANJANG.
           DISPLAY HAPUS-LAYAR.
           DISPLAY BDATA.
           DISPLAY (5,20) 'NAMA  :', NAMA.
           DISPLAY (6,20) 'KELAS :', KELAS.
           DISPLAY (8, 10)'===MENGHITUNG LUAS PERSEGI PANJANG==='.
           DISPLAY (9, 13) 'PANJANG :'.
           ACCEPT PANJANG.
           DISPLAY (10, 13) 'LEBAR :'.
           ACCEPT LEBAR.
           COMPUTE LPERPANJANG = PANJANG * LEBAR.
           MOVE LPERPANJANG TO OHASIL.
           DISPLAY (13, 15) 'LUAS PERSEGI PANJANG = ',
           DISPLAY (13, 35) OHASIL.
           DISPLAY (20, 12) ' '.
           STOP 'TEKAN ENTER UNTUK MELANJUTKAN'.
           GO TO MENU.

       SELESAI.
           STOP RUN.