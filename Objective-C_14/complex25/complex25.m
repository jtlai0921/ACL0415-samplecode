//complex25
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}

@property int real, imaginary;
-(void) setReal: (int) a andImaginary: (int) b;
-(void) add: (Complex *) c; 
-(void) print;

@end

@implementation Complex
@synthesize real, imaginary;
-(void) setReal: (int) a andImaginary: (int) b
{
    real = a;
    imaginary = b;
} 

-(void) add: (Complex *) c
{
    real = real + c.real;
    imaginary = imaginary + c.imaginary;
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
		
		[obj1 add: obj2];
		NSLog(@"\n相加後的結果：");
		[obj1 print];
    }
    return 0;
}
