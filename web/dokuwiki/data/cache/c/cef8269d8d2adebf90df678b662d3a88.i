a:47:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Firewall";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:25;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:25;}i:2;i:25;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:25;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:50;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:50;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:50;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Print firewall version or install it:";}i:2;i:54;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:92;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:37:"nft -v || pacman -S --needed nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:39:"# nft -v || pacman -S --needed nftables";}i:2;i:98;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:137;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:144;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:144;}i:15;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:144;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:146;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:146;}i:2;i:146;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:146;}i:19;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:172;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:172;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:172;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" Set ";}i:2;i:176;}i:23;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:88:"https://wiki.nftables.org/wiki-nftables/index.php/Quick_reference-nftables_in_10_minutes";i:1;s:14:"nftables rules";}i:2;i:181;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:":";}i:2;i:288;}i:25;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1485:"
#!/usr/bin/env nft -f

## AUTHOR:       AISK11
## LOCATION:     /etc/nftables.conf (0644 root:root)
## DEPENDENCIES: extra/nftables
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

    ## Accept requests from clients to specified TCP and UDP services.
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
    ## This permits only ICMP requests.
    icmp type != {8,13,15,17,30,42} drop;
    icmpv6 type != {128,144} drop;

    ## Do not disclose closed TCP service exceptions.
    ## WARNING! In rare cases may cause issues - see GRKERNSEC_BLACKHOLE.
    tcp sport $tcp_services tcp flags {rst} drop;
  }
}
";i:1;s:4:"text";i:2;s:18:"/etc/nftables.conf";}i:2;i:294;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1811;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1811;}i:28;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1811;}i:29;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1811;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" Start firewall immediately and from init:";}i:2;i:1815;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1857;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:53:"systemctl start nftables && systemctl enable nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:55:"# systemctl start nftables && systemctl enable nftables";}i:2;i:1863;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1918;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1925;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1925;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1925;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1925;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" Verify currently active firewall rules:";}i:2;i:1929;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1969;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:16:"nft list ruleset";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:18:"# nft list ruleset";}i:2;i:1975;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1993;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2000;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2000;}i:44;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2000;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2000;}i:46;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2000;}}