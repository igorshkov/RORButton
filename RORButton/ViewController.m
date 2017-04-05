//
//  ViewController.m
//  RORButton
//
//  Created by Ivan Gorshkov on 4/4/17.
//  Copyright © 2017 Ivan Gorshkov. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end


@implementation ViewController {
    CGFloat      width;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    width = [UIScreen mainScreen].bounds.size.width;
    
    [self  addRorButton];
    
    self.rorButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^(id _) {
        NSLog(@"button was pressed!");
        return [RACSignal empty];
    }];
}

- (void)addRorButton {
   
    
    self.rorButton = [[RORUIButton alloc] init];
    
    [self.rorButton setTitle:@"ROR" forState:UIControlStateNormal];
    
    [self.rorButton sizeToFit];
    
    self.rorButton.center = CGPointMake(width/2, 60);
    
    [self.view addSubview:self.rorButton];
}

@end
