//
//  main.m
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *figures = @[
            [[Rectangle alloc] initWithWidth: 5 height: 10],
            [[Circle alloc] initWithRadius: 7],
            [[Triangle alloc] initWithSide1: 3 side2: 4 side3: 5]
        ];
        for (Figure *figure in figures) {
            [figure printInfo];
        }
    }
    return 0;
}
