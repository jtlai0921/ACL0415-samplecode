//imageViewExample/ViewController.m

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

-(IBAction) pic1ButtonTapped {
    imageView.image = [UIImage imageNamed:@"1.jpg"];
}
-(IBAction) pic2ButtonTapped {
    imageView.image = [UIImage imageNamed:@"2.jpg"];
}
-(IBAction) pic3ButtonTapped {
    imageView.image = [UIImage imageNamed:@"3.jpg"];
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
