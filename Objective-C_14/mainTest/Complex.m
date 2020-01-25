//Complex.m
#import "Complex.h"

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

-(void) substract: (Complex *) d
{
    real = real - d.real;
    imaginary = imaginary - d.imaginary;
}

-(void) print
{
    NSLog(@"Complex number is (%i + %ii)", real, imaginary);
}

@end
