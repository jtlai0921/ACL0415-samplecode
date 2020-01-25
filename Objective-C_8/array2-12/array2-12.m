//array2-12
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
		int arr2[3][4] = {{10, 20, 30, 0}, {40, 50, 60, 0}, {0, 0, 0, 0}};
		int i, j;
		
		//原始陣列的元素    
		for(i=0;i<2; i++) {
			for(j=0; j<3; j++) {
				printf("%4i", arr2[i][j]);
			}
			printf("\n");
		}
		
		// 計算每一列的和
		for(i=0;i<2; i++) {
			for(j=0; j<3; j++) {
				arr2[i][3] += arr2[i][j];
			}
		}
		
		NSLog(@"第一列的和為: %i", arr2[0][3]);
		NSLog(@"第二列的和為: %i", arr2[1][3]);
		NSLog(@"\n");
		
		// 計算每一行的和
		for(j=0;j<4; j++) {
			for(i=0; i<2; i++) {
				arr2[2][j] += arr2[i][j];
			}
		}
		
		NSLog(@"第一行的和為: %i", arr2[2][0]);
		NSLog(@"第二行的和為: %i", arr2[2][1]);
		NSLog(@"第三行的和為: %i", arr2[2][2]);    
		
    }
    return 0;
}
