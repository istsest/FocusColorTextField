TextField and TextView having text and background color when focused.
==========================

![Alt text](/main.png)

<pre><code>
	textField1.focusedBackgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];
	textField2.focusedBackgroundColor = [[UIColor cyanColor] colorWithAlphaComponent:0.3];
	
	textView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.2];
	textView.focusedBackgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.7];
	textView.focusedTextColor = [UIColor whiteColor];
</code></pre>
