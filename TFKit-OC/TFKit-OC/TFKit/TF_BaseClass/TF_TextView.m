//
//  TF_TextView.m
//  PermanentCalendar
//
//  Created by TwistedFate on 2017/4/1.
//  Copyright © 2017年 TwistedFate. All rights reserved.
//

#import "TF_TextView.h"

@implementation TF_TextView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]){
       self.placeholder = @"";
       self.placeholderColor = [UIColor lightGrayColor];
       
       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
   //内容为空时才绘制placeholder
   if ([self.text isEqualToString:@""]) {
      CGRect placeholderRect;
      placeholderRect.origin.y = 8;
      placeholderRect.size.height = CGRectGetHeight(self.frame) - 8;
      placeholderRect.origin.x = 6;
      placeholderRect.size.width = CGRectGetWidth(self.frame) - 6;
      
      [self.placeholderColor set];
      NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
      paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
      paragraphStyle.alignment = NSTextAlignmentLeft;
      
      UIFont *font = self.font ? : [UIFont systemFontOfSize:[UIFont systemFontSize]];
      [self.placeholder drawInRect:placeholderRect withAttributes:@{NSFontAttributeName : font, NSParagraphStyleAttributeName : paragraphStyle, NSForegroundColorAttributeName : self.placeholderColor}];
   }
}

- (void)textChanged:(NSNotification *)noti {
   [self setNeedsDisplay];
}

- (void)setText:(NSString *)text {
   [super setText:text];
   [self setNeedsDisplay];
}

@end

