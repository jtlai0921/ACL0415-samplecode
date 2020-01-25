//  editTextExample/ViewController.m

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display,textField;

-(IBAction)doneEditing:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)updateLable:(id)sender{
    display.text = textField.text;
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
