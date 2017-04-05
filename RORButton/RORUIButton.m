//
//  RORUIButton.m
//  RORButton
//
//  Created by Ivan Gorshkov on 4/4/17.
//  Copyright © 2017 Ivan Gorshkov. All rights reserved.
//

#import "RORUIButton.h"

@implementation RORUIButton

- (id)init {
    self = [super init];
    if (self)
    {
//       border color: black
        [self.layer setBorderWidth:2.0f];
        [self.layer setBorderColor:[UIColor blackColor].CGColor];
        
//        title color: red/black
        [self setTitleColor:[UIColor redColor]  forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor]  forState:UIControlStateHighlighted];
        
//        corner: radius
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
        
//        extra padding
        self.contentEdgeInsets = UIEdgeInsetsMake(5.0f, 30.0f, 5.0f, 30.0f);
    }
    
    return self;
}

@end
