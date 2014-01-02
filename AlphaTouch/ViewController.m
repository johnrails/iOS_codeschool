//
//  ViewController.m
//  AlphaTouch
//
//  Created by John Davalos on 12/31/13.
//  Copyright (c) 2013 John Davalos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];

    //Label stuff
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,30,200,44)];
    firstLabel.text = @"Hello, welcome to my butt.";
    firstLabel.backgroundColor = [UIColor blueColor];
    [self.view addSubview:firstLabel];

    //Button stuff
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton.frame = CGRectMake(100,100,100, 44);
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal]; //Set the button title
    [self.fiftyPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.fiftyPercentButton];
    
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton.frame = CGRectMake(100,300,100, 44);
    [self.hundredPercentButton setTitle:@"Make 100%" forState:UIControlStateNormal]; //Set the button title
    [self.hundredPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.hundredPercentButton];

}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"button pressed, sender: %@", sender);
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = 0.5;
    }else{
        self.view.alpha = 1;
    }
    //self.view.alpha = ((double)arc4random() / 0x100000000);
}
@end
