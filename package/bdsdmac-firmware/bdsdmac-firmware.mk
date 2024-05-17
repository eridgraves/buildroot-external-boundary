################################################################################
#
# bdsdmac-firmware
#
################################################################################

BDSDMAC_FIRMWARE_VERSION = 11.171.0.28
BDSDMAC_FIRMWARE_SITE = "https://github.com/LairdCP/BDSDMAC-Release-Packages/releases/download/LRD-REL-"$(BDSDMAC_FIRMWARE_VERSION)
BDSDMAC_FIRMWARE_SOURCE = laird-bdsdmac-firmware-$(BDSDMAC_FIRMWARE_VERSION).tar.bz2
BDSDMAC_FIRMWARE_LICENSE = GPL-2.0

define BDSDMAC_FIRMWARE_INSTALL_TARGET_CMDS
	cp -r $(@D)/firmware/* $(TARGET_DIR)/lib/firmware/
endef

$(eval $(generic-package))
