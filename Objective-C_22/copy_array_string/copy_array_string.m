//copy_array_string
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		NSMutableArray *arr1 = [NSMutableArray arrayWithObjects: 
								@"str1", @"str2", @"str3", @"str4", nil];
		NSMutableArray *arr2;
		NSString *temp;
		
		//印出原來arr1陣列元素值
		NSLog(@"原來arr1陣列的元素值");
		for(temp in arr1)
			NSLog(@"arr1: %@", temp);
		
		
		// 僅指定arr1的記憶體位址給arr2，並移除arr2最後一個元素
		arr2 = arr1;
		[arr2 removeLastObject];
		
		NSLog(@"\n將arr1以copy給arr2.");
		// 印出陣列參考的位址
		NSLog(@"arr1物件的位址: %lx", (unsigned long)arr1);
		
		for(temp in arr1)
			NSLog(@"arr1: %@", temp);
		
		// 印出陣列參考的位址
		NSLog(@"arr2物件的位址: %lx", (unsigned long)arr2);
		
		for(temp in arr2)
			NSLog(@"arr2: %@", temp);
		
		NSLog(@"\n將arr1以mutablecCopy給arr2.");
		// 複製一個與arr1具有同樣記憶體空間的內容給arr2，並移除arr2最後一個元素
		
		arr2 = [arr1 mutableCopy];
		[arr2 removeLastObject];
		
		// 印出陣列參考的位址
		NSLog(@"arr1物件的位址: %lx", (unsigned long)arr1);
		
		for(temp in arr1)
			NSLog(@"arr1: %@", temp);
		
		// 印出陣列參考的位址
		NSLog(@"arr2物件的位址: %lx", (unsigned long)arr2);
		
		for(temp in arr2)
			NSLog(@"arr2: %@", temp);
    }
    return 0;
}

