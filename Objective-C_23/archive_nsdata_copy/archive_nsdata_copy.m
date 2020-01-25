// archive_nsdata_copy
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		NSData *data;
		NSMutableArray *arr1 = [NSMutableArray arrayWithObjects: 
								[NSMutableString stringWithString: @"no.1"],
								[NSMutableString stringWithString: @"no.2"],
								[NSMutableString stringWithString: @"no.3"], nil];
		NSMutableArray *arr2;
		NSMutableString *str;
		
		
		// 印出陣列參考的位址
		NSLog(@"arr1物件的位址: %lx", (unsigned long)arr1);
		NSLog(@"arr1的元素");
		for(int index = 0; index < [arr1 count]; index++)
			NSLog(@"index %i: %lx", index, (unsigned long)[arr1 objectAtIndex: index]);
		
		
		
		// 印出兩陣列修改前的內容
		NSLog(@"=====修改前=====");
		NSLog(@"arr1:");
		for(NSString *tempStr in arr1)
			NSLog(@"%@", tempStr);
		
		NSLog(@"arr2:");
		for(NSString *tempStr in arr2)
			NSLog(@"%@", tempStr);
		
		// 以data當作中介，將arr1放進data後，再給arr2
		data = [NSKeyedArchiver archivedDataWithRootObject: arr1];
		arr2 = [NSKeyedUnarchiver unarchiveObjectWithData: data]; 
		
		//經由NSKeyedArchiver的運作後...
		NSLog(@"\n經由NSKeyedArchiver的運作後...");
		NSLog(@"arr2物件的位址: %lx", (unsigned long)arr2);
		NSLog(@"\narr2的元素");
		for(int index = 0; index < [arr2 count]; index++)
			NSLog(@"index %i: %lx", index, (unsigned long)[arr2 objectAtIndex: index]);
		
		
		// 修改arr2位於index為0的位置，在最後插入字串
		str = [arr2 objectAtIndex: 0];
		[str appendString: @" additional"];
		
		// 印出兩陣列的內容，以驗證複製結果
		NSLog(@"=====更新後=====");
		NSLog(@"arr1:");
		for(NSString *tempStr in arr1)
			NSLog(@"%@", tempStr);
		
		NSLog(@"\narr2:");
		for(NSString *tempStr in arr2)
			NSLog(@"%@", tempStr);
		
    }
    return 0;
}
