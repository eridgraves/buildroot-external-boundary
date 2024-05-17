################################################################################
#
# if573-sdio-firmware
#
################################################################################

IF573_SDIO_FIRMWARE_VERSION = 11.171.0.24
IF573_SDIO_FIRMWARE_SITE = "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/LRD-REL-"$(IF573_SDIO_FIRMWARE_VERSION)
IF573_SDIO_FIRMWARE_SOURCE = laird-if573-sdio-firmware-$(IF573_SDIO_FIRMWARE_VERSION).tar.bz2
IF573_SDIO_FIRMWARE_LICENSE = GPL-2.0

define IF573_SDIO_FIRMWARE_INSTALL_TARGET_CMDS
	cp -r $(@D)/firmware/* $(TARGET_DIR)/lib/firmware/
endef

$(eval $(generic-package))
