IDENTIFICATION DIVISION.
       PROGRAM-ID. CO.
       AUTHOR. NAMA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       SCREEN SECTION.
       01 HAPUS.
          02 BLANK SCREEN.
       PROCEDURE DIVISION.
       MULAI.
       DISPLAY '----------------------'.
       DISPLAY 'TEST COBOL'.
       DISPLAY '----------------------'.
       DISPLAY '**********************'.
       DISPLAY 'OKE SIP, COBOL'.
       DISPLAY '**********************'.
          SELESAI.
       STOP RUN.IDENTIFICATION DIVISION.
       PROGRAM-ID. COBA1.
       AUTHOR. SIAPA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DAT.
          02 NAMA PIC A(10).
          02 NPM PIC X(8).
          02 KELAS PIC X(5).
       SCREEN SECTION.
       01 CLS.
          02 BLANK SCREEN.
       PROCEDURE DIVISION.
       MULAI.
           DISPLAY 'MASUKAN NAMA  : ', ACCEPT NAMA.
           DISPLAY 'MASUKAN NPM   : ', ACCEPT NPM.
           DISPLAY 'MASUKAN KELAS : ', ACCEPT KELAS.
           DISPLAY '                '.
           DISPLAY 'NAMA SAYA ', NAMA.
           DISPLAY 'NPM SAYA ', NPM.
           DISPLAY 'KELAS SAYA ', KELAS.
       SELESAI.
           STOP RUN.