//category.h
#import "Complex.h"

//define category
@interface Complex (MathOperation)
-(void) add: (Complex *) c; 
-(void) substract: (Complex *) d;
@end
