       identification division.
       program-id. muhamad fikri.
       environment division.
       data division.
       working-storage section.
       77  k pic 99.
       77  m pic 99.
       77  tot pic 9999v99.
       77  total pic zzz9.99.	
       77  a pic 9999.
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
            display (2, 6) 'MUhamad fikri'
            display (3, 6) '2ia18'
            display(5, 6) 'masukan batas tinggi segitiga: '
	    accept( , ) n
	    display (6, 6) 'hasil : ' 
            move 8 to lin
	    perform deret-baris varying k from 1 by 1 until k > n
            add 1 to lin
            display (lin, 6) 'Coba Lagi(Y/T) : ' accept( , )jwb
            if jwb = 'Y' or 'y' go to mulai.
	    stop run.	   
        deret-baris.
            move 4 to tot
            move 1 to a
            move 8 to col
            perform deret-kol varying m from 1 by 1 until m > k.
            add 1 to lin.
	deret-kol.
	    divide m by 2 giving b remainder c
	    if c = 0 perform genap
	    else perform ganjil.
	    add 6 to col. 		   
	ganjil.
            compute a = a * 2
	    compute tot = tot / a
            move a to a-out
	    move tot to total
	    if k = m display (lin, col) a-out, ' = ', total
	    else display(lin, col) a-out, ' * '.
	genap.
            compute a = a * 3
	    compute tot = tot * a
	    move a to a-out
	    move tot to total
	    if k = m display (lin, col) a-out, ' = ', total
       	    else display (lin, col) a-out, ' / '.