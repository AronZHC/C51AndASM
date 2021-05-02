#include <REG52.H>
#include <stdio.h>
extern char asm(char c,char b);
bit VAL;
void main (void)
{
    char out=0x49;
    char direct;
    char key;
    SCON  = 0x50;/* SCON: mode 1, 8-bit UART, enable rcvr */
                 //10λ�첽���������ɱ䡣REN=1�������������
    TMOD |= 0x20;/* TMOD: timer 1, mode 2, 8-bit reload */
                 //��ʱ��1������ģʽ2
    TH1   = 0xfd;/* TH1: reload value for 9600 baud @ 11.0592MHz */
    TR1   = 1;   /* TR1: timer 1 run */
    TI    = 1;   /* TI: set TI to send first char of UART */
    VAL   = 0;
    while (1)
    {
        key=getchar();
        if(key=='R')
        {
            direct=0X01;
            out=asm(out,direct);/*����ӳ������*/
            printf ("Right rotate\n");
        }
        if(key=='L')
        {
            direct=0X02;
            out=asm(out,direct);/*����ӳ������*/
            printf ("Left rotate\n");
        }
        printf("%bx\n",out);
    }
}

