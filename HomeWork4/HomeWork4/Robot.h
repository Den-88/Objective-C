//
//  Robot.h
//  HomeWork4
//
//  Created by Денис Шакуров on 05.04.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property(nonatomic, assign) NSInteger x;
@property(nonatomic, assign) NSInteger y;

- (void)run:(NSString *(^)(void))directionBlock;
- (void)printCoordinates:(NSString *)direction;

@end

NS_ASSUME_NONNULL_END
