// ns_string2
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 連結兩字串
		NSString *str1 = @"Apple's ";
		str1 = [str1 stringByAppendingString: @"iPhone 4"];
		NSLog(@"%@", str1);
		
		// 印出特定位置字串與區間字串
		NSLog(@"%c", [str1 characterAtIndex: 4]);
		NSLog(@"%@", [str1 substringWithRange: NSMakeRange(8, 6)]);
		
		str1 = @"iMac, iPod, iPad";
		
		// 以特定字元切開字串
		NSArray *strArray = [str1 componentsSeparatedByString: @","];
		// 取代一字串
		str1 = [str1 stringByReplacingOccurrencesOfString: @"iPod" withString:
				@"MacBook Pro"];
		for (NSString *temp in strArray)
			NSLog(@"%@", [temp stringByTrimmingCharactersInSet: 
						  [NSCharacterSet whitespaceCharacterSet]]);
		NSLog(@"%@", str1);
		
    }
    return 0;
}
