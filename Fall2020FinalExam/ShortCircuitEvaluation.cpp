#include <iostream>
#include <string>
using namespace std;

int main() {
    int a = 5;
    int b = 3;
    while ((a > b) &&  (b++)/3) {
       a--; 
    }
    cout<<"a="<<a<<" b="<<b;
    return 0;
}
