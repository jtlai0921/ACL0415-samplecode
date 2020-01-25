//complex10
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}

-(void) setReal: (int) a;
-(void) setImaginary: (int) b;
-(int) real;
-(int) imaginary;
-(void) print;

@end

@implementation Complex
-(void) setReal: (int) a
{
    real = a;
}

-(void) setImaginary: (int) b
{
    imaginary = b;
}

-(int) real
{
    return real;
}

-(int) imaginary
{
    return imaginary;
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
		
		[obj1 setReal:2];
		[obj1 setImaginary: 3];
		[obj1 print];
		
		[obj2 setReal:4];
		[obj2 setImaginary: 5];
		NSLog(@"Complex number is (%i + %ii)", [obj2 real], [obj2 imaginary]);
    }
    return 0;
}
