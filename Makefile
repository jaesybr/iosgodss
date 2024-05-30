include $(THEOS_MAKE_PATH)/common.mk

TWEAK_NAME = MyTweak

ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs

MyTweak_FILES = Tweak.xm
MyTweak_FRAMEWORKS = UIKit
MyTweak_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/README.md
