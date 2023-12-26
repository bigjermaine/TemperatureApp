//
//  ViewController.h
//  TemperatureApp
//
//  Created by MacBook AIR on 26/12/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *outPutLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentedControl;

- (IBAction)calculate:(id)sender;

- (IBAction)switchControlConversion:(id)sender;


@end

