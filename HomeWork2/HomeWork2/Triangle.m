//
//  Triangle.m
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Triangle.h"

@implementation Triangle

- (instancetype)initWithSide1:(float)side1 side2:(float)side2 side3:(float)side3 {
    self = [super init];
    if (self) {
        _side1 = side1;
        _side2 = side2;
        _side3 = side3;
    }
    return self;
}

- (float)calculateArea {
    float p = [self calculatePerimeter] / 2;
    return sqrtf(p * (p - _side1) * (p - _side2) * (p - _side3));
}

- (float)calculatePerimeter {
    return _side1 + _side2 + _side3;
}

- (void)printInfo {
    NSLog(@"Triangle: side1=%.2f, side2=%.2f, side3=%.2f, area=%.2f, perimeter=%.2f", _side1, _side2, _side3, [self calculateArea], [self calculatePerimeter]);
}

@end
