//category.m 
#import "category.h"

//implement category mehod
@implementation Complex (MathOperation)

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

@end
