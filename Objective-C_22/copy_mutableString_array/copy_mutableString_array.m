//copy_mutableString_array
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NSMutableArray *arr1 = [NSMutableArray arrayWithObjects: 
								[NSMutableString stringWithString: @"str1"], 
								[NSMutableString stringWithString: @"str2"],
								[NSMutableString stringWithString: @"str3"], nil];
		NSMutableArray *arr2;
		NSString *temp;
		
		// 將arr1以mutableCopy指定給arr2
		arr2 = [arr1 mutableCopy];
		
		// 印出陣列參考的位址
		NSLog(@"arr1物件的位址: %lx", (unsigned long)arr1);
		for(temp in arr1)
			NSLog(@"arr1: %@", temp);
		
		// 印出陣列參考的位址
		NSLog(@"arr2物件的位址: %lx", (unsigned long)arr2);
		for(temp in arr2)
			NSLog(@"arr2: %@", temp);
		
		// 修改arr1第一個元素的內容
		[[arr1 objectAtIndex: 0] appendString: @" changed"];
		
		// 修改arr2第三個元素的內容
		[[arr2 objectAtIndex: 2] setString: @"String 3!!"];
		
		NSLog(@"\n將修改後的兩陣列的內容如下:");
		
		for(temp in arr1)
			NSLog(@"arr1: %@", temp);
		
		for(temp in arr2)
			NSLog(@"arr2: %@", temp);
    }
    return 0;
}
