#base fedora stuff

%include budgie/budgie-base.ks


%packages
#x server
@base-x



#app groups because currently shit is empty
@firefox
@libreoffice
@hardware-support
bash-completion
bind-utils
btrfs-progs
microcode_ctl
psmisc

fuse

# Office
libreoffice

-@ GNOME Desktop Environment 
%end