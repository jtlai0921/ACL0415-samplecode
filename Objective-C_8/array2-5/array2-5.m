//array2-5
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int arr2[2][3] = {10, 20, 30, 40, 50, 60};
		int i, j, total=0;
		
		for(i=0;i<2; i++) {
			for(j=0; j<3; j++) {
				total += arr2[i][j];
			}
		}
		
		NSLog(@"陣列元素的總和: %i", total);
    }
    return 0;
}
