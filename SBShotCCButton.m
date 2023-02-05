#import "SBShotCCButton.h"

#define PATH @"/var/mobile/Library/Preferences/com.icraze.sbshotenabled"

@implementation SBShotCCButton
-(BOOL)isSelected {
	return [[NSFileManager defaultManager] fileExistsAtPath:PATH];
}

-(void)setSelected:(BOOL)selected {
	[super refreshState];
	
	NSFileManager *fm = [NSFileManager defaultManager];
	selected ? [fm createFileAtPath:PATH contents:nil attributes:nil] : [fm removeItemAtPath:PATH error:nil];
}
@end
