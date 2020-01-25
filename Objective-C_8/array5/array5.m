//array5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int arr[5] = {10, 20, 30, 40, 50};
		int i, total=0;
		
		for(i=0;i<5; i++) {
			total += arr[i];
		}
		
		NSLog(@"陣列元素的總和: %i", total);
    }
    return 0;
}
