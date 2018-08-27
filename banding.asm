.MODEL SMALL
.CODE
ORG 100h

mulai: jmp proses
nilA db 55
nilB db 70

kat0 db 'Nilai A Lebih kecil dari nilai B $'
kat1 db 'nilai A sama dengan nilai B $'
kat2 db 'nilai A lebih besar dari nilai B $'

proses:
	mov al,nilA
	cmp al,nilB
	JB Akecil	; bil A < bil B
	JE sama		; bil A = bil B 
	JA Abesar	; bil A > bil B

Akecil:
	lea dx,kat0
	jmp cetak

sama:
	lea dx,kat1
	jmp cetak

Abesar:
	lea dx,kat2
	jmp cetak

cetak:
	mov ah,09h
	int 21h
	int 20h
	
end mulai