//
//  TestFocusColorTextFieldViewController.m
//  testPopCornComponents
//
//  Created by Joon on 13. 5. 15..
//  Copyright (c) 2013년 Joon. All rights reserved.
//

#import "TestFocusColorTextFieldViewController.h"
#import "PCFocusColorTextField.h"
#import "PCFocusColorTextView.h"

@interface TestFocusColorTextFieldViewController ()
{
	IBOutlet PCFocusColorTextField *textField1;
	IBOutlet PCFocusColorTextField *textField2;
	IBOutlet PCFocusColorTextView *textView;
	
}

@end


@implementation TestFocusColorTextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.title = @"Focus Color";

	textField1.focusedBackgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];
	textField2.focusedBackgroundColor = [[UIColor cyanColor] colorWithAlphaComponent:0.3];
	
	textView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.2];
	textView.focusedBackgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.7];
	textView.focusedTextColor = [UIColor whiteColor];
	
	[textField1 becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
	textField1 = nil;
	textField2 = nil;
	textView = nil;
	[super viewDidUnload];
}

@end
