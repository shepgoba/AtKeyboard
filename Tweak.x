@interface UITextInputTraits : NSObject
@property (assign,nonatomic) long long keyboardType; 
@end


%hook UIKeyboardLayout
-(void)showKeyboardWithInputTraits:(id)arg1 screenTraits:(id)arg2 splitTraits:(id)arg3 {
	((UITextInputTraits *)arg1).keyboardType = 7;
	%orig;
}
%end