//
//  ViewController.h
//  Santa Monica
//
//  Created by John Blanchard on 10/25/14.
//  Copyright (c) 2014 John Blanchard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TwitterKit/TwitterKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)tweetButton:(id)sender;

@end

