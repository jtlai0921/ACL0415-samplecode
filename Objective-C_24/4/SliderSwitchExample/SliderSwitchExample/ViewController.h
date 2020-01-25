//  SliderSwitchExample/ViewController.h

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *switchState;
    IBOutlet UILabel *sliderState;
}
@property (retain, nonatomic) IBOutlet UILabel *switchState;
@property (retain, nonatomic) IBOutlet UILabel *sliderState;
-(IBAction)switchChange:(id)sender;
-(IBAction)sliderChange:(id)sender;
@end
