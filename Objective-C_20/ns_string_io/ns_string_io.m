// ns_string_io
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		// 建立檔案路徑以及預寫入的字串
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:
						  @"Documents/testFile"];
		NSLog(@"完整路徑為: %@", path);
		NSString *wContent = @"Hello world!!";
		
		// 將字串寫入檔案
		[wContent writeToFile: path atomically: YES encoding: NSUTF8StringEncoding
						error: NULL];
		
		// 查看寫入的檔案內容
		NSString *rContent = [NSString stringWithContentsOfFile: path encoding:
							  NSUTF8StringEncoding error: NULL];
		NSLog(@"content: \n%@", rContent);
		
    }
    return 0;
}