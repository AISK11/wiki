a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Diffie-Hellman";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:31;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"Theory";i:1;i:2;i:2;i:31;}i:2;i:31;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:31;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:50;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:50;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:50;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Symmetric key exchange algorithm.";}i:2;i:54;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:87;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:87;}i:12;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:87;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:89;}i:14;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Algorithm";i:1;i:2;i:2;i:89;}i:2;i:89;}i:15;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:89;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1195:"
+-------+       |                          |       +-------+
| Alice |       |                          |       |  Bob  |
+-------+       |                          |       +-------+
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRIVATE NUMBER  | LARGE PRIME NUMBER       | PRIVATE NUMBER
a=4             | x=23                     | b=3
                | PRIMITIVE ROOT MODULO x  |
                | y=5                      |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PRIVATE FORMULA |                          | PRIVATE FORMULA
A=y^a%x         |                          | B=y^b%x
A=5^4%23        |                          | B=5^3%23
A=625%23        |                          | B=125%23
A=4             |                          | B=10
                | --------- A=4  --------> |
                | <-------- B=10 --------- |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
KEY FORMULA     |                          | KEY FORMULA
K=B^a%x         |                          | K=A^b%x
K=10^4%23       |                          | K=4^3%23
K=10000%23      |                          | K=64%23
K=18            |                          | K=18
";i:1;N;i:2;N;}i:2;i:117;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1320;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1320;}}