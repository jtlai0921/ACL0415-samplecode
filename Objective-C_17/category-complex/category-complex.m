//category-complex
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

//define category
@interface Complex (MathOperation)
-(void) add: (Complex *) c; 
-(void) substract: (Complex *) d;
@end

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
		NSLog(@"\n相加後的結果:");
		[obj1 print];
		
		NSLog(@"\n重設obj2:");
		[obj2 setReal:1 andImaginary: 2];
		[obj2 print];
		
		[obj1 substract: obj2];
		NSLog(@"\n相減後的結果:");
		
		[obj1 print];
    }
    return 0;
}
