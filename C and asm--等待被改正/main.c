#pragma src(a_cfunc.a51) small

extern void C_FUNC(int *Ptr);
void A_FUNC(int *Ptr)
{
*Ptr = 0x1122;
    C_FUNC(Ptr);
}

