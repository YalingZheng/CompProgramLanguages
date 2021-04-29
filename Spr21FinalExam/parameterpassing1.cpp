#include <iostream>
#include <string>
using namespace std;

void swapnum(int* num1, int* num2){
    int temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}

void swapnumVer2(int num1, int num2){
    int temp = num1;
    num1 = num2;
    num2 = temp;
}

int main() {
    int a = 5;
    int b = 3;
    swapnum(&a,&b);
    cout<<"a="<<a<<" b="<<b<<endl;
    
    int c = 5;
    int d = 3;
    swapnumVer2(c,d);
     cout<<"c="<<c<<" d="<<d;
    return 0;
}
