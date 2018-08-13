//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Wiljay Flores on 2018-08-13.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;

@end
