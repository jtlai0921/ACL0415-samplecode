// ns_file_handle_read
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 建立檔案路徑以及預寫入的字串
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"testFile"];
		NSLog(@"完整路徑為: %@", path);
		
		// 讀取檔案內容並印出
		NSFileHandle *in = [NSFileHandle fileHandleForReadingAtPath: path];
		NSString *inContent = [[NSString alloc] initWithData: [in readDataToEndOfFile]
													encoding: NSUTF8StringEncoding];
		NSLog(@"content:\n %@", inContent);
		

		[in closeFile];
    
    }
    return 0;
}
