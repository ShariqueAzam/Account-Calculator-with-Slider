//
//  ViewController.h
//  Account Calculator with Slider
//
//  Created by student1 on 4/19/14.
//  Copyright (c) 2014 student1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *textfieldPrincipal;
    IBOutlet UITextField *textfieldNumberOfYears;
    IBOutlet UISlider *sliderNumberOfYear;
    IBOutlet UITextField *textfieldInterestRate;
    IBOutlet UISlider *sliderInterestRate;
    IBOutlet UIButton *buttonCalculate;
    IBOutlet UILabel *labelAmount;

}

- (IBAction) sliderNumberOfYearschanged: (id) sender;
- (IBAction) sliderInterestRateChanged: (id) sender;
-(IBAction) displayAmount;

@end
