//array2-10
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int arr2[2][3] = {10, 20, 30, 40, 50, 60};
		int i, j;
		
		NSLog(@"陣列中每一元素的位址: ");
		
		for(i=0;i<2; i++) {
			for(j=0; j<3; j++) {
				NSLog(@"&arr[%i][%i] : %x", i, j, &arr2[i][j]);
			}
		}
		
		NSLog(@"\n陣列名稱所表示的位址: %x", arr2);
    }
    return 0;
}
