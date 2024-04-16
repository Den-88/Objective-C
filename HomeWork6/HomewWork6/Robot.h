//
//  Robot.h
//  HomewWork6
//
//  Created by Денис Шакуров on 16.04.2024.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding>

@property(nonatomic) CGPoint point;
@property(nonatomic) NSString *name;

-(instancetype) initWithPoint:(CGPoint) point andName: (NSString*) name;

@end

NS_ASSUME_NONNULL_END
