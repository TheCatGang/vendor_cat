# CatOS Version
CAT_VERSION_NUMBER := 1.0
CAT_POSTFIX := $(shell date +"%Y%m%d-%H%M")
ifdef CAT_BUILD_EXTRA
    CAT_POSTFIX := -$(CAT_BUILD_EXTRA)
endif

ifndef CAT_BUILD_TYPE
    CAT_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
CAT_VERSION := CatOS-v$(CAT_VERSION_NUMBER)-$(CAT_BUILD)-$(CAT_POSTFIX)-$(CAT_BUILD_TYPE)
CAT_MOD_VERSION := Cat-$(CAT_BUILD)-$(CAT_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    cat.ota.version=$(CAT_VERSION_NUMBER)
    ro.cat.version=$(CAT_VERSION) \
    ro.modversion=$(CAT_MOD_VERSION) \
    ro.cat.buildtype=$(CAT_BUILD_TYPE)