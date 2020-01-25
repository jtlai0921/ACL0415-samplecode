// archive_nsdata_read
#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSString *path = [NSHomeDirectory() stringByAppendingPathComponent: @"data.plist"];
		Subject *sub1;
		Subject *sub2;
		
		// 將檔案路徑path傳給data讀取，並設定為unarchiver初始參數
		NSMutableData *data = [NSMutableData dataWithContentsOfFile: path];
		NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: data]; 
		
		// 以對應的鍵值進行解碼
		sub1 = [unarchiver decodeObjectForKey: @"Subject1"];
		sub2 = [unarchiver decodeObjectForKey: @"Subject2"];
		
		// 關閉unarchiver，結束解碼動作
		[unarchiver finishDecoding];
		
		// 印出sub1與sub2的內容
		[sub1 print];
		[sub2 print];
    }
    return 0;
}
