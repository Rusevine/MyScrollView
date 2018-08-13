//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Wiljay Flores on 2018-08-13.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panUsed:)];
        [self addGestureRecognizer:self.panGesture];
    }
    return self;
}

-(void)panUsed:(UIPanGestureRecognizer *)sender{
    CGPoint translation = [sender translationInView:self];
    
  
    switch(sender.state){
        case UIGestureRecognizerStateBegan:
            NSLog(@"Began");
            NSLog(@"%.2f",self.bounds.origin.y);
            break;
        case UIGestureRecognizerStateChanged:
            [self setBounds:CGRectMake(self.bounds.origin.x,(self.bounds.origin.y + translation.y), self.contentSize.width, self.contentSize.height)];
            //            if(self.bounds.origin.y >= self.contentSize.height || self.bounds.origin.y == 0){
//                [self setBounds:CGRectMake(self.bounds.origin.x,(self.bounds.origin.y - translation.y), self.contentSize.width, self.contentSize.height)];
//            NSLog(@"%.2f",self.bounds.origin.y);
//            }
            break;
        case UIGestureRecognizerStateEnded:
            NSLog(@"Ended");
            break;
    }
}

@end
