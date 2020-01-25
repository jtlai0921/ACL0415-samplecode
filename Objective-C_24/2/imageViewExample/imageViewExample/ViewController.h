// imageViewExample/ViewController.h

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *imageView;
}

-(IBAction) pic1ButtonTapped;
-(IBAction) pic2ButtonTapped;
-(IBAction) pic3ButtonTapped;
@property (retain, nonatomic) UIImageView *imageView;
@end
