//
//  ViewController.m
//  CardGame1stReview
//
//  Created by キバ on 8/6/14.
//  Copyright (c) 2014 Kiba & Akamaru. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void)setFlipCount: (int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat: @"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d.", self.flipCount);
}
            
- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage: [UIImage imageNamed: @"cardBack"]
                          forState: UIControlStateNormal];
        [sender setTitle: @"" forState: UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage: [UIImage imageNamed: @"cardFront"]
                          forState: UIControlStateNormal];
        [sender setTitle: @"A♣️" forState: UIControlStateNormal];
    }
    self.flipCount++;
}


@end
