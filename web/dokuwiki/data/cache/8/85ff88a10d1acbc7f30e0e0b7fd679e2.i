a:65:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Firewall";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:25;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:25;}i:2;i:25;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:25;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:50;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:50;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:50;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" Debian Linux: ";}i:2;i:54;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:69;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:30:"nft -v || apt install nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:32:"# nft -v || apt install nftables";}i:2;i:75;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:107;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:114;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:114;}i:15;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:114;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:116;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:116;}i:2;i:116;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:116;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:142;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:142;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:142;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:" Set nftables";}i:2;i:146;}i:23;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:159;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Nftables cheatsheet: ";}i:2;i:161;}i:2;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:88:"https://wiki.nftables.org/wiki-nftables/index.php/Quick_reference-nftables_in_10_minutes";i:1;N;}i:2;i:182;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:270;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:271;}}}i:2;i:159;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" rules: ";}i:2;i:273;}i:25;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1081:"
#!/usr/bin/env nft -f

## Remove all previous firewall settings.
flush ruleset;

## Services on local machine.
define tcp_services = {22};
define udp_services = {68,546};

table inet fw {
  chain input {
    type filter hook input priority 0;
    policy drop;

    ## Accept all loopback traffic.
    ip saddr {127.0.0.0/8} accept;
    ip6 saddr {::1} accept;

    ## Accept ICMP traffic except for requests.
    icmp type != {8,13,15,17,30,42} accept;
    icmpv6 type != {128,144} accept;

    ## Accept responses from server.
    ct state {established,related} accept;

    ## Accept client requests only for specified TCP and UDP services.
    tcp dport $tcp_services accept;
    udp dport $udp_services accept;
  }
  chain output {
    type filter hook output priority 0;
    policy accept;

    ## Do not disclose closed UDP services exceptions.
    icmp type != {8,13,15,17,30,42} drop;
    icmpv6 type != {128,144} drop;

    ## Do not disclose closed TCP services exceptions.
    tcp sport $tcp_services tcp flags {rst} tcp sequence {0} ct state {established} drop;
  }
}
";i:1;s:3:"txt";i:2;s:18:"/etc/nftables.conf";}i:2;i:286;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1398;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1398;}i:28;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1398;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1400;}i:30;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Service Management";i:1;i:2;i:2;i:1400;}i:2;i:1400;}i:31;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1400;}i:32;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1431;}i:33;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1431;}i:34;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1431;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" List currently active firewall rules: ";}i:2;i:1435;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1474;}i:37;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:16:"nft list ruleset";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:18:"# nft list ruleset";}i:2;i:1480;}i:38;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1498;}i:39;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1505;}i:40;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1505;}i:41;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1505;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1507;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"SystemD";i:1;i:3;i:2;i:1507;}i:2;i:1507;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1507;}i:45;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1525;}i:46;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1525;}i:47;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1525;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Enable and start firewall rules: ";}i:2;i:1529;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1563;}i:50;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:2:{i:0;a:3:{i:0;s:2:"# ";i:1;s:25:"systemctl enable nftables";i:2;s:0:"";}i:1;a:3:{i:0;s:2:"# ";i:1;s:24:"systemctl start nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:54:"# systemctl enable nftables
# systemctl start nftables";}i:2;i:1569;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1623;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1630;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1630;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1630;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1630;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Stop and disable firewall rules: ";}i:2;i:1634;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1668;}i:58;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:2:{i:0;a:3:{i:0;s:2:"# ";i:1;s:23:"systemctl stop nftables";i:2;s:0:"";}i:1;a:3:{i:0;s:2:"# ";i:1;s:26:"systemctl disable nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:54:"# systemctl stop nftables
# systemctl disable nftables";}i:2;i:1674;}i:59;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1728;}i:60;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1735;}i:61;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1735;}i:62;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1735;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1735;}i:64;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1735;}}