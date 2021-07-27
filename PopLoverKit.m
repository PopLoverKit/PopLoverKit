//
//  PopLoverKit.m
//  Pods
//
//  Created by PATRICIA S SIQUEIRA on 26/07/21.
//

#import <Foundation/Foundation.h>
#import "PopLoverKit.h"
#import "PopupView.h"
@interface PopPicker ()

@end

@implementation PopPicker

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!UIAccessibilityIsReduceTransparencyEnabled()) {
        self.view.backgroundColor = [UIColor clearColor];

        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        //always fill the view
        blurEffectView.frame = self.view.bounds;
        blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        [self.view addSubview:blurEffectView]; //if you have more UIViews, use an insertSubview API to place it where needed
    } else {
        self.view.backgroundColor = [UIColor blackColor];
    }
    PopupView *popupView = [[PopupView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 120,self.view.frame.size.height / 2 - 120, 240, 240)];
    popupView.backgroundColor = [UIColor whiteColor];
    [UIView animateWithDuration:0.3 animations:^{
        [self.view addSubview:popupView];
        }];
}

@end
