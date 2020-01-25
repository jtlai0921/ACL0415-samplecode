// archive_nsKeyedArchiver_write
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"array.plist"];
		
		NSArray *arr = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
		
		if([NSKeyedArchiver archiveRootObject: arr toFile: path] == YES)
			NSLog(@"檔案寫入成功...");
    
    }
    return 0;
}
