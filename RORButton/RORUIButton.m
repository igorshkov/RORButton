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
        self.frame = self.bounds;
        
//       border color: black
        [self.layer setBorderWidth:2.0f];
        [self.layer setBorderColor:[UIColor blackColor].CGColor];
        
//        title color: red
        [self setTitleColor:[UIColor redColor]  forState:UIControlStateNormal];
        
//        corner: radius
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
    }
    
    return self;
}

@end
