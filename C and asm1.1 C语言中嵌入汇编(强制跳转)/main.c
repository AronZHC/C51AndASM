#include <REGX51.H>
void main(void)
{
    
 P2 = 1;
  
                  
    #pragma asm    
    MOV R7,#10
    DEL:
    MOV  R6,#20
    DJNZ R6,$
    DJNZ R7,DEL;
		LJMP main
    #pragma endasm
    P2 = 0;
    
    
    
    
}