//
//  ViewController.m
//  TaxCalc
//
//  Created by Chee Vue on 4/17/15.
//  Copyright (c) 2015 cvwj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = 0.075;     //California
    self.chiTax = 0.0925;   //Chicago
    self.nyTax = 0.045;     //New York

}

- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *inputText = self.priceTextField.text;
    double inputValue = inputText.doubleValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double calcResult = inputValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$ %.2f", calcResult];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double calcResult = inputValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$ %.2f", calcResult];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 2) {
        double calcResult = inputValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$ %.2f", calcResult];
    }
}



@end
