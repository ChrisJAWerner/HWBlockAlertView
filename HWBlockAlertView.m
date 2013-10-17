//
//  HWBlockAlertView.m
//
//  Created by Chris Werner on 2013-10-16.
//  Copyright (c) 2013 Hipwood. All rights reserved.
//

#import "HWBlockAlertView.h"

@implementation HWBlockAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle
{
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelTitle otherButtonTitles: nil];
    if (self) {
        _blocks = [NSMutableDictionary dictionary];
        _cancelButtonTitle = cancelTitle;
    }
    return self;
}

- (void) addButtonWithTitle:(NSString *)title block:(void (^)())block
{
    [self addButtonWithTitle:title];
    
    [_blocks setValue:block forKey:title];
}

- (void) setCancelButtonBlock:(void (^)())block
{
    [_blocks setValue:block forKey:_cancelButtonTitle];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [self buttonTitleAtIndex:buttonIndex];
        
    void (^block)() = _blocks[buttonTitle];
    if(block){
        block();
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
