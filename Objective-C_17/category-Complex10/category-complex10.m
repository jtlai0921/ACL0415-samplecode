//category-Complex10.m
#import "Complex.h"
#import "category.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Complex *obj1 =[[Complex alloc] init];
		Complex *obj2 =[[Complex alloc] init];
		
		[obj1 setReal:2 andImaginary: 3];
		[obj1 print];
		
		[obj2 setReal:4 andImaginary: 5];
		[obj2 print];
		
		[obj1 add: obj2];
		NSLog(@"\n相加後的結果:");
		[obj1 print];
		
		NSLog(@"\n重設obj2:");
		[obj2 setReal:1 andImaginary: 2];
		[obj2 print];
		
		[obj1 substract: obj2];
		NSLog(@"\n相減後的結果:");
		[obj1 print];
    }
    return 0;
}
