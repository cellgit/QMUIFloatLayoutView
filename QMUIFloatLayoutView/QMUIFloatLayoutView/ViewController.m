//
//  ViewController.m
//  QMUIFloatLayoutView
//
//  Created by iosdeveloper on 2017/2/10.
//  Copyright © 2017年 liuhongli. All rights reserved.
//

#import "ViewController.h"
#import <QMUIKit/QMUIKit.h>
#import "QDCommonViewController.h"





@interface ViewController ()

@property(nonatomic, strong) QMUIFloatLayoutView *floatLayoutView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"QMUIFloatLayoutView";
    
    self.floatLayoutView = [[QMUIFloatLayoutView alloc] init];
    self.floatLayoutView.padding = UIEdgeInsetsMake(12, 12, 12, 12);
    self.floatLayoutView.itemMargins = UIEdgeInsetsMake(0, 0, 10, 10);
    self.floatLayoutView.minimumItemSize = CGSizeMake(69, 29);// 以2个字的按钮作为最小宽度
    self.floatLayoutView.layer.borderWidth = PixelOne; //边框注释即消失
    self.floatLayoutView.layer.borderColor = UIColorSeparator.CGColor;
    [self.view addSubview:self.floatLayoutView];
    
    NSArray<NSString *> *suggestions = @[@"东野圭吾", @"三体", @"爱", @"红楼梦", @"理智与情感", @"读书热榜", @"免费榜"];
    for (NSInteger i = 0; i < suggestions.count; i++) {
        QMUIGhostButton *button = [[QMUIGhostButton alloc] initWithGhostType:QMUIGhostButtonColorGray];
        [button setTitle:suggestions[i] forState:UIControlStateNormal];
        button.titleLabel.font = UIFontMake(14);
        button.contentEdgeInsets = UIEdgeInsetsMake(6, 20, 6, 20);
        [self.floatLayoutView addSubview:button];
    }
    
    UIEdgeInsets padding = UIEdgeInsetsMake(CGRectGetMaxY(self.navigationController.navigationBar.frame) + 36, 24, 36, 24);
    CGFloat contentWidth = CGRectGetWidth(self.view.bounds) - UIEdgeInsetsGetHorizontalValue(padding);
    CGSize floatLayoutViewSize = [self.floatLayoutView sizeThatFits:CGSizeMake(contentWidth, CGFLOAT_MAX)];
    self.floatLayoutView.frame = CGRectMake(padding.left, padding.top, contentWidth, floatLayoutViewSize.height);
    
}


@end
