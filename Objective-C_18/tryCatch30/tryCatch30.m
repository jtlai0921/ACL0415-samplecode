//tryCatch30
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
		NSLog(@"%i/%i=%.2f", objInt.numerator, objInt.denominator, out);
		
		NSException *exception = [NSException exceptionWithName:@"divide"
														 reason:@"denominator can not be zero" userInfo:nil];
		@try {
			if(objInt.denominator != 0)
				[objInt divide];
			else
				@throw exception;
		}
		
		@catch (NSException *exception) {
			NSLog(@"Caught %@%@", [exception name], [exception reason]);
		}
		
		@finally {
			NSLog(@"This is try...throw...catch...finally statement");
		}
		
		NSLog(@"It's OK");    
    }
    return 0;
}
