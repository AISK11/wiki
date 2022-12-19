a:67:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"ShellCheck";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:27;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"- static shell script analysis tool.";}i:2;i:29;}i:6;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:65;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:67;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:69;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:69;}i:2;i:69;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:69;}i:11;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:94;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:94;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:94;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Debian:";}i:2;i:98;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:105;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:42:"shellcheck -V || apt install -y shellcheck";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:44:"# shellcheck -V || apt install -y shellcheck";}i:2;i:111;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:155;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:162;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:162;}i:20;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:162;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:164;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:164;}i:2;i:164;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:164;}i:24;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:190;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:190;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:190;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ShellCheck config file:";}i:2;i:194;}i:28;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:818:"
## AUTHOR:       AISK11
## LOCATION:     ~/.config/shellcheckrc (0644)
## DEPENDENCIES: shellcheck
## DESCRIPTION:  ShellCheck reads first found config file from:
##                 1. 'shellcheckrc' or '.shellcheckrc' in script's directory.
##                 2. 'shellcheckrc' or '.shellcheckrc' in script's parent
##                     directories.
##                 3. '~/.shellcheckrc'.
##                 4. XDG directory: '~/.config/shellcheckrc'.

## Enable optional checks by name as listed with '--list-optional'.
enable=add-default-case
enable=avoid-nullary-conditions
enable=check-extra-masked-returns
enable=check-set-e-suppressed
enable=check-unassigned-uppercase
enable=deprecate-which
enable=quote-safe-variables
enable=require-variable-braces

## Override shell detected from the shebang.
shell=sh
";i:1;s:4:"text";i:2;s:22:"~/.config/shellcheckrc";}i:2;i:222;}i:29;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1076;}i:30;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1076;}i:31;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1076;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1078;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"Usage";i:1;i:2;i:2;i:1078;}i:2;i:1078;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1078;}i:35;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1096;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1096;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1096;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Check script for errors:";}i:2;i:1100;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1124;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:19:"shellcheck <SCRIPT>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:21:"$ shellcheck <SCRIPT>";}i:2;i:1130;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1151;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1158;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1158;}i:44;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1158;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1160;}i:46;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Resources";i:1;i:2;i:2;i:1160;}i:2;i:1160;}i:47;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1160;}i:48;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1182;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1182;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1182;}i:51;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:26:"https://www.shellcheck.net";i:1;s:22:"ShellCheck Online Tool";}i:2;i:1186;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1239;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1239;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1239;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1239;}i:56;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:31:"https://www.shellcheck.net/wiki";i:1;s:15:"ShellCheck Wiki";}i:2;i:1243;}i:57;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1294;}i:58;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1294;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1294;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1294;}i:61;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:38:"https://github.com/koalaman/shellcheck";i:1;s:29:"ShellCheck GitHub Source Code";}i:2;i:1298;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1370;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1370;}i:64;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1370;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1370;}i:66;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1370;}}