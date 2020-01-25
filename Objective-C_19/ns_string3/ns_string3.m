// ns_string3
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		// 比較字串是否相等
		NSString *str1 = @"Hello World!!";
		
		if ([str1 isEqualToString: @"Hello World!!"] == YES)
			NSLog(@"same!!");
		else
			NSLog(@"different!!");
		
		// 計算字串的排序
		str1 = @"Hello Today!!";
		NSComparisonResult result = [str1 compare: @"Hello World!!"];
		if (result == NSOrderedAscending)
			NSLog(@"遞增!!");
		else if (result == NSOrderedDescending)
			NSLog(@"遞減!!");
		else
			NSLog(@"相同!!");
		
		// 字串大小寫轉換
		NSString *upperCase = [str1 uppercaseString];
		NSString *lowerCase = [str1 lowercaseString];
		NSLog(@"upperCase: %@", upperCase);
		NSLog(@"lowerCase: %@", lowerCase);
    
    }
    return 0;
}
