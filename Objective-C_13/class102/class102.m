// class102
#import <Foundation/Foundation.h>

@interface myClass : NSObject
{
    int num1, num2;
}

//計算總和
-(int) sum;

//以下二個是setter method的宣告
-(void) setNum1: (int) n;
-(void) setNum2: (int) m;


//以下二個是getter method的宣告
-(int) num1;
-(int) num2;

@end


@implementation myClass

-(int) sum
{
    return (num1+num2);
} 

//以下是setter method的實作
-(void) setNum1: (int) n;
{
    num1=n;
}

-(void) setNum2: (int) m
{
    num2=m;
}

//以下是getter method的實作
-(int) num1
{
    return num1;
}

-(int) num2
{
    return num2;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		myClass *obj = [[myClass alloc] init];
		int total;
		
		[obj setNum1: 100];
		[obj setNum2: 200];
		
		total=[obj sum];
		
		NSLog(@"num1=%d, num2=%d", [obj num1], [obj num2]);
		NSLog(@"total = %d", total);
		
    }
    return 0;
}
