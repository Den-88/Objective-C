//
//  Robot.m
//  HomeWork4
//
//  Created by Денис Шакуров on 05.04.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(NSString*(^)(void))directionBlock {
    NSString *direction = directionBlock();
    if ([direction isEqualToString:@"up"]) {
        _y++;
    } else if ([direction isEqualToString:@"down"]) {
        _y--;
    } else if ([direction isEqualToString:@"left"]) {
        _x--;
    } else if ([direction isEqualToString:@"right"]) {
        _x++;
    } else {
        NSLog(@"Unknown direction");
    }
    [self printCoordinates:direction];
}

- (void)printCoordinates:(NSString *)direction {
    NSLog(@"Moved %@. Current position: (%i, %i)", direction, _x, _y);
}

@end
