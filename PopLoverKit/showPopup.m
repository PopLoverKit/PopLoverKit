//
//  showPopup.m
//  Pods
//
//  Created by Cecilia Soares on 28/07/21.
//

#import <Foundation/Foundation.h>
#import "PopLoverKit.h"


@interface Popover ()

@end

@implementation Popover
- (void)viewDidLoad {
    PopView *controler = [[PopView alloc] init];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:controler];
    nc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    nc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [nc setNavigationBarHidden:YES animated:YES];
    [self presentViewController:nc animated:YES completion:nil];
}
@end
