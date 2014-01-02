//
//  ViewController.h
//  AlphaTouch
//
//  Created by John Davalos on 12/31/13.
//  Copyright (c) 2013 John Davalos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak,nonatomic) UIButton *fiftyPercentButton;
@property (weak,nonatomic) UIButton *hundredPercentButton;
- (void)buttonPressed:(UIButton *)sender;
@end
