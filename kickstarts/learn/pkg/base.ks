%packages --instLangs all
@hardware-support
@printing
pam
# Explicitly specified here:
# <notting> walters: because otherwise dependency loops cause yum issues.
kernel
kernel-modules
kernel-modules-extra

-fedora-bookmarks

# This was added a while ago, I think it falls into the category of
# "Diagnosis/recovery tool useful from a Live OS image".  Leaving this untouched
# for now.
#memtest86+

# anaconda needs the locales available to run for different locales
glibc-all-langpacks

# The point of a live image is to install
anaconda
anaconda-core
anaconda-install-env-deps
anaconda-live
@anaconda-tools
# Anaconda has a weak dep on this and we don't want it on livecds, see
# https://fedoraproject.org/wiki/Changes/RemoveDeviceMapperMultipathFromWorkstationLiveCD
-fcoe-utils
-device-mapper-multipath

# Need aajohan-comfortaa-fonts for the SVG rnotes images
aajohan-comfortaa-fonts

julietaula-montserrat-alternates-fonts
julietaula-montserrat-fonts

# Without this, initramfs generation during live image creation fails: #1242586
dracut-config-generic
dracut-live

# Unneeded packages
-gnome-boxes

# no longer in @core since 2018-10, but needed for livesys script
initscripts
chkconfig

gjs

# fancy starship prompt
starship
zsh

# chsh
util-linux-user
livesys-scripts

%end
