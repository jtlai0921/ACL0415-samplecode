//protocol-integer10
#import <Foundation/Foundation.h>

@protocol operation

-(void) add:(int)n;//相加
-(void) sub:(int)n;//相減
-(void) mul:(int)n;//相乘
-(void) div:(int)n;//相除

@end

//採納operation協定
@interface IntegerOper : NSObject <operation> 
{
    int num;//整數
}
@property int num;
@end

@implementation IntegerOper
@synthesize num;
-(void) add:(int) n
{
    num += n;
    NSLog(@"相加後結果為:%i",num);
}

-(void) sub:(int) n
{
    num -= n ;
    NSLog(@"相減後結果為:%i",num);
}

-(void) mul:(int)n
{
    num *= n;
    NSLog(@"相乘後結果為:%i",num);
}

-(void) div:(int)n
{
    if(n==0){
        NSLog(@"除數不可為零");
    }
    else {
        num /= n;
        NSLog(@"相除後結果為:%i",num);
    }    
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		
		IntegerOper *obj = [[IntegerOper alloc]init];
		[obj setNum: 8];
		NSLog(@"num初始值:%i", [obj num]);
		NSLog(@"加2:");
		[obj add:2];
		
		NSLog(@"減3:");
		[obj sub:3];
		
		NSLog(@"乘以4:");
		[obj mul:4];
		
		NSLog(@"除以0:");
		[obj div:0];
		
		NSLog(@"除以2:");
		[obj div:2];
    }
    return 0;
}

