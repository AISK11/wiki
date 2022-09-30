a:37:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"SSH";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:20;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:20;}i:2;i:20;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:20;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:45;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:45;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:" Install SSH:";}i:2;i:49;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:62;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:26:"apt install openssh-server";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:28:"# apt install openssh-server";}i:2;i:68;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:96;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:103;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:103;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:103;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:105;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:105;}i:2;i:105;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:105;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:131;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:131;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:131;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" Configure ssh server:";}i:2;i:135;}i:23;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:831:"
## Listening service (IPv4/IPv6, ip address, port).
AddressFamily any
ListenAddress 0.0.0.0
ListenAddress ::
Port          22

## Prevent hanging dead connections.
LoginGraceTime      60
TCPKeepAlive        no
ClientAliveInterval 60
ClientAliveCountMax 2
MaxStartups         10:30:100
MaxAuthTries        1

## Gzip compression can bottleneck fast networks.
Compression no

## Permitted users.
PermitRootLogin no
AllowUsers      *

## Password authentication method.
PubkeyAuthentication            no
PasswordAuthentication          yes
PermitEmptyPasswords            no
ChallengeResponseAuthentication no
UsePAM                          no

## Login messages and SSH banner.
DebianBanner    no
VersionAddendum none
Banner          none
PrintMotd       no
PrintLastLog    no

## Logging.
SyslogFacility AUTH
LogLevel       INFO
";i:1;s:4:"text";i:2;s:20:"/etc/ssh/sshd_config";}i:2;i:162;}i:24;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1027;}i:25;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1027;}i:26;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1027;}i:27;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1027;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Enable ssh daemon now and on startup:";}i:2;i:1031;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1069;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:44:"systemctl restart ssh ; systemctl enable ssh";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:46:"# systemctl restart ssh ; systemctl enable ssh";}i:2;i:1075;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1121;}i:32;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1128;}i:33;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1128;}i:34;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1128;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1128;}i:36;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1128;}}