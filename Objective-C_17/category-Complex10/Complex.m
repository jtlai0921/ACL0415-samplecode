//Complex.m

#import "Complex.h"

//implement Complex method
@implementation Complex
@synthesize real, imaginary;

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
