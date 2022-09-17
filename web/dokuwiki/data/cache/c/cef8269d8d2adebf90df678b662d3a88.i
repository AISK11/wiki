a:47:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Firewall";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:25;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:25;}i:2;i:25;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:25;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:50;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:50;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:50;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" Print firewall version or install it: ";}i:2;i:54;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:93;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:30:"nft -v || apt install nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:32:"# nft -v || apt install nftables";}i:2;i:99;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:131;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:138;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:138;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:138;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:140;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:140;}i:2;i:140;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:140;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:166;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:166;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:166;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" Set ";}i:2;i:170;}i:23;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:88:"https://wiki.nftables.org/wiki-nftables/index.php/Quick_reference-nftables_in_10_minutes";i:1;s:14:"nftables rules";}i:2;i:175;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:": ";}i:2;i:282;}i:25;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1432:"
#!/usr/bin/env nft -f

## AUTHOR:       AISK11
## LOCATION:     /etc/nftables.conf (0644 root:root)
## DEPENDENCIES: nftables
## DESCRIPTION:  Network firewall rules.

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

    ## Accept responses from servers.
    ct state {established,related} accept;

    ## Accept requests from clients for specified TCP and UDP services.
    tcp dport $tcp_services accept;
    udp dport $udp_services accept;
  }
  chain forward {
    type filter hook forward priority 0;
    policy drop;
  }
  chain output {
    type filter hook output priority 0;
    policy accept;

    ## Accept all loopback traffic.
    ip daddr {127.0.0.0/8} accept;
    ip6 daddr {::1} accept;

    ## Do not disclose closed UDP service exceptions.
    icmp type != {8,13,15,17,30,42} drop;
    icmpv6 type != {128,144} drop;

    ## Do not disclose closed TCP service exceptions (in rare cases may
    ## cause issues - see GRKERNSEC_BLACKHOLE).
    tcp sport $tcp_services tcp flags {rst} drop;
  }
}
";i:1;s:4:"text";i:2;s:18:"/etc/nftables.conf";}i:2;i:289;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1753;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1753;}i:28;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1753;}i:29;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1753;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" Start firewall immediately and on startup: ";}i:2;i:1757;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1801;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:53:"systemctl start nftables && systemctl enable nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:55:"# systemctl start nftables && systemctl enable nftables";}i:2;i:1807;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1862;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1869;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1869;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1869;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1869;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" Verify currently active firewall rules: ";}i:2;i:1873;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1914;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:16:"nft list ruleset";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:18:"# nft list ruleset";}i:2;i:1920;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1938;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1945;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1945;}i:44;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1945;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1945;}i:46;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1945;}}