//
//  aaaViewController.m
//  codeTest
//
//  Created by yangyang on 2020/8/10.
//  Copyright © 2020 yangyang. All rights reserved.
//

#import "aaaViewController.h"
#import "dddViewController.h"
#import "Masonry/Masonry.h"
@interface aaaViewController ()
@property(nonatomic,strong)UIButton *cc1;
@property(nonatomic,strong)UIButton *cc2;

@property(nonatomic,strong)UIButton *cc3;

@end

@implementation aaaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *a1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [a1 setTitle:@"aaaaaa" forState:UIControlStateNormal];
    a1.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    a1.backgroundColor = [UIColor grayColor];
    [a1 sizeToFit];
    _cc1 = a1;
    
    UIButton *c1 = [UIButton buttonWithType:UIButtonTypeCustom];
      [c1 setTitle:@"aaa" forState:UIControlStateNormal];
      c1.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
      c1.backgroundColor = [UIColor grayColor];
      [c1 sizeToFit];
    _cc2 = c1;
    
    UIButton *d1 = [UIButton buttonWithType:UIButtonTypeCustom];
      [d1 setTitle:@"aa" forState:UIControlStateNormal];
      d1.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
      d1.backgroundColor = [UIColor grayColor];
      [d1 sizeToFit];
    _cc3 = d1;
    
    UIStackView *stt = [[UIStackView alloc] initWithArrangedSubviews:@[a1,c1,d1]];
    stt.spacing = 10;
    stt.axis = UILayoutConstraintAxisHorizontal;
    stt.alignment = UIStackViewAlignmentFill;
    
    stt.distribution = UIStackViewDistributionFill;
    [self.view addSubview:stt];
    [stt mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.st).with.offset(50);
        make.top.equalTo(self.st.mas_bottom).with.offset(10);
        make.right.equalTo(self.view).with.offset(-10);
//        make.height.equalTo(@(30));
//        make.height.mas_equalTo(30);
//        make.right.mas_equalTo(self);
    }];
    
    [_cc1 addTarget:self action:@selector(cc1Action) forControlEvents:UIControlEventTouchUpInside];
    [_cc2 addTarget:self action:@selector(cc2Action) forControlEvents:UIControlEventTouchUpInside];

    [_cc3 addTarget:self action:@selector(cc3Action) forControlEvents:UIControlEventTouchUpInside];

    
}

-(void)cc1Action
{
    
}
-(void)cc2Action
{
    _cc2.hidden = YES;
}
-(void)cc3Action
{
    _cc2.hidden = NO;
}
- (IBAction)aaaa:(id)sender {
    
    dddViewController *vc = [dddViewController new];
       [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)b4a:(id)sender {
    
    _b4.hidden = YES;
}
- (IBAction)b:(id)sender {
 _b4.hidden = NO;
    
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
