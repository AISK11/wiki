a:34:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Pre-Installation";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:12:"wrap_divwrap";i:1;a:2:{i:0;i:1;i:1;s:26:"center round important 60%";}i:2;i:1;i:3;s:33:"<WRAP center round important 60%>";}i:2;i:33;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:33;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"This section is incomplete and needs further work!";}i:2;i:67;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:118;}i:7;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:12:"wrap_divwrap";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:7:"</WRAP>";}i:2;i:118;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:118;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"1. Make sure the USB filesystem is ";}i:2;i:127;}i:10;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:162;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"not";}i:2;i:164;}i:12;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:167;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" mounted!!!";}i:2;i:169;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:180;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:180;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"2. Prepare the USB:";}i:2;i:182;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:201;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:201;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:203;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:8:{i:0;a:3:{i:0;s:2:"# ";i:1;s:18:"cfdisk -z <DEVICE>";i:2;s:0:"";}i:1;a:3:{i:0;s:8:"cfdisk> ";i:1;s:3:"gpt";i:2;s:0:"";}i:2;a:3:{i:0;s:8:"cfdisk> ";i:1;s:1:"n";i:2;s:0:"";}i:3;a:3:{i:0;s:8:"cfdisk> ";i:1;s:8:" (Enter)";i:2;s:0:"";}i:4;a:3:{i:0;s:8:"cfdisk> ";i:1;s:1:"W";i:2;s:0:"";}i:5;a:3:{i:0;s:8:"cfdisk> ";i:1;s:3:"yes";i:2;s:0:"";}i:6;a:3:{i:0;s:8:"cfdisk> ";i:1;s:1:"Q";i:2;s:0:"";}i:7;a:3:{i:0;s:2:"# ";i:1;s:10:"wipefs -a ";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:104:"# cfdisk -z <DEVICE>
cfdisk> gpt
cfdisk> n
cfdisk>  (Enter)
cfdisk> W
cfdisk> yes
cfdisk> Q
# wipefs -a ";}i:2;i:209;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:313;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:320;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:320;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"3. Flash disk image on the USB:";}i:2;i:322;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:353;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:353;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:355;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:54:"dd if=~/openbsd/install<VERSION>.iso of=<DEVICE> bs=1M";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:56:"# dd if=~/openbsd/install<VERSION>.iso of=<DEVICE> bs=1M";}i:2;i:361;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:417;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:424;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:424;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:424;}i:33;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:424;}}