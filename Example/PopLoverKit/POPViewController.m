//
//  POPViewController.m
//  PopLoverKit
//
//  Created by patysiq@yahoo.com.br on 07/26/2021.
//  Copyright (c) 2021 patysiq@yahoo.com.br. All rights reserved.
//

#import "POPViewController.h"
#import "PopLoverKit-umbrella.h"

@interface POPViewController ()

@end


@implementation POPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *colour = [[UIColor alloc]initWithRed:57.0/255.0 green:156.0/255.0 blue:52.0/255.0 alpha:1.0];
    self.view.backgroundColor = colour;
    UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [but addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [but setFrame:CGRectMake(52, 252, 215, 40)];
    [but setTitle:@"Button" forState:UIControlStateNormal];
    [but setExclusiveTouch:YES];

     // if you like to add backgroundImage else no need
//       [but setbackgroundImage:[UIImage imageNamed:@"XXX.png"] forState:UIControlStateNormal];

    [self.view addSubview:but];


}
- (void) buttonClicked:(UIButton*)sender
 {
     //NSLog(@"you clicked on button %ld", (long)sender.tag);
     PopPicker *controler = [[PopPicker alloc] init];
     UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:controler];
//     [self.navigationController pushViewController: controler animated:YES];
    nc.modalPresentationStyle = UIModalPresentationOverFullScreen;
         nc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
         [self presentViewController:nc animated:YES completion:nil];
     

 }




@end
