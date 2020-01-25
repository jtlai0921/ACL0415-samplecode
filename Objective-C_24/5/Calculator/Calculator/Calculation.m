//  Calculator/Calculation.m

#import "Calculation.h"

@implementation Calculation
@synthesize operandA, operandB, op, isFirstOperand;

-(float) calcResult{
    switch (op) {
        case '+':
            result = operandA + operandB ;
            break;
        case '-':
            result = operandA - operandB ;
            break;
        case '*':
            result = operandA * operandB ;
            break;
        case '/':
            result = operandA / operandB ;
            break;
    }
    return result;
}

@end
