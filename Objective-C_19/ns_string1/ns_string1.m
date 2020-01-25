//ns_string1
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		// 以兩種不同方式建立字串
		char *str = "iPhone";
		NSString *str1 = [[NSString alloc] initWithUTF8String: str];
		NSString *str2 = [[NSString alloc] initWithString: @"MacBook Pro"];
		
		// 印出字串以及其長度
		NSLog(@"%@ and %@", str1, str2);
		NSLog(@"length str1:%d, str2:%d", [str1 length], [str2 length]);
		

		
		// 建立兩數值變數int與double
		int intNumber = 10;
		double doubleNumber;
		
		// 以int變數初始化
		str1 = [NSString stringWithFormat: @"%i", intNumber];
		
		// 字串轉換為double
		doubleNumber = [str1 doubleValue];
		
		NSLog(@"\nstr1: %@", str1);	
		NSLog(@"將str1字串轉換為double");
		NSLog(@"str1: %lf", doubleNumber);
	
    }
    return 0;
}
