//
//  aaaViewController.m
//  codeTest
//
//  Created by yangyang on 2020/8/10.
//  Copyright © 2020 yangyang. All rights reserved.
//

#import "aaaViewController.h"
#import "dddViewController.h"
@interface aaaViewController ()

@end

@implementation aaaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)aaaa:(id)sender {
    
    dddViewController *vc = [dddViewController new];
       [self presentViewController:vc animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
