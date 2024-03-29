//
//  Circle.h
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure {
    @private float _radius;
}

- (instancetype)initWithRadius:(float)radius;

@end

NS_ASSUME_NONNULL_END
