//
//  day19.cpp
//  Day 19: Interfaces
//
//  Created by barusoft on 2018. 8. 14..
//

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>

/**
 divisorSum(n) 메소드의 구현은 n의 모든 제수의 합계를 반환해야 한다
 */
using namespace std;
class AdvancedArithmetic{
public:
    virtual int divisorSum(int n)=0;
};

class Calculator : public AdvancedArithmetic {
public:
    virtual int divisorSum(int n) override {
        int sum = 0;
        if ( 1 == n ) {
            return 1;
        }
        
        // Identify the divisors
        int mod = n;
        for (int i = 1 ; i < mod ; i++) {
            if (n % i) {
                // 현재 루프 몸체의 끝으로 이동
                // 현재 반복문을 일찍 종료하고자 할때 유용
                continue;
            }
            sum += i;
            mod = (n / i);
            if (mod <= i) {
                // 루프를 종료
                break;
            }
            sum += mod;
        }
        return sum;
    }
};

int main(){
    int n;
    cin >> n;
    AdvancedArithmetic *myCalculator = new Calculator();
    int sum = myCalculator->divisorSum(n);
    cout << "I implemented: AdvancedArithmetic\n" << sum;
    return 0;
}
