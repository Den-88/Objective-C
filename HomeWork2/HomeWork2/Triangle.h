//
//  Triangle.h
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure {
    @private float _side1;
    @private float _side2;
    @private float _side3;
}

- (instancetype)initWithSide1:(float)side1 side2:(float)side2 side3:(float)side3;

@end

NS_ASSUME_NONNULL_END
