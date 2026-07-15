###############################################################################
#
# Fluke
#
###############################################################################

FLUKE_VERSION = 805d56080ba0c93f56e70964859267b4858c3a93
FLUKE_SITE = https://github.com/Texas-Lupo/fluke.git
FLUKE_SITE_METHOD = git
FLUKE_INSTALL_TARGET = YES

define FLUKE_INSTALL_TARGET_CMDS

	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(@D)/ground_telemetry.py
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(FLUKE_PKGDIR)/files/S98fluke

	mkdir -p $(TARGET_DIR)/etc/default
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/default $(FLUKE_PKGDIR)/files/fluke

endef


$(eval $(generic-package))
