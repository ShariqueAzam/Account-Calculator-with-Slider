//
//  ViewController.m
//  Account Calculator with Slider
//
//  Created by student1 on 4/19/14.
//  Copyright (c) 2014 student1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)sliderNumberOfYearschanged:(id)sender
{
    int myNewValue = sliderNumberOfYear.value;
    textfieldNumberOfYears.text = [NSString stringWithFormat:@"%d",myNewValue];
    [self displayAmount];

}

- (IBAction)sliderInterestRateChanged:(id)sender
{
    float myNewValue = sliderInterestRate.value;
    textfieldInterestRate.text =[NSString stringWithFormat:@"%.2f",myNewValue];
    [self displayAmount];

}

- (IBAction)displayAmount{
    float principalAmount = textfieldPrincipal.text.floatValue;
    int numberOfYear = [textfieldNumberOfYears.text intValue];
    float interestRate = textfieldInterestRate.text.floatValue/100;
    float finalAmount = principalAmount * pow((1+ interestRate),numberOfYear);
    NSLog(@"%.2f", finalAmount);
    labelAmount.text = [NSString stringWithFormat:@"%.2f",finalAmount];
    [textfieldPrincipal resignFirstResponder];


}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    textfieldPrincipal.text=@"1000";
    int numOfYear = sliderNumberOfYear.value;
    textfieldNumberOfYears.text=[NSString stringWithFormat:@"%d",numOfYear];
    float interestRate = sliderInterestRate.value;
    textfieldInterestRate.text = [NSString stringWithFormat:@"%.02f",interestRate];
    
    textfieldPrincipal.delegate=self;
    textfieldInterestRate.delegate=self;
    textfieldNumberOfYears.delegate=self;
}

-(void)textFieldDidEndEditing:(UITextField *)myTextField{
    [self displayAmount];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
