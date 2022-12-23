%packages
glibc-langpack-fr
hunspell-fr
langpacks-fr
libreoffice-langpack-fr
aspell-fr
man-pages-fr
gimp-help-fr
%end

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
