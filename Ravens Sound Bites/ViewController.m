//
//  ViewController.m
//  Ravens Sound Bites
//
//  Created by Alec Pulianas on 2/11/13.
//  Copyright (c) 2013 Alec Pulianas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)playSound:(id)sender {
    SystemSoundID soundID;
    NSString *buttonName = [sender currentTitle];
    NSString *soundFile = [[NSBundle mainBundle]pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)
                                     [NSURL fileURLWithPath: soundFile], &soundID); 
    AudioServicesPlaySystemSound(soundID);
}
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


@end
