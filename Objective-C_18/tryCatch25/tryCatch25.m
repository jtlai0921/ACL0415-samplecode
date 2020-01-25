//tryCatch25
#import <Foundation/Foundation.h>

@interface Integer : NSObject
{
    int numerator;
    int deonminator;
}
@property int numerator, denominator;

-(double) divide;

@end

@implementation Integer
@synthesize numerator, denominator;

-(double) divide
{
    double result;
    result = (double) numerator/denominator;
    return result;
}

@end 

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Integer *objInt = [[Integer alloc]init];
		double out;
		
		[objInt setNumerator:100];
		[objInt setDenominator:0];
		out=[objInt divide];
		NSLog(@"%i/%i=%.2f", objInt.numerator, objInt.denominator, out);
    }
    return 0;
}
