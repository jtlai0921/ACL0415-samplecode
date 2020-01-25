// ns_file_manager
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		// 建立NSFileManager類別
		NSFileManager *fmanager = [[NSFileManager alloc] init];
		
		// 儲存系統暫存目錄的路徑
		NSString *dirPath = NSTemporaryDirectory();
		NSLog(@"暫存檔路徑: %@", dirPath);
		
		// 新檔案建立的路徑與名稱
		NSString *newFile = [dirPath stringByAppendingPathComponent: @"testFile"];
		
		// 若testFile檔案不存在，建立此檔案
		if ([fmanager fileExistsAtPath: newFile] == YES)
			NSLog(@"檔案testFile已存在!!");
		else
			[fmanager createFileAtPath: newFile contents: nil attributes: nil];
		
		// 取得並列出testFile的屬性
		NSDictionary *attr = [fmanager attributesOfItemAtPath: newFile error: NULL];
		NSLog(@"\n印出testFile的屬性");
		for(NSString *tempAttr in attr)
			NSLog(@"%@ - %@", tempAttr, [attr objectForKey: tempAttr]);
		
		// 移除testFile檔案
		NSLog(@"\n移除testFile檔案...");
		[fmanager removeItemAtPath: newFile error: NULL];
    }
    return 0;
}
