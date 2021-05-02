NAME	MAIN

?PR?A_call?MAIN      SEGMENT CODE 
?DT?A_call?MAIN      SEGMENT DATA OVERLAYABLE
?BI?A_call?MAIN      SEGMENT BIT OVERLAYABLE
	EXTRN	CODE (_cfunc)
	EXTRN	DATA (?_cfunc?BYTE)
	EXTRN	BIT (?_cfunc?BIT)
	PUBLIC	A_call

	RSEG  ?DT?A_call?MAIN
?A_call?BYTE:
        v_a?040:   DS   2
	ORG  2
        v_b?041:   DS   1
	ORG  3
        v_d?043:   DS   4
	ORG  7
      A_ret?045:   DS   4

	RSEG  ?BI?A_call?MAIN
?A_call?BIT:
        v_c?042:   DBIT   1
	ORG  1
        v_e?044:   DBIT   1


	RSEG  ?PR?A_call?MAIN
A_call:
	USING	0
		
	MOV  	C,v_c?042
	MOV  	?_cfunc?BIT,C
	MOV  	?_cfunc?BYTE+06H,v_d?043+03H
	MOV  	?_cfunc?BYTE+05H,v_d?043+02H
	MOV  	?_cfunc?BYTE+04H,v_d?043+01H
	MOV  	?_cfunc?BYTE+03H,v_d?043
	MOV  	C,v_e?044
	MOV  	?_cfunc?BIT+01H,C
	MOV  	R5,v_b?041
	MOV  	R7,v_a?040+01H
	MOV  	R6,v_a?040
	LCALL	_cfunc
	MOV  	A_ret?045+03H,R7
	MOV  	A_ret?045+02H,R6
	MOV  	A_ret?045+01H,R5
	MOV  	A_ret?045,R4

			
	RET  	


	END
