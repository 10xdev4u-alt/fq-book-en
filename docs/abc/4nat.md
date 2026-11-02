# The NAT-type section has introduced some simple upgrades.

> Original language:[NAT-types popularize a few simple ways to upgrade NAT-types](http://www.right.com.cn/forum/thread-199299-1-1.html)&emsp; by iSkyun

First of all, you know what it is."[**NAT**](http://baike.baidu.com/item/nat)We've seen so many things that we probably know some basic knowledge, for example.[** Definitions**](http://baike.baidu.com/item/nat)I don't know.[**Functions**](http://baike.baidu.com/item/nat#1)I don't know.[** Achieved**](http://baike.baidu.com/item/nat#2)and[** Type**](http://baike.baidu.com/item/nat#7)
  
Benefits of upgrading the NAT type:

* It's better to view web pages, watch videos, play games, etc., and download them at a more stable and rapid pace.
* Especially those who play ED2K/PT downloads, PS4/XBox host games.
* Uplifting the NAT type is more likely to get HighID, easier access to game rooms, etc.
  
To upgrade the NAT type, we need to know that the four NAT types correspond to each other:

* **NAT1** **Full Cone** &emsp; NAT1 is the most relaxed network environment.
* **NAT2**** **Address-Restricted Cone** &emsp; neither page viewing nor games nor downloading is too restricted
* **NAT3 ** ** Port-Restricted Cone** &emsp; Idem, but Game Factory Chamber limits the on-line access to this NAT type
* **NAT4 ** ** Symetric** &emsp; this is the strictest web environment, which may not play games or download speed
  
For some more important forewords, one less router is one layer, which makes it more likely that NAT1 and NAT2 are the two types of NAT, and it is generally suggested that the family network is the following two types of booster:
1. Optical Cat Bridge connects the main route (dial-to-extranet) and secondary route (pure AP mode, extension signal)
2. Photocat dialling (directly as main route) by-line (pure AP mode, extension signal)

The advantage is that bridges and pure APs do not conduct NAT, but rather SWitch, so they do not lead to an additional NAT.
  
Now individual network games strictly require your network environment to be ** NAT2** or more to be able to play. And your network is NAT3 and NAT4. So what do we do? We're going to introduce a few simple ways to upgrade the NAT type.[** NAT piercing**](http://baike.baidu.com/item/nat#3_3)

* Routers have been enabled **Full Cone, STUN, TURN, ICE, uPnP**, etc.; if not, **uPnP** is basically standard

* The general suggestion is that Full Cone, uPnP and so on don't drive DMZ unless you're PS4/XBox. This type of game host has to upgrade the NAT type

* If you don't have the above, you can find out if there's any.**[DMZ](http://baike.baidu.com/item/dmz)** Capable and enabled to set your host IP address for the NAT type.

* On Windows, the following three service settings are automatically activated and the service is activated:

    * SSDP Discovery  
    * Function Discovery Provider Host  
    * Function Discovery Resource Publication  
  
* In Windows firewalls, release software or game programs that you need to upgrade NAT-types or close them directly.

* If your equipment is online through a computer-sharing network, it is recommended that this service also be opened:
    
    * UPnP Device Host  

The better the network environment is, even NAT1 is fine. This is one of my NAT + public network penetrating through the above settings.

Results measured:

![](https://i.postimg.cc/NFMFQtKC/132059dd4rfiilqz4e4s4p.jpg)

<!-- ![](https://ipfs.io/ipfs/QmZNLVAGW4wUrd1qpRKhj4JzXei9PhKJ7z9HTnjvp3qYbw?0.jpg)    -->

<!-- ![](http://www.right.com.cn/forum/data/attachment/forum/201611/10/132059dd4rfiilqz4e4s4p.jpg)   -->
Finally, attach the NAT type test tool:

![](https://i.postimg.cc/257n6z5C/zip.gif) [NAT Type Test.zip](http://down7.pc6.com/xy3/NatTypeTester.zip) 

<!-- ![](http://www.right.com.cn/forum/static/image/filetype/zip.gif) [NAT Type Test.zip](http://www.right.com.cn/forum/plugin.php?id=imc_attachad:ad&aid=MTQzODYzfDQxMGQxODFmfDE1MjU4MzkxMjZ8MHwxOTkyOTk%3D)  -->
PS:  
It's best if you can get an operator to go to the Internet; if you don't have a public Internet IP, you can call the customer to be tough, and you better start with the passenger service and say, "How come my broadband doesn't have an Internet IP, I have to put a remote monitor at home, I can't do it without a public Internet IP, and I have to return the broadband to another house, and I won't complain to you if I don't have a public Internet IP.

And one of the dumbest things is that direct computer dial-up access, Windows just shuts off the firewall, as long as you're on the Internet IP, right in NAT1. To upgrade the NAT type of a game host like PS4/XBox, all the above is recommended.
  


