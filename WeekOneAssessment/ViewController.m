//
//  ViewController.m
//  WeekOneAssessment
//
//  Created by Don Bora on 5/13/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewController.h"

@interface ViewController ()
@property(weak, nonatomic)IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onButtonPressed:(id)sender {
   // NSInteger result = [self.firstNumber.text integerValue] * [self.secondNumber.text integerValue];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    NSInteger result = [self.firstNumber.text integerValue] * [self.secondNumber.text integerValue];

    CustomViewController *nextViewController = segue.destinationViewController;

    nextViewController.theResult = result;

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
