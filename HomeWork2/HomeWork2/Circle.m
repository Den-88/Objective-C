//
//  Circle.m
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Circle.h"

@implementation Circle

- (instancetype)initWithRadius:(float)radius {
    self = [super init];
    if (self) {
        _radius = radius;
    }
    return self;
}

- (float)calculateArea {
    return M_PI * _radius * _radius;
}

- (float)calculatePerimeter {
    return 2 * M_PI * _radius;
}

- (void)printInfo {
    NSLog(@"Circle: radius=%.2f, area=%.2f, perimeter=%.2f", _radius, [self calculateArea], [self calculatePerimeter]);
}

@end
