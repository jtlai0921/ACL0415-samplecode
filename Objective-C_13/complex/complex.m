//complex
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}
-(void) setReal: (int) a;
-(void) setImaginary: (int) b;
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

-(void) print
{
    NSLog(@"Complex number is (%i + %ii)", real, imaginary);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Complex *obj;
		obj = [Complex alloc];
		obj = [obj init];
		
		[obj setReal:2];
		[obj setImaginary: 3];
		[obj print];
    }
    return 0;
}
