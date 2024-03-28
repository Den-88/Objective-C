//
//  main.m
//  HomeWork1
//
//  Created by Денис Шакуров on 27.03.2024.
//

#import <Foundation/Foundation.h>
#include <math.h>

NSArray *solveQuadraticEquation(double a, double b, double c) {
    double discriminant = b * b - 4 * a * c;
    if (discriminant < 0) {
        return @[@"No real roots"];
    } else if (discriminant == 0) {
        double root = -b / (2 * a);
        return @[@(root)];
    } else {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);
        return @[@(root1), @(root2)];
    }
}

int findMax(int a, int b, int c) {
    int max = a;
    if (b > max) {
        max = b;
    }
    if (c > max) {
        max = c;
    }
    return max;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double a1 = 1, b1 = -8, c1 = 12;
        NSArray *roots1 = solveQuadraticEquation(a1, b1, c1);
        NSLog(@"Equation 1: x^2 - 8x + 12 = 0");
        NSLog(@"Roots: %@", roots1);
        
        double a2 = 12, b2 = -4, c2 = 2;
        NSArray *roots2 = solveQuadraticEquation(a2, b2, c2);
        NSLog(@"Equation 2: 12x^2 - 4x + 2 = 0");
        NSLog(@"Roots: %@", roots2);
        
        double a3 = 1, b3 = -100, c3 = -2;
        NSArray *roots3 = solveQuadraticEquation(a3, b3, c3);
        NSLog(@"Equation 3: x^2 - 100x - 2 = 0");
        NSLog(@"Roots: %@", roots3);
        
        int num1, num2, num3;
        NSLog(@"Enter three numbers:");
        scanf("%d %d %d", &num1, &num2, &num3);
        
        int maximum = findMax(num1, num2, num3);
        NSLog(@"The maximum number is: %d", maximum);
    }
    return 0;
}
