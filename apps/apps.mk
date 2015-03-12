
PRODUCT_PACKAGES += \
    MediaFloat      \
    RkApkinstaller  \
    RkExpe          \
    RKUpdateService \
    RkUserExperienceService \
    GoogleEmail

ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk312x)
PRODUCT_PACKAGES += \
    RkVideoPlayer
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM_PRODUCT)), box)
PRODUCT_PACKAGES += \
    RkBoxVideoPlayer
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), sofia3gr)
PRODUCT_PACKAGES += \
    Rk3grVideoPlayer
else
PRODUCT_PACKAGES += \
    Rk4kVideoPlayer
endif
endif
endif

ifeq ($(strip $(TARGET_BOARD_PLATFORM)), sofia3gr)
PRODUCT_PACKAGES += \
    Rk3grExplorer
else
PRODUCT_PACKAGES += \
    RkExplorer
endif

ifeq ($(strip $(BOARD_HAS_STRESSTEST_APP)), true)
    PRODUCT_PACKAGES += \
    StressTest \
    DeviceTest
endif


ifeq ($(strip $(TARGET_BOARD_PLATFORM)), sofia3gr)
PRODUCT_PACKAGES += \
    ituxd
#PRODUCT_COPY_FILES += \
#        $(LOCAL_PATH)/ituxd/lib/x86/libthermalJNI.so:system/lib/libthermalJNI.so 
endif


###########for box app ################
ifeq ($(strip $(TARGET_BOARD_PLATFORM_PRODUCT)), box)
PRODUCT_PACKAGES += \
    AllApp	\
    eHomeMediaCenter_box	\
    ITVLauncher	\
    RKGameControlSettingV1.0.1	\
    RkMusic	\
    Settings2	\
    SimpleLauncher	
endif
