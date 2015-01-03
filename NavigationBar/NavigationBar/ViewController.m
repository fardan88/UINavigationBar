//
//  ViewController.m
//  NavigationBar
//
//  Created by ITP on 12/17/14.
//  Copyright (c) 2014 ITP. All rights reserved.
//

#import "ViewController.h"
#import "TempViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addNavigationBarButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addNavigationBarButton
{
    UIBarButtonItem *myNavBtn = [[UIBarButtonItem alloc] initWithTitle:@"MyButton" style:UIBarButtonItemStylePlain target:self action:@selector(myButtonClicked:)];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    [self.navigationItem setRightBarButtonItem:myNavBtn];
    
    navButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [navButton setFrame:CGRectMake(60, 80, 200, 40)];
    [navButton setTitle:@"Push Navigation" forState:UIControlStateNormal];
    [navButton addTarget:self action:@selector(pushNewView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:navButton];
    [navButton setHidden:YES];
}

-(IBAction)myButtonClicked:(id)sender
{
    [navButton setHidden:NO];
}

-(IBAction)pushNewView:(id)sender
{
    TempViewController *tempView = [[TempViewController alloc] init];
    [self.navigationController pushViewController:tempView animated:YES];
}

@end
