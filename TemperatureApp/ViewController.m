//
//  ViewController.m
//  TemperatureApp
//
//  Created by MacBook AIR on 26/12/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchControlConversion:(id)sender {
    if (self.SegmentedControl.selectedSegmentIndex == 0) {
        self.enterLabel.text = @"Enter Faherenheit";
        self.textField.text = @"";
        self.outPutLabel.text = @"0 celcius";
    }else if  (self.SegmentedControl.selectedSegmentIndex == 1){
        self.enterLabel.text = @"Enter Celcius";
        self.textField.text = @"";
        self.outPutLabel.text = @"0 Faherenheit";
    }
}

- (IBAction)calculate:(id)sender {
    if (self.SegmentedControl.selectedSegmentIndex == 0) {
        
        double faherenHeit = [self.textField.text doubleValue];
        
        double celcius = (faherenHeit - 32)/1.8;
        
        self.outPutLabel.text =  [NSString stringWithFormat:@"%3.2f Celscius",celcius];
        
        if (celcius > 120) {
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
        }else if  (celcius < 120 && celcius > 80 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        }else if  (celcius < 80 && celcius > 60 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        }else if  (celcius < 60 && celcius > 40 ){
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        }else if  (celcius < 40 && celcius > 20 ){
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if  (celcius < 20 && celcius > 10 ){
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        } else if  (celcius == 0 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
        }
    }else {
        
        double celcius = [self.textField.text doubleValue];
        
        double faherenHeit =  celcius * 1.8 + 32;
        
        self.outPutLabel.text =  [NSString stringWithFormat:@"%3.2f  faherenheit", faherenHeit];
        
        
        if (celcius > 120) {
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
        }else if  (celcius < 120 && celcius > 80 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        }else if  (celcius < 80 && celcius > 60 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        }else if  (celcius < 60 && celcius > 40 ){
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        }else if  (celcius < 40 && celcius > 20 ){
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if  (celcius < 20 && celcius > 10 ){
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        }else if  (celcius == 0 ) {
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    
}

@end
