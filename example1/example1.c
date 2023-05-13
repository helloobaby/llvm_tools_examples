#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fib(int n){
    if(n == 0 || n == 1){
        return 1;
    }
    return fib(n-1) + fib(n-2);
}

int main(){
    int r = fib(5); // 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
    printf("r = %d\n", r);
    return 0;
}