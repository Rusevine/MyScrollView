//
//  ViewController.m
//  MyScrollView
//
//  Created by Wiljay Flores on 2018-08-13.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic,weak) MyScrollView *innerView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

-(void)viewDidAppear:(BOOL)animated{
//    [self.view setBounds:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+100, self.view.bounds.size.width, self.view.bounds.size.height)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

-(void)setupUI{
    MyScrollView *innerView = [[MyScrollView alloc] init];
    innerView.contentSize = CGSizeMake(self.view.bounds.size.width, 800);
    [self.view addSubview:innerView];
    self.innerView = innerView;
    innerView.backgroundColor = [UIColor lightGrayColor];
    self.innerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.innerView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [self.innerView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.innerView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.innerView addSubview:greenView];
    
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    [self.innerView addSubview:blueView];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    [self.innerView addSubview:yellowView];
    yellowView.backgroundColor = [UIColor yellowColor];
    

}

@end
