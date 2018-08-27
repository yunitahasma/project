       identification division.
       program-id. ia19b.
       environment division.
       data division.
       working-storage section.
       77  i pic 99.
       77  tot pic 9999v999.
       77  total pic zzz9.999.	
       77  a pic 9999 value 1.
       77  a-out pic zzzz.
       77  b pic 99.
       77  c pic 99.   
       77  n pic 99.
       77  jwb	pic a.
       screen section.
       01  bersih.
           02 blank screen.
	procedure division.
	mulai.
	    display bersih
            display(5, 6) 'masukan batas deret <maks 10>: '
	    accept( , ) n
	    display (6, 6) 'hasil : ' 
	    move 8 to lin, col
            move 1 to tot
	    perform deret varying i from 1 by 1 until i > n.
	    display (10, 6) 'Coba Lagi(Y/T) : ' accept( , )jwb
            if jwb = 'Y' or 'y' go to mulai.
	    stop run.	   
        deret.
	    divide i by 2 giving b remainder c
	    if c = 0 perform genap
	    else perform ganjil.
	    add 6 to col. 		   
	ganjil.
            compute a = i ** 2
	    compute tot rounded = tot * a
            move a to a-out
	    move tot to total
	    if i = n display (lin, col) a-out, ' = ', total
	    else display(lin, col) a-out, ' / '.
	genap.
            compute a = i ** 3
	    compute tot rounded = tot / a
	    move a to a-out
	    move tot to total
	    if i = n display (lin, col) a-out, ' = ', total
       	    else display (lin, col) a-out, ' * '.