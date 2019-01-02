//
//  ViewController.m
//  BridgePattern
//
//  Created by 丁玉松 on 2019/1/2.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "ViewController.h"

#import "DYSHandsetAddressList.h"
#import "DYSHandsetGame.h"

#import "DYSHandsetBrandM.h"
#import "DYSHandsetBrandN.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DYSHandsetGame *game = [DYSHandsetGame new];
    DYSHandsetAddressList *address = [DYSHandsetAddressList new];

    DYSAbstractHandsetBrand *brand = [DYSHandsetBrandM new];
    brand.brandName = @"摩托诺拉";

    [brand setSoft:game];
    [brand run];

    [brand setSoft:address];
    [brand run];

    brand = [DYSHandsetBrandN new];
    brand.brandName = @"诺基亚";

    [brand setSoft:game];
    [brand run];

    [brand setSoft:address];
    [brand run];
}

@end
