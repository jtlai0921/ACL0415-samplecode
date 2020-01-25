// ns_file_manager_directory
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NSFileManager *fmanager = [[NSFileManager alloc] init];
		NSString *dirPath = [fmanager currentDirectoryPath];
		NSString *createPath = [dirPath stringByAppendingPathComponent: @"testDirectory"];
		NSString *movePath = [dirPath stringByAppendingPathComponent: @"moveDirectory"];
		
		// 建立指定目錄
		[fmanager createDirectoryAtPath: createPath withIntermediateDirectories:
		 YES attributes: nil error: NULL];
		
		// 更改指定目錄名稱
		[fmanager moveItemAtPath: createPath toPath: movePath error: NULL];
		
		// 列出目錄下的檔案
		NSLog(@"印出路徑: %@ 中的所有內容", dirPath);
		NSString *path;
		BOOL isDir;
		NSDirectoryEnumerator *dirEnum = [fmanager enumeratorAtPath: dirPath];
		while ((path = [dirEnum nextObject]) != nil) {
			[fmanager fileExistsAtPath:path isDirectory: &isDir];
			NSLog(@"%@名稱為%@", (isDir == YES)? @"目錄": @"檔案" , path);
		}
		
		// 刪除指定目錄
		[fmanager removeItemAtPath: movePath error: NULL];
    }
    return 0;
}
