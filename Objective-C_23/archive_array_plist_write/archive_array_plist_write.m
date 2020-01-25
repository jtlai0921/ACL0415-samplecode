// archive_array_plist_write
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"file.plist"];
		
		// 建立陣列
		NSArray *arr = [NSArray arrayWithObjects:   @"C",
						@"C++",
						@"Objective-C",
						@"Java", nil];
						
		// 將array的資料寫入檔案path
		if([arr writeToFile: path atomically:YES] == YES)
		NSLog(@"檔案寫入成功...");
					
	}
	return 0;
}
