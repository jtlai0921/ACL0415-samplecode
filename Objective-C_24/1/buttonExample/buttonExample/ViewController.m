//buttonExample/ViewController.m
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;
- (IBAction)tapA {
    myLabel.text = @"我按了A按鈕";
}
- (IBAction)tapB {
    myLabel.text = @"我按了B按鈕";
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
