//
//  PopLoverKit.m
//  Pods
//
//  Created by PATRICIA S SIQUEIRA on 26/07/21.
//

#import <Foundation/Foundation.h>
#import "PopLoverKit.h"

@interface PopView ()

@end

@implementation PopView

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!UIAccessibilityIsReduceTransparencyEnabled()) {
        self.view.backgroundColor = [UIColor clearColor];

        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        //always fill the view
        blurEffectView.frame = self.view.bounds;
        blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        [self.view addSubview:blurEffectView]; //if you have more UIViews, use an insertSubview API to place it where needed
    } else {
        self.view.backgroundColor = [UIColor blackColor];
        
    }
    popupView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 120, self.view.frame.size.height / 2 - 120, 240, 240)];
    popupView.backgroundColor = [UIColor whiteColor];
    [UIView animateWithDuration:0.3 animations:^{
        [self.view addSubview:self->popupView];
        }];
    
    textView = [[UITextView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 120, self.view.frame.size.height / 2 - 120, 240, 240)];
    textView.delegate = self;
    textView.text = @"Digite o texto";
    textView.textColor = [UIColor lightGrayColor];
    [textView setFont:[UIFont systemFontOfSize:15]];
    [self.view addSubview:textView];
    
    back= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    back.tintColor = [UIColor blueColor];
    [back.titleLabel setFont:[UIFont systemFontOfSize:18]];
    [back addTarget:self action:@selector(backClicked:) forControlEvents:UIControlEventTouchUpInside];
    [back setFrame:CGRectMake(self.view.frame.size.width / 2 - 120, self.view.frame.size.height / 2 + 120, 240, 50)];
    [back setTitle:@"Concluir" forState:UIControlStateNormal];
    back.backgroundColor = [UIColor whiteColor];
    [back setExclusiveTouch:YES];
    [self.view addSubview:back];
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Digite o texto"]) {
         textView.text = @"";
         textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}
- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Digite o texto";
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
}
- (void) backClicked: (UIButton*)sender
 {
    [self.navigationController popViewControllerAnimated:YES];
     [UIView animateWithDuration:0.3 animations:^{
         [self->back removeFromSuperview];
         [self->textView removeFromSuperview];
         [self->popupView removeFromSuperview];
         [self->blurEffectView removeFromSuperview];
         }];
     [self.navigationController dismissViewControllerAnimated:YES completion:nil];
 }

@end
