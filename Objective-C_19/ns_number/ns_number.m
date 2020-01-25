//ns_number
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		// 以numberWith*建立
		NSNumber *intNumber = [NSNumber numberWithInt: 100];
		NSNumber *charNumber = [NSNumber numberWithChar: 'a'];
		NSNumber *doubleNumber = [NSNumber numberWithDouble: 100.11];
		
		// 以對應方法印出內容
		NSLog(@"intNumber(%%i): %i", [intNumber intValue]);
		NSLog(@"charNumber(%%c): %c", [charNumber charValue]);
		NSLog(@"doubleNumber(%%g): %g", [doubleNumber doubleValue]);
		
		// 將floatNumber設定為最大的float數值
		NSNumber *floatNumber = [NSNumber numberWithFloat: FLT_MAX];
			
		// 超過intValue的最大數值，結果會為0
		NSLog(@"doubleValue: %g, intValue: %i", [floatNumber doubleValue], 
			  [floatNumber intValue]);
		
		// 以c的概念為基礎，凡大於1者，皆為1
		NSLog(@"floatNumber(boolean): %d", [floatNumber boolValue]);
	
    }
    return 0;
}
