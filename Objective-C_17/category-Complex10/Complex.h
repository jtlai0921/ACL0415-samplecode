//Complex.h
#import <Foundation/Foundation.h>

//define Complex class
@interface Complex : NSObject
{
    int real;
    int imaginary;
}

@property int real, imaginary;
-(void) setReal: (int) a andImaginary: (int) b;

-(void) print;

@end
