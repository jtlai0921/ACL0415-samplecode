//copy_array_address
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
	
		NSMutableArray *arr1 = [NSMutableArray arrayWithObjects: 
								[NSMutableString stringWithString: @"str1"], 
								[NSMutableString stringWithString: @"str2"],
								[NSMutableString stringWithString: @"str3"], nil];
		NSMutableArray *arr2;
		
		// 將arr1以mutableCopy指定給arr2
		arr2 = [arr1 mutableCopy];
		
		// 印出陣列參考的位址
		NSLog(@"arr1物件的位址: %lx", (unsigned long)arr1);
		NSLog(@"arr1的元素");
		for(int index = 0; index < [arr1 count]; index++)
			NSLog(@"index %i: %lx", index, (unsigned long)[arr1 objectAtIndex: index]);
		
		NSLog(@"\narr2物件的位址: %lx", (unsigned long)arr2);
		NSLog(@"arr2的元素");
		for(int index = 0; index < [arr2 count]; index++)
			NSLog(@"index %i: %lx", index, (unsigned long)[arr1 objectAtIndex: index]);
    }
    return 0;
}

