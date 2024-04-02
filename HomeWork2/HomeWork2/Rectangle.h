//
//  Rectangle.h
//  HomeWork2
//
//  Created by Денис Шакуров on 29.03.2024.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure {
    @private float _width;
    @private float _height;
}

- (instancetype)initWithWidth:(float)width height:(float)height;

@end

NS_ASSUME_NONNULL_END
