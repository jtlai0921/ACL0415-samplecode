// ns_file_handle_write
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		// 建立檔案路徑以及預寫入的字串
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"testFile"];
		NSLog(@"完整路徑為: %@", path);
		NSString *content1 = @"*iPod** MacBook Pro";
		
		// 建立一個具有Apple內容的檔案
		NSData *data = [@"Apple" dataUsingEncoding: NSUTF8StringEncoding];
		[[NSFileManager defaultManager] createFileAtPath:path contents:data attributes:nil];
		
		// 開啟檔案
		NSFileHandle *out = [NSFileHandle fileHandleForWritingAtPath: path];
		
		// 移到檔案結尾，並寫入字串
		[out seekToEndOfFile];
		[out writeData: [content1 dataUsingEncoding: NSUTF8StringEncoding]];
		
		// offset為5，表示將檔案指標指到第六個元素的地方 
		NSString *content2 = @"$iPhone";
		[out seekToFileOffset: 5];
		[out writeData: [content2 dataUsingEncoding: NSUTF8StringEncoding]];
		
		NSLog(@"檔案寫入完畢...");
		
		// 關閉檔案
		[out closeFile];
    }
    return 0;
}
