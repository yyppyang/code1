//
//  ViewController.m
//  codeTest
//
//  Created by yangyang on 2020/8/10.
//  Copyright © 2020 yangyang. All rights reserved.
//

#import "ViewController.h"
#import "aaaViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btna:(id)sender {
    
    aaaViewController *vc = [aaaViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
