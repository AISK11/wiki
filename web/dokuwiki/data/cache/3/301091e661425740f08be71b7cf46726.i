a:60:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"DHCP";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:21;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:21;}i:2;i:21;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:21;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:46;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:46;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:46;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" Print DHCP version or install it: ";}i:2;i:50;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:85;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:45:"dhcpcd --version || pacman -S --needed dhcpcd";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:47:"# dhcpcd --version || pacman -S --needed dhcpcd";}i:2;i:91;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:138;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:145;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:145;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:145;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:147;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:147;}i:2;i:147;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:147;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:173;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:173;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:173;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" Configure DHCP ";}i:2;i:177;}i:23;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:193;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"DHCP options: ";}i:2;i:195;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:73:"https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol#Options";i:1;N;}i:2;i:209;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:282;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:283;}}}i:2;i:193;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:":";}i:2;i:285;}i:25;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:754:"
## AUTHOR:       AISK11
## LOCATION:     /etc/dhcpcd.conf (0644 root:root)
## DEPENDENCIES: core/dhcpcd
## DESCRIPTION:  DHCP client settings.

## Comma separated list of blocked interface patterns.
#denyinterfaces *

## Static configuration template (interace cannot be denied).
#interface eth0
#  static ip_address=10.0.0.100/24
#  static routers=10.0.0.1

## Group to manage dhcpcd via control socket.
controlgroup network

## Do not overwrite '/etc/resolv.conf' with DHCP server DNS configuration.
nohook resolv.conf

## Don't check if obtained IPv4 address is taken by arp (increases speed) and
## also disables IPv4LL (APIPA).
noarp

## Remove any pre-existing IPv4 addresses when adding new IPv4 address.
noalias

## Anonymous profile.
anonymous
";i:1;s:4:"text";i:2;s:16:"/etc/dhcpcd.conf";}i:2;i:291;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1075;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1075;}i:28;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1075;}i:29;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1075;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" Stop dhcpcd and do not start from init: ";}i:2;i:1079;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1120;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:49:"systemctl stop dhcpcd && systemctl disable dhcpcd";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:51:"# systemctl stop dhcpcd && systemctl disable dhcpcd";}i:2;i:1126;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1177;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1184;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1184;}i:36;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1184;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1186;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"Usage";i:1;i:2;i:2;i:1186;}i:2;i:1186;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1186;}i:40;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1204;}i:41;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1204;}i:42;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1204;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" Lease IP address for specified interface:";}i:2;i:1208;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1250;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:18:"dhcpcd <INTERFACE>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:20:"# dhcpcd <INTERFACE>";}i:2;i:1256;}i:46;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1276;}i:47;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1283;}i:48;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1283;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1283;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1283;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" Release IP address for specified interface:";}i:2;i:1287;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1331;}i:53;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:21:"dhcpcd -k <INTERFACE>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:23:"# dhcpcd -k <INTERFACE>";}i:2;i:1337;}i:54;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1360;}i:55;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1367;}i:56;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1367;}i:57;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1367;}i:58;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1367;}i:59;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1367;}}