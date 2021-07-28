//
//  PopLoverKit.h
//  Pods
//
//  Created by Cecilia Soares on 26/07/21.
//
@import UIKit;
#import <Foundation/Foundation.h>
@interface PopView : UIViewController{
    UITextView *textView;
    UIButton *back;
    UIView *popupView;
    UIVisualEffectView *blurEffectView;
}
- (void)viewDidLoad;
- (void) backClicked:(UIButton*)sender;

@end
