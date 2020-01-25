//output35
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSLog(@"%i %i %i", 123, 123456, 12);
		NSLog(@"%i %i %i", 12, 123, 1234567);
		
		NSLog(@"\n利用欄位寬加以輸出(向右靠齊): ");
		NSLog(@"%8i %8i %8i", 123, 123456, 12);
		NSLog(@"%8i %8i %8i", 123, 123, 1234567);
		
		NSLog(@"\n利用欄位寬加以輸出(向左靠齊): ");    
		NSLog(@"%-8i %-8i %-8i", 123, 123456, 12);
		NSLog(@"%-8i %-8i %-8i", 123, 123, 1234567);
    }
    return 0;
}
