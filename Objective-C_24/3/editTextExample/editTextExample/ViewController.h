//  editTextExample/ViewController.h

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *display;
    IBOutlet UITextField *textField;
}
@property (retain, nonatomic) IBOutlet UILabel *display;
@property (retain, nonatomic) IBOutlet UITextField *textField;
-(IBAction)updateLable:(id)sender;
-(IBAction)doneEditing:(id)sender;
@end
