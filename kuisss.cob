        IDENTIFICATION DIVISION.
        PROGRAM-ID. GABUT.
        ENVIRONMENT DIVISION.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 MASUKKAN.
            02 ANGKA PIC 9(2).
            02 A PIC 9(2).
            02 B PIC 9(2).
            02 Y PIC 9(4).
            02 NUM PIC 9(4).
            02 DENUM PIC 9(4).
            02 NUM2 PIC Z(4).
            02 DENUM2 PIC Z(4).
            02 JUMLAH PIC S9(4).
            02 JUMLAH2 PIC +Z(4).
            
        01 ISI-LAGI PIC X.
            88 LAGI VALUE 'Y', 'y'.
            88 TIDAK VALUE 'T', 't'.
        
        SCREEN SECTION.
        01 HAPUS-LAYAR.
            02 BLANK SCREEN.
        PROCEDURE DIVISION.
        MULAI.
            DISPLAY HAPUS-LAYAR.
            DISPLAY (3, 3) "MASUKKAN BATAS :   ".
            ACCEPT ( , ) ANGKA.
            DISPLAY " ".
            DISPLAY ( , ) "1/1".
            MOVE 1 TO JUMLAH.
            PERFORM CEK VARYING Y FROM 2 BY 1 UNTIL Y > ANGKA.
            MOVE JUMLAH TO JUMLAH2.
            DISPLAY " ".
            DISPLAY JUMLAH2.
            GO TO TANYA.
            
        SELESAI.
            STOP RUN.
            
        CEK.
            DIVIDE Y BY 2 GIVING A REMAINDER B.
            
            COMPUTE NUM = Y ** 2.
            COMPUTE DENUM = Y.
            
            IF B EQUAL 0
                DISPLAY ( , ) " - "
            ELSE
                DISPLAY ( , ) " + ".
                
            IF B EQUAL 0
                COMPUTE JUMLAH = JUMLAH -    Y
            ELSE
                COMPUTE JUMLAH = JUMLAH + Y.                
            MOVE NUM TO NUM2.
            MOVE DENUM TO DENUM2.
            DISPLAY ( , ) NUM2, "/", DENUM2.
            
        TANYA.
            DISPLAY "INGIN MENCOBA LAGI ? ".
            ACCEPT( , ) ISI-LAGI.
            IF LAGI GO TO MULAI.
            IF TIDAK GO TO SELESAI.
            IF NOT LAGI AND NOT TIDAK
                 DISPLAY (7, 3) "Y ATAU T !!"
                 GO TO TANYA.