?PR?DELAY100 SEGMENT CODE
    PUBLIC DELAY100
        RSEG ?PR?DELAY100
            DELAY100:
            MOV R7,#10
            DEL:
            MOV R6,#20
            DJNZ R6,$
            DJNZ R7,DEL
            RET
            END