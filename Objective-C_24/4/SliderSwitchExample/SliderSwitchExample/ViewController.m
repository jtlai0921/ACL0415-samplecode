//  SliderSwitchExample/ViewController.m

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize switchState,sliderState;
-(IBAction)switchChange:(id)sender{
    UISwitch *mySwitch = (UISwitch *)sender;
    if (mySwitch.on) {
        switchState.text = @"Switch is ON!";
    }else{
        switchState.text = @"Switch is OFF!";
    }
    
}
-(IBAction)sliderChange:(id)sender{
    UISlider *mySlider = (UISlider *)sender;
    int number = (int)(mySlider.value+0.5f);
    NSString *state = [[NSString alloc] initWithFormat:@"%d",number];
    sliderState.text = state;

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
