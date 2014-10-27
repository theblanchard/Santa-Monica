//
//  ViewController.m
//  Santa Monica
//
//  Created by John Blanchard on 10/25/14.
//  Copyright (c) 2014 John Blanchard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self changeImage];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeImage) name:UIApplicationDidEnterBackgroundNotification object:[UIApplication sharedApplication]];
}

-(void)changeImage {
    
    NSArray *images = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", @"6.png", @"7.png", @"8.png", @"9.png", @"10.png", @"11.png", @"12.png", @"13.png", @"14.png", @"15.png", @"16.png", @"17.png", @"18.png", nil];
    unsigned long count = [images count];
    int index = arc4random() % count;
    
    imageView.image = [UIImage imageNamed:[images objectAtIndex:index]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [self changeImage];
}

- (IBAction)tweetButton:(id)sender {
    TWTRComposer *composer = [[TWTRComposer alloc] init];
    
    [composer setText:@"Another beautiful day in Santa Monica. #smweather"];
    [composer setImage:self.imageView.image];
    
    [composer showWithCompletion:^(TWTRComposerResult result) {
        if (result == TWTRComposerResultCancelled) {
            NSLog(@"Tweet composition cancelled");
        }
        else {
            NSLog(@"Sending Tweet!");
        }
    }];
}

@end
