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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"addRorButton started \n");
    [self addRorButton];
    NSLog(@"addRorButton done \n");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addRorButton {

//    RORUIButton *rorButton = [RORUIButton buttonWithType:UIButtonTypeSystem];
    
    RORUIButton *rorButton = [[RORUIButton alloc] init];
    
    [rorButton setTitle:@" ROR! "
               forState:UIControlStateNormal];
    
    [rorButton sizeToFit];
    
    rorButton.center = CGPointMake(320/2, 60);
    
    [rorButton addTarget:self action:@selector(rorButtonClicked:)
        forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:rorButton];
}

-(void) rorButtonClicked:(UIButton*)sender {
    NSLog(@"you clicked on button %ld", (long)sender.tag);
}


@end
