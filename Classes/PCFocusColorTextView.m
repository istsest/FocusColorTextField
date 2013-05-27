//
//  PCFocusColorTextView.m
//  testPopCornComponents
//
//  Created by Joon on 13. 5. 14..
//  Copyright (c) 2013년 Joon. All rights reserved.
//

#import "PCFocusColorTextView.h"

@interface PCFocusColorTextView ()
{
	UIColor					*_currentBackgroundColor;
	UIColor					*_currentTextColor;
	BOOL					_isChangingBackgroundColorInternal;
}

@end


@implementation PCFocusColorTextView

- (void)setTextColor:(UIColor *)textColor
{
	[super setTextColor:textColor];
	
	if(!_isChangingBackgroundColorInternal)
		_currentTextColor = self.textColor;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
	[super setBackgroundColor:backgroundColor];
	
	if(!_isChangingBackgroundColorInternal)
		_currentBackgroundColor = self.backgroundColor;
}

- (void)textFieldEditingDidBegin:(id)sender
{
	_currentBackgroundColor = self.backgroundColor;
	_currentTextColor = self.textColor;
	_isChangingBackgroundColorInternal = YES;
	if(self.focusedBackgroundColor)
		self.backgroundColor = self.focusedBackgroundColor;
	if(self.focusedTextColor)
		self.textColor = self.focusedTextColor;
	_isChangingBackgroundColorInternal = NO;
}

- (void)textFieldEditingDidEnd:(id)sender
{
	_isChangingBackgroundColorInternal = YES;
	self.backgroundColor = _currentBackgroundColor;
	self.textColor = _currentTextColor;
	_isChangingBackgroundColorInternal = NO;
}

- (void)addEvent
{
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldEditingDidBegin:) name:UITextViewTextDidBeginEditingNotification object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldEditingDidEnd:) name:UITextViewTextDidEndEditingNotification object:nil];
}

- (void)initVariables
{
	self.focusedBackgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];
	self.focusedTextColor = nil;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
	{
		[self addEvent];
		[self initVariables];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
	{
		[self addEvent];
		[self initVariables];
    }
    return self;
}

@end
