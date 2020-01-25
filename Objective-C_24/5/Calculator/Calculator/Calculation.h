//  Calculator/Calculation.h

#import <Foundation/Foundation.h>

@interface Calculation : NSObject {
    float operandA;
    float operandB;
    float result;
    char op;
    bool isFirstOperand;
}

@property float operandA;
@property float operandB;
@property char op;
@property bool isFirstOperand;

-(float) calcResult;

@end
