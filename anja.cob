       identification division.
       program-id. ia20A.
       environment division.
       data division.
       working-storage section.
       77  i pic 99.
       77  j pic 99.
	   77  x pic 99.
       77  tot pic s9999.
       77  total pic 999.
       77  a pic 999.
       77  a-out pic zzz.
       77  b pic 99.
       77  c pic 99.
       77  d1 pic 999.
       77  d2 pic 999.
       77  d3 pic 999.
       77  n pic 99.
       77  jwb    pic a.
       screen section.
       01  bersih.
           02 blank screen.
       procedure division.
       mulai.
           display bersih
           display(5, 6) 'masukan batas deret <maks 9>: '
           accept( , ) n
           display (6, 6) 'deret : '
           move 7 to lin
           move 0 to tot
           perform penyebut varying j from 1 by 1 until j > n.
           perform deret varying i from 1 by 1 until i > n.
           display (10, 6) 'Coba Lagi(Y/T) : ' accept( , ) jwb
           if jwb = 'Y' or 'y' go to mulai.
           stop run.
       deret.
           compute a = 3 ** i
           move a to a-out
           divide i by 2 giving b remainder c
           if c = 0 perform genap
           else perform ganjil.
		   
       penyebut.
           compute x = 3 ** j.

       ganjil.
           compute d2 = x / a	   
           compute d3 = 1 * d2
           compute tot = tot + d3
		   display (15, ) d3
           move tot to total
           if i = n
           display (lin, ) "1/", a-out, ' = ', total, "/", x
           else display(lin, ) "1/", a-out, ' - '.
		   
       genap.
           compute d2 = x / a	
           compute d3 = 1 * d2
           compute tot = tot - d3
		   display (15, ) d3
           move tot to total
           if i = n
           display (lin,  ) "1/", a-out, ' = ', total, "/", x
           else display (lin, ) "1/", a-out, ' + '.