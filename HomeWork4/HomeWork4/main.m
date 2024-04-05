//
//  main.m
//  HomeWork4
//
//  Created by Денис Шакуров on 05.04.2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [Robot new];

        [robot run:^NSString *{
            return @"up";
        }];
        [robot run:^NSString *{
            return @"right";
        }];
        [robot run:^NSString *{
            return @"right";
        }];
        [robot run:^NSString *{
            return @"up";
        }];
        [robot run:^NSString *{
            return @"down";
        }];
    }
    return 0;
}
