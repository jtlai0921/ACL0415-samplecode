//complex18
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}

@property int real, imaginary;
-(void) print;

@end

@implementation Complex
@synthesize real, imaginary;  

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
		NSLog(@"Complex number is (%i + %ii)", [obj1 real], [obj1 imaginary]);
		
		
		[obj2 setReal:4];
		[obj2 setImaginary: 5];
		NSLog(@"Complex number is (%i + %ii)", [obj2 real], [obj2 imaginary]);
    }
    return 0;
}
