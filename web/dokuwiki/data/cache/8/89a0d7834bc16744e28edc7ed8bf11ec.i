a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Authentication";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:31;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:31;}i:2;i:31;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:31;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:56;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:56;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:56;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" Install opendoas if not already installed:";}i:2;i:60;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:103;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:35:"doas || pacman -S --needed opendaos";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:37:"# doas || pacman -S --needed opendaos";}i:2;i:109;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:146;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:153;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:153;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:153;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:155;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:155;}i:2;i:155;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:155;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:181;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:181;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:181;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" Configure opendoas:";}i:2;i:185;}i:23;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:226:"
## AUTHOR:       AISK11
## LOCATION:     /etc/doas.conf (0600 root:root)
## DEPENDENCIES: community/opendoas
## DESCRIPTION:  System authentication configuration.

## Administrative group.
#permit :wheel
permit nopass :wheel
";i:1;s:14:"/etc/doas.conf";i:2;N;}i:2;i:210;}i:24;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:459;}i:25;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:459;}i:26;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:459;}i:27;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:459;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:" Set config file permissions:";}i:2;i:463;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:492;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:25:"chmod 0600 /etc/doas.conf";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:27:"# chmod 0600 /etc/doas.conf";}i:2;i:498;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:525;}i:32;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:532;}i:33;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:532;}i:34;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:532;}i:35;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:532;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" Replace sudo with doas:";}i:2;i:536;}i:37;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:560;}i:38;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:34:"ln -sf $(which doas) /usr/bin/sudo";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:36:"# ln -sf $(which doas) /usr/bin/sudo";}i:2;i:566;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:602;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:609;}i:41;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:609;}i:42;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:609;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:611;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"Usage";i:1;i:2;i:2;i:611;}i:2;i:611;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:611;}i:46;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:629;}i:47;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:629;}i:48;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:629;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" Add admin user to administrative group:";}i:2;i:633;}i:50;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:673;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:24:"usermod -aG wheel <USER>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:26:"# usermod -aG wheel <USER>";}i:2;i:679;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:705;}i:53;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:712;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Note: User re-login is required for group changes to take effect.";}i:2;i:714;}i:55;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:779;}i:56;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:781;}i:57;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:781;}i:58;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:781;}i:59;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:781;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" Execute command as root:";}i:2;i:785;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:810;}i:62;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:14:"doas <COMMAND>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:16:"$ doas <COMMAND>";}i:2;i:816;}i:63;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:832;}i:64;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:839;}i:65;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:839;}i:66;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:839;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:839;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:839;}}