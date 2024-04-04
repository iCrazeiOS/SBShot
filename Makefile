export ARCHS = arm64 arm64e
export TARGET := iphone:clang:16.5:12.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SBShot

SBShot_FILES = Tweak.x
SBShot_CFLAGS = -fobjc-arc

BUNDLE_NAME = SBShotCCButton
SBShotCCButton_BUNDLE_EXTENSION = bundle
SBShotCCButton_FILES = SBShotCCButton.m
SBShotCCButton_CFLAGS = -fobjc-arc
SBShotCCButton_PRIVATE_FRAMEWORKS = ControlCenterUIKit
SBShotCCButton_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/bundle.mk
