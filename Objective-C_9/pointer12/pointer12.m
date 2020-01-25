//pointer12
#import <Foundation/Foundation.h>

int sumOfArray(int *parr, int n);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int arr[] = {10, 20, 30, 40, 50};
		int *parr = arr;
		
		int num, i;
		num=sizeof(arr)/sizeof(arr[0]);
		
		//以陣列方式印出
		for(i=0;i<num; i++) {
			NSLog(@"陣列第%i個元素為: %i",i, arr[i]);
		}
		
		//以指標的方式印出
		NSLog(@"\n指標表示法:");
		for(i=0;i<num; i++) {
			NSLog(@"陣列第%i個元素為: %i",i, *(parr+i));
		}
		
    }
    return 0;
}
