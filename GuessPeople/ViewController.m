//
//  ViewController.m
//  GuessPeople
//
//  Created by 罗毅豪 on 2020/5/4.
//  Copyright © 2020 罗毅豪. All rights reserved.
//

#import "ViewController.h"
#import "Game.h"

@interface ViewController ()
{
    Game * _game;
    NSArray * _peopleList;
    int _count;
    int _currentID;
    NSString * _currentName;
    NSString * _res;
}
@property (weak, nonatomic) IBOutlet UITextField *inputName;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *commitBtn;
@property (weak, nonatomic) IBOutlet UILabel *tip;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _game = [[Game alloc]init];
    _peopleList = [_game getPeopleList];
    _count = 0;
    [self showImage];
}

- (IBAction)commit:(id)sender {
//    NSLog(@"%@",self.inputName.text);
    NSString * peopleName = self.inputName.text;
//    NSLog(@"%@",[NSString stringWithFormat:@"结果是：%i%@",_currentID,peopleName]);
    if([_game queryWithID:_currentID AndName:peopleName]){
        self.tip.text = @"你猜对了";
        self.tip.textColor = [UIColor greenColor];
        _count++;
        if(_count==_peopleList.count){
            _res = @"YES";
            [self performSegueWithIdentifier:@"gameover" sender:sender];
            self.commitBtn.hidden = YES;
            return;
        }
        [self showImage];
    }else{
        self.tip.text = @"你猜错了";
        self.tip.textColor = [UIColor redColor];
    }
    self.inputName.text = @"";
}

- (void)showImage{
    People * p = _peopleList[_count];
    _currentID = [p getPeopleId];
    _currentName = [NSString stringWithFormat:@"人物%d",_currentID];
    self.image.image = [UIImage imageNamed:_currentName];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   if([segue.identifier isEqualToString:@"gameover"]) //"gameover"是segue连线的标识
    {
       id theSegue = segue.destinationViewController;
      [theSegue setValue:_res forKey:@"result"];
    }
}
@end
