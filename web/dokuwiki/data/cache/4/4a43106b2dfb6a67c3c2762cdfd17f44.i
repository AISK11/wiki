a:50:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"WAP";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:12:"wrap_divwrap";i:1;a:2:{i:0;i:1;i:1;s:26:"center round important 60%";}i:2;i:1;i:3;s:33:"<WRAP center round important 60%>";}i:2;i:20;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:20;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"This section is incomplete and needs further work!";}i:2;i:54;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:105;}i:7;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:12:"wrap_divwrap";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:7:"</WRAP>";}i:2;i:105;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:114;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:114;}i:2;i:114;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:114;}i:11;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:140;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:140;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:140;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Identify 802.11 (Wi-Fi) network devices and their capabilities:";}i:2;i:144;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:207;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:26:"ifconfig wlan [media] chan";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:28:"$ ifconfig wlan [media] chan";}i:2;i:213;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:241;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:248;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:248;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:248;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:248;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Configure interface as WAP:";}i:2;i:252;}i:23;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:583:"
## AUTHOR:       AISK11
## PATH:         /etc/hostname.<INTERFACE> (0640 root:wheel)
## DEPENDENCIES: -
## DESCRIPTION:  Network interface configuration.

## Set interface media options (interface specific).
## View all supported options: $(ifconfig <INTERFACE> media chan).
media autoselect mediaopt hostap
nwid "OpenBSD-AP" 
inet 10.0.2.1 255.255.255.0 NONE

## Set interface MAC address (XY:XX:XX:XX:XX:XX), where X=[0-9,a-f] and Y=[0,4,8,c].
lladdr 00:00:00:00:00:00

## Set startup logical state.
down
up

## Optional interface description.
description "Wireless access point"
";i:1;s:4:"text";i:2;s:23:"/etc/hostname.INTERFACE";}i:2;i:284;}i:24;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:904;}i:25;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:904;}i:26;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:904;}i:27;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:906;}i:28;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:906;}i:29;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:906;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Find wireless NICs";}i:2;i:910;}i:31;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:928;}i:32;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:928;}i:33;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:928;}i:34;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:928;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"Find what wireless NIC supports - MAC randomization, bandwodth, wireless modes (AP, supplicant";}i:2;i:932;}i:36;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1026;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:").";}i:2;i:1029;}i:38;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1031;}i:39;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1031;}i:40;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1031;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:158:"
hostapd
hostapd.conf



ifconfig

man cardbus pci = network nevice naming!!!
man fxp = ethernet driver
man 4 ifmedia = channel band



inet
intro?
netintro?
";i:1;N;i:2;N;}i:2;i:1039;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1039;}i:43;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:53:"https://en.m.wikipedia.org/wiki/List_of_WLAN_channels";i:1;N;}i:2;i:1207;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1260;}i:45;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:67:"http://linuxwireless.sipsolutions.net/en/users/Documentation/modes/";i:1;N;}i:2;i:1261;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1328;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1328;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1328;}i:49;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1328;}}