//
//  Doctor.h
//  HomeWork3
//
//  Created by Денис Шакуров on 02.04.2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void) preparePill;

@end

NS_ASSUME_NONNULL_END
