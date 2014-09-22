GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-config-mode-hostname \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-luci-private-wifi \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-mesh-vpn-fastd \
	gluon-next-node \
	gluon-radvd \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

FOO := \


# * opkg_install_cmd: Cannot install package gluon-config-mode-autoupdater.
# * opkg_install_cmd: Cannot install package gluon-config-mode-contact-info.
# * opkg_install_cmd: Cannot install package gluon-config-mode-geo-location.
# * opkg_install_cmd: Cannot install package gluon-config-mode-hostname.
# * opkg_install_cmd: Cannot install package gluon-config-mode-mesh-vpn.
# * opkg_install_cmd: Cannot install package gluon-luci-private-wifi.
# * opkg_install_cmd: Cannot install package gluon-mesh-batman-adv-15.



DEFAULT_GLUON_RELEASE := 0.1+0-$(shell date '+%Y.%m.%d-%H.%M')-g.$(shell git -C $(GLUONDIR) log --pretty=format:'%h' -n 1)-s.$(shell git -C $(GLUONDIR)/site log --pretty=format:'%h' -n 1)

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0.1
