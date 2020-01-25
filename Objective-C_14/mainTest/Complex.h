//Complex.h
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    int imaginary;
}

@property int real, imaginary;
-(void) setReal: (int) a andImaginary: (int) b;
-(void) add: (Complex *) c; 
-(void) substract: (Complex *) d;
-(void) print;

@end
