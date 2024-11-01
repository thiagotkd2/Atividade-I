/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <iostream>
#include <array>
#include <stdlib.h>
#include <stdio.h>
#include <ctime>
#include <algorithm>

int main(){
    // declaring random seed and array
    std::array<int, 5> arr;
    srand(time(NULL));
    
    // populate the array
    for(int i =0; i<5; ++i){
        arr[i] = rand()%50;
    }
    
    // print array
    for (const auto& e : arr) {
        std::cout << e << std::endl;
    }
    
    // find the max
    int max = arr[0];
    for(int i =1; i<5;i++){
        if(max<arr[i]){
            max = arr[i];
        }
    }
    
    // then, the max value is:
    std::cout<<"O valor max é: "<<max;
    
    // alternatively, we can get the max value by:
    // int maxNoLoop = *std::max_element(arr.begin(), arr.end());
    // std::cout << "O valor max é:  " << maxElement << std::endl;
    
    
    return 0;
}