//
//  ViewController.m
//  Sample020402
//
//  Created by tikomo on 2014/02/04.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
}

// GUI部品は他のクラスからアクセス出来なくていいのでここにControl + ドラッグする

// 左手でControl Key + track pad, 右手でストーリーボードから.mへ移動かな〜
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
- (IBAction)button1_onClick:(id)sender;
- (IBAction)button2_onClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UISlider *slider1;
- (IBAction)slider1_valueChanged:(id)sender;
- (IBAction)slider2_valueChanged:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField2;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1_onClick:(id)sender {
    NSLog(@"button1_onClick");
    _textField1.text = @"Hello World(1)";
    _textField1.textColor = [UIColor redColor];
}

- (IBAction)button2_onClick:(id)sender {
    NSLog(@"button2_onClick");
    _textField1.text = @"Hello World(2)";
    _textField1.textColor = [UIColor blueColor];
}
- (IBAction)slider1_valueChanged:(id)sender {
    
    // case1
    // NSLog(@"%.1f %%", _slider1.value * 100);
    
    // case2
    // NSLog(@"%.1f %%", ((UISlider *)sender).value * 100);
    
    // case3
    UISlider *mySlider = sender;
    NSLog(@"%.1f %%", mySlider.value * 100);
    
    
    _textField1.text = [NSString stringWithFormat:@"%.2f" , ((UISlider *)sender).value];
    
    
}

- (IBAction)slider2_valueChanged:(UISlider *)sender {
    _textField2.text = [NSString stringWithFormat:@"%.2f" , sender.value];
}
@end
