// archive_nsKeyedArchiver_read
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"array.plist"];
		
		NSLog(@"進行讀檔: %@", path);
		NSArray *recovery = [NSKeyedUnarchiver unarchiveObjectWithFile: path];
		for(NSString *tempStr in recovery)
			NSLog(@"%@", tempStr);
		
    }
    return 0;
}
