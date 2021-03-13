#include "file1.h"
#include "file2.h"
#include "file3.h"
#include <stdio.h>

int main(){
    int var = 12;
    printf("%d\n",var);
    var = func1(var);
    printf("%d\n",var);
    var = func2(var);
    printf("%d\n",var);
    var = func3(var);
    printf("%d\n",var);

    return 0;
}