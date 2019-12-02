INSTALL_TARGET_PROCESSES = SpringBoard
export ARCHS = arm64 arm64e
DEBUG=0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AtKeyboard

AtKeyboard_FILES = Tweak.x
AtKeyboard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
