a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Bootloader";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:27;}i:2;i:27;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:27;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:52;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:52;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:52;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:" Install bootloader if not already installed:";}i:2;i:56;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:101;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:34:"pacman -S --needed grub efibootmgr";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:36:"# pacman -S --needed grub efibootmgr";}i:2;i:107;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:143;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:150;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:150;}i:15;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:150;}i:16;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:150;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" Install bootloader to ESP:";}i:2;i:154;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:181;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:4:{i:0;a:3:{i:0;s:2:"# ";i:1;s:67:"grub-install --target=x86_64-efi --efi-directory=/boot/ --removable";i:2;s:0:"";}i:1;a:3:{i:0;s:2:"# ";i:1;s:46:"mount -o remount,rw /sys/firmware/efi/efivars/";i:2;s:0:"";}i:2;a:3:{i:0;s:2:"# ";i:1;s:76:"grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB";i:2;s:0:"";}i:3;a:3:{i:0;s:2:"# ";i:1;s:46:"mount -o remount,ro /sys/firmware/efi/efivars/";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:246:"# grub-install --target=x86_64-efi --efi-directory=/boot/ --removable
# mount -o remount,rw /sys/firmware/efi/efivars/
# grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB
# mount -o remount,ro /sys/firmware/efi/efivars/";}i:2;i:187;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:433;}i:21;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:440;}i:22;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:440;}i:23;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:440;}i:24;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:440;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:" Remove default bootloader theme:";}i:2;i:444;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:477;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:35:"rm -rf /boot/grub/themes/starfield/";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:37:"# rm -rf /boot/grub/themes/starfield/";}i:2;i:483;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:520;}i:29;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:527;}i:30;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:527;}i:31;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:527;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:529;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:529;}i:2;i:529;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:529;}i:35;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:555;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:555;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:555;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Configure custom bootloader hook:";}i:2;i:559;}i:39;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:340:"
#!/bin/sh

## AUTHOR:       AISK11
## LOCATION:     /etc/grub.d/40_custom (0755 root:root)
## DEPENDENCIES: core/grub
## DESCRIPTION:  Bootloader hook.

## Required line.
exec tail -n +3 "${0}"

## Custom menu entries.
menuentry 'Reboot Computer' --class restart {
    reboot
}

menuentry 'Shutdown Computer' --class shutdown {
    halt
}
";i:1;s:4:"text";i:2;s:21:"/etc/grub.d/40_custom";}i:2;i:598;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:973;}i:41;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:973;}i:42;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:973;}i:43;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:973;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" Make bootloader script executable:";}i:2;i:977;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1012;}i:46;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:32:"chmod 0755 /etc/grub.d/40_custom";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:34:"# chmod 0755 /etc/grub.d/40_custom";}i:2;i:1018;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1052;}i:48;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1059;}i:49;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1059;}i:50;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1059;}i:51;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1059;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" Configure bootloader";}i:2;i:1063;}i:53;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:1084;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"GRUB2 config options: ";}i:2;i:1086;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:81:"https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html";i:1;N;}i:2;i:1108;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1189;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:1190;}}}i:2;i:1084;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:": ";}i:2;i:1192;}i:55;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:865:"
## AUTHOR:       AISK11
## LOCATION:     /etc/default/grub (0644 root:root)
## DEPENDENCIES: core/grub
## DESCRIPTION:  Bootloader configuration.

## OS name.
GRUB_DISTRIBUTOR='Arch'

## Default menu entry.
GRUB_DEFAULT='0'
GRUB_SAVEDEFAULT='false'

## Time to boot default entry unless key is pressed.
GRUB_TIMEOUT='-1'
GRUB_TIMEOUT_STYLE='menu'

## Do not generate recovery mode entries.
GRUB_DISABLE_RECOVERY='true'

## Terminal input devices.
GRUB_TERMINAL_INPUT='console'

## Terminal output.
GRUB_GFXMODE='auto'
GRUB_GFXPAYLOAD_LINUX='text'

## Enable encrypted disks.
GRUB_ENABLE_CRYPTODISK='y'

## Kernel parameters.
GRUB_CMDLINE_LINUX=''
GRUB_CMDLINE_LINUX_DEFAULT='cryptdevice=LABEL=LUKS:luks-root net.ifnames=0 quiet'

## Bootloader colors (fg/bg).
GRUB_COLOR_NORMAL='white/black'
GRUB_COLOR_HIGHLIGHT='white/black'

## Bootloader theme.
#GRUB_THEME=''
";i:1;s:4:"text";i:2;s:17:"/etc/default/grub";}i:2;i:1199;}i:56;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2095;}i:57;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2095;}i:58;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2095;}i:59;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2095;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" Apply bootloader configuration changes:";}i:2;i:2099;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:2139;}i:62;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:36:"grub-mkconfig -o /boot/grub/grub.cfg";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:38:"# grub-mkconfig -o /boot/grub/grub.cfg";}i:2;i:2145;}i:63;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:2183;}i:64;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2190;}i:65;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2190;}i:66;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2190;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2190;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2190;}}