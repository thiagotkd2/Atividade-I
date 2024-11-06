#include <iostream>
#include <array>
int main(){
    std::array<int, 7> arr = {0, 20, 1, 0, 16, 1, 10};
    int max = arr[0];
    for(int i =1; i<5;i++){
        if(max<arr[i]){
            max = arr[i];
        }
    }
    std::cout<<"O valor max é: "<<max;
    return 0;
}
