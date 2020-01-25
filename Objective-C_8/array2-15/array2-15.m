//array2-15
#import <Foundation/Foundation.h>

int sumOfArray2(int a2[][3], int row, int col);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
    int arr2[2][3] = {10, 20, 30, 40, 50, 60};
    int sum;
    
    sum = sumOfArray2(arr2, 2, 3);
    NSLog(@"陣列元素的總和: %i", sum);
    }
    return 0;
}

int sumOfArray2(int a2[][3], int row, int col)
{
    int i, j, total=0;
    for(i=0;i<2; i++) {
        for(j=0; j<3; j++) {
            total += a2[i][j];
        }
    }
    return total;
}
