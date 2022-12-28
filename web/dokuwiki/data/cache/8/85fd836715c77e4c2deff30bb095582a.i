a:78:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Nftables";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:25;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"- modern Linux kernel firewall.";}i:2;i:27;}i:6;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:58;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:60;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:62;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:62;}i:2;i:62;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:62;}i:11;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:87;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:87;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:87;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Install nftables:";}i:2;i:91;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:108;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:30:"nft -v || apt install nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:32:"# nft -v || apt install nftables";}i:2;i:114;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:146;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:153;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:153;}i:20;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:153;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:155;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:155;}i:2;i:155;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:155;}i:24;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:181;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:181;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:181;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Configure firewall rules:";}i:2;i:185;}i:28;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1502:"
#!/usr/bin/env nft -f
 
## AUTHOR:       AISK11
## LOCATION:     /etc/nftables.conf (0644 root:root)
## DEPENDENCIES: nftables
## DESCRIPTION:  Nftables firewall rules.
 
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
    ## WARNING! In rare cases may cause issues (see GRKERNSEC_BLACKHOLE).
    tcp sport $tcp_services tcp flags {rst} drop;
  }
}
";i:1;s:18:"/etc/nftables.conf";i:2;N;}i:2;i:215;}i:29;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1744;}i:30;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1744;}i:31;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1744;}i:32;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1744;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Start firewall now and on startup:";}i:2;i:1748;}i:34;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1782;}i:35;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:52:"systemctl start nftables ; systemctl enable nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:54:"# systemctl start nftables ; systemctl enable nftables";}i:2;i:1788;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1842;}i:37;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1849;}i:38;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1849;}i:39;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1849;}i:40;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1849;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Verify firewall service and rules:";}i:2;i:1853;}i:42;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1887;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:2:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:25:"systemctl status nftables";i:2;s:0:"";}i:1;a:3:{i:0;s:2:"# ";i:1;s:16:"nft list ruleset";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:46:"$ systemctl status nftables
# nft list ruleset";}i:2;i:1893;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:1939;}i:45;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1946;}i:46;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1946;}i:47;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1946;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1948;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"Usage";i:1;i:2;i:2;i:1948;}i:2;i:1948;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1948;}i:51;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1966;}i:52;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1966;}i:53;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1966;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Turn up/down firewall:";}i:2;i:1970;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:1992;}i:56;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:31:"systemctl <start|stop> nftables";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:33:"# systemctl <start|stop> nftables";}i:2;i:1998;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:2031;}i:58;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2038;}i:59;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2038;}i:60;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2038;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2040;}i:62;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"References";i:1;i:2;i:2;i:2040;}i:2;i:2040;}i:63;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2040;}i:64;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2063;}i:65;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2063;}i:66;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2063;}i:67;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:88:"https://wiki.nftables.org/wiki-nftables/index.php/Quick_reference-nftables_in_10_minutes";i:1;s:26:"Nftables - Quick Reference";}i:2;i:2067;}i:68;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2186;}i:69;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2186;}i:70;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2186;}i:71;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2186;}i:72;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:63:"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol";i:1;s:16:"Wikipedia - ICMP";}i:2;i:2190;}i:73;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2274;}i:74;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2274;}i:75;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2274;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2274;}i:77;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2274;}}