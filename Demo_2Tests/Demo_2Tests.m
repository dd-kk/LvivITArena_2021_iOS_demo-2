//
//  Demo_2Tests.m
//  Demo_2Tests
//
//  Created by Dmytro Kovryhin on 01.09.2021.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface Demo_2Tests : XCTestCase

@end

@implementation Demo_2Tests
- (void)testExample_1
{
    Calculator *calculator = [Calculator new];
    XCTAssertTrue([calculator add:2 to:3] == 5);
}

- (void)testExample_2
{
    Calculator *calculator = [Calculator new];
    XCTAssertTrue([calculator subtract:3 from:5] == 2);
}

- (void)testExample_3
{
    Calculator *calculator = [Calculator new];
    XCTAssertTrue([calculator multiply:2 by:4] == 8);
}

- (void)testExample_4
{
    Calculator *calculator = [Calculator new];
    XCTAssertTrue([calculator divide:10 by:5] == 2);
}
@end
