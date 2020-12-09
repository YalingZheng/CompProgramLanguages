#include <iostream>
#include <string>
using namespace std;

string myname;

string changeName(string prefix){
    myname = prefix + " " + myname;
    return myname;
}

int main() {
    myname = "Yu";
    string outputname = "old name: " + myname + " new name: " + changeName("Dr.");
    cout<<outputname<<endl; 
    return 0;
}
