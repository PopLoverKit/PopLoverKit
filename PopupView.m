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

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect newFrame = CGRectMake( self.view.frame.size.width / 2 - 120, self.view.frame.size.height / 2 - 120, 240, 240);

    self.view.frame = newFrame;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *back= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back addTarget:self action:@selector(backClicked:) forControlEvents:UIControlEventTouchUpInside];
    [back setFrame:CGRectMake(self.view.frame.size.width / 2 - 120, self.view.frame.size.height  - 80, 215, 40)];
    [back setTitle:@"Voltar" forState:UIControlStateNormal];
    [back setExclusiveTouch:YES];
    [self.view addSubview:back];
    
}
- (void) backClicked:(UIButton*)sender
 {
     NSLog(@"you clicked on button %ld", (long)sender.tag);
     [self dismissViewControllerAnimated:NO completion:nil];
     

 }
@end
