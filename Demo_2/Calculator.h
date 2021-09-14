//
//  Calculator.h
//  Demo_2
//
//  Created by Dmytro Kovryhin on 14.09.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject
- (float)add:(float)num1 to:(float)num2;
- (float)subtract:(float)num1 from:(float)num2;
- (float)multiply:(float)num1 by:(float)num2;
- (float)divide:(float)num1 by:(float)num2;
- (void)messWithSwizzling;
@end

NS_ASSUME_NONNULL_END
