// ns_number1
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NSNumber *intNumber = [[NSNumber alloc] initWithInt: 888];
		NSNumber *doubleNumber = [[NSNumber alloc] initWithDouble: 1000];
		
		// 以isEqualToNumber: 比較兩個NSNumber類別的內容是否相等
		if ([intNumber isEqualToNumber:doubleNumber] == YES)
			NSLog(@"intNumber 與 doubleNumber 相等");
		else
			NSLog(@"intNumber 與 doubleNumber 不相等");
		
		// 進行兩者的比較，使用Result變數暫存結果
		NSComparisonResult Result = [intNumber compare: doubleNumber];
		
		// 回傳結果若符合，則印出對應訊息
		if ( Result == NSOrderedAscending)
			NSLog(@"intNumber 與 doubleNumber 的比較為遞增");
		else if ( Result == NSOrderedDescending)
			NSLog(@"intNumber 與 doubleNumber 的比較為遞減");
		else
			NSLog(@"intNumber 與 doubleNumber 的比較具同樣順序");
    
    }
    return 0;
}
