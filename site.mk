GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	respondd \
	alfred \
	status-page \
	web-advanced \
	web-wizard

GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-zip \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-web-private-wifi \
	gluon-web-mesh-vpn-fastd \
	gluon-neighbour-info \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	haveged \
	iptables \
	iwinfo \
	ffs-set-segment \
	ffs-watchdog

# add addition network drivers and usb support only to targes where disk space does not matter.
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
        kmod-usb-core \
        kmod-usb-ohci-pci \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether \
        kmod-sky2 \
        kmod-r8169 \
        kmod-forcedeth \
        kmod-8139too \
	kmod-atl2 \
	kmod-igb
endif

DEFAULT_BUILD_DATE := $(shell date '+%Y-%m-%d')

BUILD_DATE ?= $(DEFAULT_BUILD_DATE)

DEFAULT_GLUON_RELEASE := 1.4+$(BUILD_DATE)-g.$(shell git -C $(GLUON_SITEDIR)/../ log --pretty=format:'%h' -n 1)-s.$(shell git -C $(GLUON_SITEDIR) log --pretty=format:'%h' -n 1)

GLUON_LANGS := de en

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Default priority for updates.
GLUON_PRIORITY ?= 0.1

#enable generation of images for ath10k devices with ibss mode
GLUON_ATH10K_MESH ?= 11s
