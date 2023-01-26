# Build gnome ISO

%include fedora-kickstarts/fedora-live-workstation.ks
#%include l10n/fr_FR-base.ks
#%include l10n/fr_FR-gnome.ks
%include fedora-kickstarts/l10n/fedora-live-workstation-fr_FR.ks
%include pkg/minimal.ks

part / --size 8120 --fstype ext4
