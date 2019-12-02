#line 1 "Tweak.x"
@interface UITextInputTraits : NSObject
@property (assign,nonatomic) long long keyboardType; 
@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIKeyboardLayout; 
static void (*_logos_orig$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$)(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayout* _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_method$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayout* _LOGOS_SELF_CONST, SEL, id, id, id); 

#line 6 "Tweak.x"

static void _logos_method$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$(_LOGOS_SELF_TYPE_NORMAL UIKeyboardLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3) {
	((UITextInputTraits *)arg1).keyboardType = 7;
	_logos_orig$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIKeyboardLayout = objc_getClass("UIKeyboardLayout"); MSHookMessageEx(_logos_class$_ungrouped$UIKeyboardLayout, @selector(showKeyboardWithInputTraits:screenTraits:splitTraits:), (IMP)&_logos_method$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$, (IMP*)&_logos_orig$_ungrouped$UIKeyboardLayout$showKeyboardWithInputTraits$screenTraits$splitTraits$);} }
#line 12 "Tweak.x"
