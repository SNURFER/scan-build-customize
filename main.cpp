#include "test.h"

int main()
{
    int *tmp = new int(3);
    int *tmp1 = new int(3);
    int *tmp2 = new int(3);
    int *tmp3 = new int(3);
    int *tmp4 = new int(3);
    int *tmp5 = new int(3);
    int *tmp6 = new int(3);
    int *tmp7 = new int(3);
    delete tmp2;
    delete tmp4;
    TEST test;
    test.Print();
    return 0;
}
