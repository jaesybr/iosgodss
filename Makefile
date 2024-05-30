ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs

# Assuming THEOS is correctly defined somewhere
THEOS = /path/to/theos

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.xm
MyTweak_FRAMEWORKS = UIKit
MyTweak_LDFLAGS += -Wl,-segalign,4000

include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"  # This line must start with a tab

include $(THEOS)/makefiles/tweak.mk
