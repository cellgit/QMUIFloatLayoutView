//
//  QDCommonUI.m
//  qmuidemo
//
//  Created by MoLice on 16/8/8.
//  Copyright © 2016年 QMUI Team. All rights reserved.
//

#import "QDCommonUI.h"
#import "QDUIHelper.h"

const CGFloat QDButtonSpacingHeight = 72;

@implementation QDCommonUI

+ (void)renderGlobalAppearances {
    [QDUIHelper customMoreOperationAppearance];
    [QDUIHelper customAlertControllerAppearance];
}

@end

@implementation QDCommonUI (ThemeColor)

static NSArray<UIColor *> *themeColors = nil;
+ (UIColor *)randomThemeColor {
    if (!themeColors) {
        themeColors = @[UIColorTheme1,
                        UIColorTheme2,
                        UIColorTheme3,
                        UIColorTheme4,
                        UIColorTheme5,
                        UIColorTheme6,
                        UIColorTheme7,
                        UIColorTheme8,
                        UIColorTheme9];
    }
    return themeColors[arc4random() % 9];
}

@end

@implementation QDCommonUI (Layer)

+ (CALayer *)generateSeparatorLayer {
    CALayer *layer = [CALayer layer];
    [layer qmui_removeDefaultAnimations];
    layer.backgroundColor = UIColorSeparator.CGColor;
    return layer;
}

@end
