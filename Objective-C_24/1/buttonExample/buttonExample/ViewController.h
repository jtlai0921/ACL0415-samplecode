// buttonExample/ViewController.h
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *myLabel;
}
@property (retain, nonatomic) UILabel *myLabel;

-(IBAction) tapA;
-(IBAction) tapB;

@end
