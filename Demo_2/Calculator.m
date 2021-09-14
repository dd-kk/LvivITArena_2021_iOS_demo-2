//
//  Calculator.m
//  Demo_2
//
//  Created by Dmytro Kovryhin on 14.09.2021.
//

#import "Calculator.h"
#import <objc/runtime.h>

@implementation Calculator
- (float)add:(float)num1 to:(float)num2
{
    return num1 + num2;
}

- (float)subtract:(float)num1 from:(float)num2
{
    return num2 - num1;
}

- (float)multiply:(float)num1 by:(float)num2
{
    return num1 * num2;
}

- (float)divide:(float)num1 by:(float)num2
{
    return num1 / num2;
}

- (float)four
{
    return 4;
}

- (void)messWithSwizzling
{
    SEL originalSelector = @selector(add:to:);
    SEL swizzledSelector = @selector(four);
    
    Method originalMethod = class_getInstanceMethod(Calculator.class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(Calculator.class, swizzledSelector);
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
}
@end
