?PR?_DELAY?DELAY SEGMENT CODE
    PUBLIC _DELAY
        RSEG ?PR?_DELAY?DELAY
            _DELAY:
            DJNZ R4,$
            DJNZ R5,_DELAY
            DJNZ R7,$
            RET
            END