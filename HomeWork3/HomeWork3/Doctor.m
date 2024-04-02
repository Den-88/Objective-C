//
//  Doctor.m
//  HomeWork3
//
//  Created by Денис Шакуров on 02.04.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void)preparePill {
    NSLog(@"Doctor preparing pill");
    [self.delegate takePill];
}

@end
