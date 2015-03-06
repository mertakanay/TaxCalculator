//
//  ViewController.m
//  Tax Calculator
//
//  Created by Mert Akanay on 3.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *onCalculateButtonTapped;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;


}
- (IBAction)onCalculateButtonTapped:(id)sender
{
    NSString *newText = self.priceTextField.text;
    double newValue = newText.intValue;

    if (self.segmentedControl.selectedSegmentIndex==0)
    {
        double result = newValue * self.caTax;
        NSString
        self.resultLabel.text =[NSString stringWithFormat:@"%lu", result];
    } else if (self.segmentedControl.selectedSegmentIndex==1)
    {
        double result = newValue * self.chiTax;
        NSString
        self.resultLabel.text = [NSString stringWithFormat:@"%lu", result];

    } else {
        double result = newValue * self.nyTax;
        NSString
        self.resultLabel.text = [NSString stringWithFormat:@"%lu", result];
    }

}

@end
