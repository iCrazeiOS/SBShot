#import "SBShotCCButton.h"
#import <rootless.h>
#import <UIKit/UIKit.h>

#define PATH ROOT_PATH_NS(@"/var/mobile/Library/Preferences/com.icraze.sbshotenabled")

@implementation SBShotCCButton
- (UIImage *)iconGlyph
{
    return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

-(BOOL)isSelected {
	return [[NSFileManager defaultManager] fileExistsAtPath:PATH];
}

-(void)setSelected:(BOOL)selected {
	[super refreshState];
	
	NSFileManager *fm = [NSFileManager defaultManager];
	selected ? [fm createFileAtPath:PATH contents:nil attributes:nil] : [fm removeItemAtPath:PATH error:nil];
}
@end
