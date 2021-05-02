unsigned int example(unsigned char i)
{return i*i;}

main()
{
example(80);
    #pragma asm
    DJNZ R7,$
    DJNZ R6,$
    #pragma endasm
    while(1);   
}