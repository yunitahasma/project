       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIMA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MASUKAN.
           02 NILAI PIC 9(3).
           02 HASIL PIC 9.
           02 S1 PIC 9.
           02 S2 PIC 9.
           02 S3 PIC 9.
           02 S4 PIC 9.
		   
       PROCEDURE DIVISION.
       MULAI.
           DISPLAY (2, 2) 'Masukkan bilangan (Maks 999) : '
		   ACCEPT ( , ) NILAI
		   
           DIVIDE NILAI BY 2 GIVING HASIL REMAINDER S1
           DIVIDE NILAI BY 3 GIVING HASIL REMAINDER S2
           DIVIDE NILAI BY 5 GIVING HASIL REMAINDER S3
           DIVIDE NILAI BY 7 GIVING HASIL REMAINDER S4

           DISPLAY (4, 2) 'Bilangan ini bukan bilangan prima'.
		   
           IF NILAI > 1
            IF S1 NOT = 0 OR NILAI = 2
             IF S2 NOT = 0 OR NILAI = 3
              IF S3 NOT = 0 OR NILAI = 5 
               IF S4 NOT = 0 OR NILAI = 7
                DISPLAY (4, 2) 'Bilangan ini merupakan bilangan prima'

           STOP RUN.
