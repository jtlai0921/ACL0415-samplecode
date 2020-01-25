// archive_property_list_read
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:
						  @"file.plist"];
		
		// 將檔案讀取至recovery，然後印出
		NSLog(@"讀取檔案: %@", path);
		NSDictionary *recovery = [NSDictionary dictionaryWithContentsOfFile: path];
		for(NSString *key in recovery)
			NSLog(@"key: %@, value: %@", key, [recovery objectForKey: key]);
	
    }
    return 0;
}
