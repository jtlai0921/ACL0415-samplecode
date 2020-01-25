//complex20
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}

-(void) setReal: (int) a andImaginary: (int) b;
-(void) print;


@end

@implementation Complex
-(void) setReal: (int) a andImaginary: (int) b
{
    real = a;
    imaginary = b;
} 

-(void) print
{
    NSLog(@"Complex number is (%i + %ii)", real, imaginary);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Complex *obj1 =[[Complex alloc] init];
		Complex *obj2 =[[Complex alloc] init];
		
		[obj1 setReal:2 andImaginary: 3];
		[obj1 print];
		
		[obj2 setReal:4 andImaginary: 5];
		[obj2 print];
		
    }
    return 0;
}
