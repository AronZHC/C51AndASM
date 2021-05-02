extern void A_FUNC(int *);

void c_func(int *iptr)
{
*iptr = 0x9988;
}
    void main(void)
    {
    idata int min = 0x2211;
        while(1)
        {
        A_FUNC(&min);
        min = 0x6655;
        }
    }
