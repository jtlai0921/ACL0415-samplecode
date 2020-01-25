//array10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int arr[5] = {10, 20, 30, 40, 50};
		int i;
		
		NSLog(@"陣列中每一元素的位址: ");
		
		for(i=0;i<5; i++){
			NSLog(@"&arr[%i] : %x", i, &arr[i]);
		}
		
		NSLog(@"陣列名稱所表示的位址: %x", arr);
		
    }
    return 0;
}
