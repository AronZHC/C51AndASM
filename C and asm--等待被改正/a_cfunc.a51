; a_cfunc.a51 generated from: main.c
; COMPILER INVOKED BY:
;        G:\Keil_v5\C51\BIN\C51.EXE main.c OMF2 OPTIMIZE(8,SPEED) BROWSE DEBUG PRINT(.\Listings\main.lst) OBJECT(.\Objects\main.obj)


NAME	MAIN

?PR?_A_FUNC?MAIN     SEGMENT CODE 
	EXTRN	CODE (_C_FUNC)
	EXTRN	CODE (?C?ISTPTR)
	PUBLIC	_A_FUNC
; #pragma src(a_cfunc.a51) small
; 
; extern void C_FUNC(int *Ptr);
; void A_FUNC(int *Ptr)

	RSEG  ?PR?_A_FUNC?MAIN
_A_FUNC:
	USING	0
			; SOURCE LINE # 4
;---- Variable 'Ptr?040' assigned to Register 'R1/R2/R3' ----
; {
			; SOURCE LINE # 5
; *Ptr = 0x1122;
			; SOURCE LINE # 6
	MOV  	A,#011H
	MOV  	B,#022H
	LCALL	?C?ISTPTR
;     C_FUNC(Ptr);
			; SOURCE LINE # 7
	LJMP 	_C_FUNC
; END OF _A_FUNC

	END
