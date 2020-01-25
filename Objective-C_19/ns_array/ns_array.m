//ns_array
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSString *str1, *str2, *str3;
		NSArray *arr;
		
		// 定義字串物件
		str1 = @"How";
		str2 = @"are";
		str3 = @"you";
		
		// 將字串送入陣列中
		arr = [NSArray arrayWithObjects: str1, str2, str3, nil];
		
		// 印出陣列內容
		int count = [arr count];
		for (int i = 0; i < count; i++)
			NSLog(@"index: %i, value: %@", i, [arr objectAtIndex: i]);
		
		// 查看陣列中，是否有字串"you"
		NSString *find = @"you";
		NSInteger index;
		if ((index = [arr indexOfObject: find]) != NSNotFound)
			NSLog(@"陣列中儲存\"%@\"，陣列位置為%i!!", [arr objectAtIndex: index], index);
		else
			NSLog(@"陣列中未儲存\"%@\"，回傳位置為%i!!", find, index);
		
    }
    return 0;
}
