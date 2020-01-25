// archive_property_list_write
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:   @"file.plist"];
		
		// 建立dictionary，放入key-pair鍵值
		NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:
							 @"printf()", @"C",
							 @"cout <<", @"C++",
							 @"NSLog()", @"Objective-C",
							 @"System.out.print()", @"Java", nil];
		
		// 將dictionary寫入檔案path
		if([dic writeToFile: path atomically:YES] == YES)
			NSLog(@"檔案寫入成功...");
		
    }
    return 0;
}
