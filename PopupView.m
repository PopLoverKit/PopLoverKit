//
//  PopupView.m
//  Pods
//
//  Created by PATRICIA S SIQUEIRA on 27/07/21.
//

#import <Foundation/Foundation.h>
#import "PopupView.h"

@interface PopupView ()

@end

@implementation PopupView
- (void) backClicked: (UIButton*)sender
 {
     [self.navigationController popViewControllerAnimated:YES];

 }

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect newFrame = CGRectMake( self.view.frame.size.width / 2 - 120, self.view.frame.size.height / 2 - 120, 240, 240);
    self.view.frame = newFrame;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *back= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    back.tintColor = [UIColor blueColor];
    [back.titleLabel setFont:[UIFont systemFontOfSize:18]];
    [back addTarget:self action:@selector(backClicked:) forControlEvents:UIControlEventTouchUpInside];
    [back setFrame:CGRectMake(70, 180, 100, 50)];
    [back setTitle:@"Voltar" forState:UIControlStateNormal];
    [back setExclusiveTouch:YES];
    [self.view addSubview:back];
    
}

@end
