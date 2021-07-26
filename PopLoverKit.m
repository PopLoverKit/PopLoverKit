//
//  PopLoverKit.m
//  Pods
//
//  Created by PATRICIA S SIQUEIRA on 26/07/21.
//

#import <Foundation/Foundation.h>
#import "PopLoverKit.h"
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

}
@end
