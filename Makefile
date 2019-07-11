INSTALL_TARGET_PROCESSES = SpringBoard
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = HideNCText
HideNCText_FILES = Tweak.x
HideNCText_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk
THEOS_DEVICE_IP = 192.168.3.3
ARCHS = armv7 arm64 arm64e
Test_FRAMEWORKS = UIKit
TARGET = simulator:clang:latest:7.0
tweakname_USE_SUBSTRATE = 0
after-install::install.exec "killall -9 SpringBoard"

