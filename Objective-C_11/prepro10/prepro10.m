//prepro10
#import <Foundation/Foundation.h>
#define RATE 32.78
#define begin {
#define end }

int main(int argc, const char * argv[])
begin

    @autoreleasepool begin

	double us, nt;
	NSLog(@"請輸入您有多少美金: ");
	scanf("%lf", &us);

	nt = us * RATE;

	NSLog(@"您有%.2f台幣", nt);
	end
	return 0;
end
