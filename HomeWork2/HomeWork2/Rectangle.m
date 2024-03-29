//
//  Rectangle.m
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initWithWidth:(float)width height:(float)height {
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

- (float)calculateArea {
    return _width * _height;
}

- (float)calculatePerimeter {
    return 2 * (_width + _height);
}

- (void)printInfo {
    NSLog(@"Rectangle: width=%.2f, height=%.2f, area=%.2f, perimeter=%.2f", _width, _height, [self calculateArea], [self calculatePerimeter]);
}

@end
