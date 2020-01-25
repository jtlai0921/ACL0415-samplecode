//ns_mutable_string
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NSString *str1 = @"str1";
		NSMutableString *str2 = [NSMutableString stringWithCapacity: 10];
		
		NSLog(@"str1的記憶體位址為: %lx, 內容為: %@", str1, str1);
		NSLog(@"str2的記憶體位址為: %lx, 內容為: %@", str2, str2);
		
		str1 = [str1 stringByAppendingString: @" strOne."];
		[str2 appendString: @"strTwo."];
		
		NSLog(@"str1的記憶體位址為: %lx, 內容為: %@", str1, str1);
		NSLog(@"str2的記憶體位址為: %lx, 內容為: %@", str2, str2);
		
		[str2 deleteCharactersInRange: NSMakeRange(3, 3)];
		NSLog(@"str2的記憶體位址為: %lx, 內容為: %@", str2, str2);
		
		[str2 insertString: @"TWOTWOTWOTWO" atIndex: 1];
		NSLog(@"str2的記憶體位址為: %lx, 內容為: %@", str2, str2);
		
    }
    return 0;
}
