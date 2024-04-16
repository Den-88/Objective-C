//
//  Robot.m
//  HomewWork6
//
//  Created by Денис Шакуров on 16.04.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithPoint:(CGPoint)point andName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
        self.point = point;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeFloat:self.point.x forKey:@"pointX"];
    [coder encodeFloat:self.point.y forKey:@"pointY"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.name = [coder decodeObjectForKey:@"name"];
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.point = CGPointMake(x, y);
    }
    return self;
}

@end
