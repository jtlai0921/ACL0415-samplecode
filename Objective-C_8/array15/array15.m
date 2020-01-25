//array15
#import <Foundation/Foundation.h>

int sumOfArray(int a[], int n);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		int arr[] = {10, 20, 30, 40, 50};
		int sum;
		int num;
		num=sizeof(arr)/sizeof(arr[0]);
		sum = sumOfArray(arr, num);
		
		NSLog(@"陣列元素的總和: %i", sum);
    }
    return 0;
}

int sumOfArray(int a[], int n)
{
    int i, tot=0;
    for(i=0;i<n; i++) {
        tot += a[i];
    }
    return tot;
}
