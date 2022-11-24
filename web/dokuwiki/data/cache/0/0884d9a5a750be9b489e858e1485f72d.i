a:71:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Package Manager";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:32;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:32;}i:2;i:32;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:32;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:57;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:57;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:57;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" Install dependencies: ";}i:2;i:61;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:84;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:16:"apt install curl";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:18:"# apt install curl";}i:2;i:90;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:108;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:115;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:115;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:115;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:117;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:117;}i:2;i:117;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:117;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:143;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:143;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:143;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" Configure apt repositories";}i:2;i:147;}i:23;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:174;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Debian repositories: ";}i:2;i:176;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:35:"https://wiki.debian.org/SourcesList";i:1;N;}i:2;i:197;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:232;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:233;}}}i:2;i:174;}i:24;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:235;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Kali repositories: ";}i:2;i:237;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:74:"https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories";i:1;N;}i:2;i:256;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:330;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:331;}}}i:2;i:235;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:": ";}i:2;i:333;}i:26;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:966:"
## AUTHOR:       AISK11
## LOCATION:     /etc/apt/sources.list (0644 root:root)
## DEPENDENCIES: apt
## DESCRIPTION:  Debian package manager repositories.

## Official Debian current stable release repositories.
deb http://deb.debian.org/debian stable main contrib non-free
deb-src http://deb.debian.org/debian stable main contrib non-free

deb http://deb.debian.org/debian-security stable-security main contrib non-free
deb-src http://deb.debian.org/debian-security stable-security main contrib non-free

deb http://deb.debian.org/debian stable-updates main contrib non-free
deb-src http://deb.debian.org/debian stable-updates main contrib non-free

deb http://deb.debian.org/debian stable-backports main contrib non-free
deb-src http://deb.debian.org/debian stable-backports main contrib non-free

## Official Kali repositories.
deb http://http.kali.org/kali kali-rolling main contrib non-free
deb-src http://http.kali.org/kali kali-rolling main contrib non-free
";i:1;s:4:"text";i:2;s:21:"/etc/apt/sources.list";}i:2;i:340;}i:27;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1341;}i:28;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1341;}i:29;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1341;}i:30;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1341;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:" Configure apt package priorities";}i:2;i:1345;}i:32;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:1378;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Apt package priorities: ";}i:2;i:1380;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:91:"https://www.debian.org/doc/manuals/debian-handbook/sect.apt-get.en.html#sect.apt.priorities";i:1;N;}i:2;i:1404;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1495;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:1496;}}}i:2;i:1378;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:": ";}i:2;i:1498;}i:34;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:462:"
## AUTHOR:       AISK11
## LOCATION:     /etc/apt/preferences (0644 root:root)
## DEPENDENCIES: apt
## DESCRIPTION:  Debian package manager prioritites.

## Official Debian current stable release repositories.
Package: *
Pin: release o=Debian
Pin-Priority: 1001

Package: *
Pin: release o=Debian Backports
Pin-Priority: 1001

## Official Kali repositories.
Package: *
Pin: release o=Kali
Pin-Priority: 1

Package: dhcpcd5
Pin: release o=Kali
Pin-Priority: 1001
";i:1;s:4:"text";i:2;s:20:"/etc/apt/preferences";}i:2;i:1505;}i:35;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2001;}i:36;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2001;}i:37;a:3:{i:0;s:13:"listitem_open";i:1;a:2:{i:0;i:1;i:1;i:1;}i:2;i:2001;}i:38;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2001;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" Add 3rd party repository keys:";}i:2;i:2005;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2036;}i:41;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:2036;}i:42;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:2;}i:2;i:2036;}i:43;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2036;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" Kali repository: ";}i:2;i:2042;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:2060;}i:46;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:99:"curl -Lo /etc/apt/trusted.gpg.d/kali-archive-rolling.asc 'https://archive.kali.org/archive-key.asc'";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:101:"$ curl -Lo /etc/apt/trusted.gpg.d/kali-archive-rolling.asc 'https://archive.kali.org/archive-key.asc'";}i:2;i:2066;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:2167;}i:48;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2174;}i:49;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2174;}i:50;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2174;}i:51;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2174;}i:52;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2174;}i:53;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2174;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" Verify package priorities: ";}i:2;i:2178;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:2206;}i:56;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:24:"apt update && apt policy";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:26:"$ apt update && apt policy";}i:2;i:2212;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:2238;}i:58;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2245;}i:59;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2245;}i:60;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2245;}i:61;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2245;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" Update system: ";}i:2;i:2249;}i:63;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:2265;}i:64;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:61:"apt update && apt full-upgrade && apt autoremove && apt clean";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:63:"# apt update && apt full-upgrade && apt autoremove && apt clean";}i:2;i:2271;}i:65;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:2334;}i:66;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2341;}i:67;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2341;}i:68;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2341;}i:69;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2341;}i:70;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2341;}}