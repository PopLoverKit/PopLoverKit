//
//  POPViewController.m
//  PopLoverKit
//
//  Created by patysiq@yahoo.com.br on 07/26/2021.
//  Copyright (c) 2021 patysiq@yahoo.com.br. All rights reserved.
//

#import "POPViewController.h"
#import "PopLoverKit.h"

@interface POPViewController ()

@end


@implementation POPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    but.backgroundColor = [UIColor redColor];
    but.tintColor = [UIColor whiteColor];
    [but.titleLabel setFont:[UIFont systemFontOfSize:18]];
    [but addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [but setFrame:CGRectMake(0, 0, 200, 100)];
    but.center = self.view.center;
    [but setTitle:@"Abrir Popover" forState:UIControlStateNormal];
    [but setExclusiveTouch:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [self.view addSubview:but];

    
    
}
- (void) buttonClicked:(UIButton*)sender
{
    PopView *controler = [[PopView alloc] init];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:controler];
    nc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    nc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [nc setNavigationBarHidden:YES animated:YES];
    [self presentViewController:nc animated:YES completion:nil];
    
    
}




@end
