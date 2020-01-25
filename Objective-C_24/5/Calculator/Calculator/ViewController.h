//  Calculator/ViewController.h

#import <UIKit/UIKit.h>
#import "Calculation.h"

@interface ViewController : UIViewController {
    IBOutlet UILabel *display_label;
    Calculation *cal;               //建立Calculation的cal物件變數
    bool isFirstDigit;              //判斷是否是第一個數字
    bool hasTapEqual;               //判斷是否按下等於
    float operand;                  //運算元
    float result;                   //結果
    int digitCount;                 //位數
    int digit;                      //按鈕按下的數字
}

@property (retain, nonatomic) IBOutlet UILabel *display_label;
-(void) processCalc:(char)op;
-(void) displayProcess:(float)num;
//按鈕事件處理
-(IBAction)tapDigit:(id)sender;
-(IBAction)tapPlus:(id)sender;
-(IBAction)tapMinus:(id)sender;
-(IBAction)tapMultiply:(id)sender;
-(IBAction)tapDivide:(id)sender;
-(IBAction)tapAC:(id)sender;
-(IBAction)tapEqual:(id)sender;

@end


