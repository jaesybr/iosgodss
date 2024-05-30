ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs

include $(THEOS_MAKE_PATH)/common.mk

TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.xm
MyTweak_FRAMEWORKS = UIKit
MyTweak_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
    install.exec "killall -9 SpringBoard"  # This line must start with a tab
