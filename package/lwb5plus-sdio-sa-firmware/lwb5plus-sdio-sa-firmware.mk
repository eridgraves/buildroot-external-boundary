################################################################################
#
# lwb5plus-sdio-sa-firmware
#
################################################################################

LWB5PLUS_SDIO_SA_FIRMWARE_VERSION = 11.171.0.24
LWB5PLUS_SDIO_SA_FIRMWARE_SITE = "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/LRD-REL-"$(LWB5PLUS_SDIO_SA_FIRMWARE_VERSION)
LWB5PLUS_SDIO_SA_FIRMWARE_SOURCE = laird-lwb5plus-sdio-sa-firmware-$(LWB5PLUS_SDIO_SA_FIRMWARE_VERSION).tar.bz2
LWB5PLUS_SDIO_SA_FIRMWARE_LICENSE = GPL-2.0

define LWB5PLUS_SDIO_SA_FIRMWARE_INSTALL_TARGET_CMDS
	cp -r $(@D)/firmware/* $(TARGET_DIR)/lib/firmware/
endef

$(eval $(generic-package))
