rm -rf /boot/grub/themes/artix-silence
cp -TR ./theme /boot/grub/themes/artix-silence
grep -v "GRUB_THEME" /etc/default/grub  > /etc/default/grub
echo 'GRUB_THEME="/boot/grub/themes/artix-silence/theme.txt"' >> /etc/default/grub 
grub-mkconfig -o /boot/grub/grub.cfg
