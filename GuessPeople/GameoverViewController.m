//
//  GameoverViewController.m
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/5.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import "GameoverViewController.h"

@interface GameoverViewController ()
@property (weak, nonatomic) IBOutlet UILabel *res;

@end

@implementation GameoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"接收到的值为: %@",self.result);
    if ([self.result isEqualToString:@"YES"]) {
        self.res.text = @"你赢了";
        self.res.textColor = [UIColor greenColor];
    }
    // Do any additional setup after loading the view.
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
