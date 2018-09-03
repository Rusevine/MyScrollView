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
    CGPoint currentLoc = [sender locationInView:self];
//    CGFloat limitTop = 0;
//    CGFloat limitBottom = 800;
    
  
    switch(sender.state){
        case UIGestureRecognizerStateBegan:
            NSLog(@"Began");
            NSLog(@"%.2f",self.bounds.origin.y);
            break;
        case UIGestureRecognizerStateChanged:
      //      translation = [sender translationInView:self];
          //  [self setBounds:CGRectMake(self.bounds.origin.x,(self.bounds.origin.y + [sender translationInView:self].y), self.contentSize.width, self.contentSize.height)];
            NSLog(@"Location: %.2f,%.2f translation: %.2f,%.2f",currentLoc.x,currentLoc.y,translation.x,translation.y);
            
            break;
        case UIGestureRecognizerStateEnded:
            NSLog(@"Ended");
            break;
    }
}

@end
