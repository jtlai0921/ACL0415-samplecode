// archive_array_plist_read
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"file.plist"];
		
		// 將檔案讀取至recovery，然後印出
		NSLog(@"讀取檔案: %@", path);
		NSArray *recovery = [NSArray arrayWithContentsOfFile: path];
		for(NSString *element in recovery)
			NSLog(@"value: %@", element);
    }
    return 0;
}
