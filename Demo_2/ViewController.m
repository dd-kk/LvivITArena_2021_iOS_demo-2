//
//  ViewController.m
//  Demo_2
//
//  Created by Dmytro Kovryhin on 01.09.2021.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UILabel *resultLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Calculator *calculator = [Calculator new];
    [calculator messWithSwizzling];
    self.resultLabel.text = [NSString stringWithFormat:@"%.0f", [calculator add:2 to:3]];
}


@end
