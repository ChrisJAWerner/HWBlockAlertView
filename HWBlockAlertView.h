//
//  HWBlockAlertView.h
//  DuquesneDukes
//
//  Created by Chris Werner on 2013-10-16.
//  Copyright (c) 2013 Hipwood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWBlockAlertView : UIAlertView <UIAlertViewDelegate>

@property (copy, nonatomic) NSMutableDictionary *blocks;
@property (strong, nonatomic) NSString *cancelButtonTitle;

- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle;
- (void)setCancelButtonBlock:(void(^)())block;
- (void)addButtonWithTitle:(NSString *)title block:(void(^)())block;

@end
