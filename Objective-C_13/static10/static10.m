//static10
#import <Foundation/Foundation.h>
@interface Num : NSObject
-(void) show;

@end

@implementation Num

-(void) show
{
    int x=10;
    static int sx=10;
    x++;
    sx++;
    NSLog(@"x=%i, sx=%i", x, sx);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {

		Num *objNum = [[Num alloc]init];
		int i;
		for(i=1; i<=5; i++) {
			[objNum show];
		}
    }
    return 0;
}
