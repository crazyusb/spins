# fr_FR-base.ks
#
# Defines the basics for a workstation in spanish.

%include fr_FR-support.ks

lang fr_FR.UTF-8 --addsupport=fr_FR.UTF-8
keyboard --xlayouts=fr --vckeymap=fr
timezone Europe/Paris

%post

echo ""
echo "POST fr_FR-base **************************************"
echo ""

# Set French locale
cat >> /etc/rc.d/init.d/livesys << EOF_LIVESYS

# Force French keyboard layout (rhb #982394)
localectl set-locale fr_FR.UTF-8
localectl set-x11-keymap fr
localectl set-keymap fr

EOF_LIVESYS

%end
