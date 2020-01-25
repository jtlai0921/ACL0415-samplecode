//prepro50
#import <Foundation/Foundation.h>

#define string(x) # x
#define print(x) printf(# x " = %i\n", x)
#define dprint(expr) printf(# expr "= %.2f\n", expr)

#define paste(x, y) x ## y 
#define APPLE 1

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		int total=100;
		double x=5, y=4;
		
		printf(string(Hello));
		printf("\n");
		print(total);
		dprint(x/y);
		
		printf("APPLE is No.%d\n", paste(APP, LE));
    }
    return 0;
}
