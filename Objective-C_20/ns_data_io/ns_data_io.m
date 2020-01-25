// ns_data_io
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		// 建立檔案路徑以及預寫入的字串
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"test.mp3"];
		NSString *newPath = [NSHomeDirectory() stringByAppendingPathComponent: @"newTest.mp3"];
		
		// 將檔案的內容讀出
		NSLog(@"讀取檔案\"%@\"...", path);
		NSData *data = [NSData dataWithContentsOfFile: path];
		if (data == nil) {
			NSLog(@"無此檔案名稱");
			return 1;
		}
		
		// 寫入檔案
		NSLog(@"寫入檔案\"%@\"...", newPath);
		BOOL isTrue = [data writeToFile: newPath atomically: TRUE];
		if (!isTrue) {
			NSLog(@"無此檔案名稱");
			return 2;
		}
		
		NSLog(@"檔案複製完成...");
    }
    return 0;
}
