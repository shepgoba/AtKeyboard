@interface UITextInputTraits : NSObject
@property (assign,nonatomic) long long keyboardType; 
@end


%hook UIKeyboardLayout
-(void)showKeyboardWithInputTraits:(id)arg1 screenTraits:(id)arg2 splitTraits:(id)arg3 {
	if (arg1)
		[(UITextInputTraits *)arg1 setKeyboardType: 7];
	%orig;
}
%end