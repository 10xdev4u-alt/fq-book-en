# Three Web Modes for VMware

> Original language:[Where is the difference?](http://net.zol.com.cn/115/1158058.html)&emsp; by Sun Peng

## Bridge Mode

Bridging networks are local physical network cards and virtual network cards that bridge via VMnet0 virtual switch, and physical network cards and virtual network cards are on an equal footing on top of top-up maps (the virtual network card is neither Adepter VMnet1 nor Adepter VMnet8).

The bridge network.

<!-- ![](https://ipfs.io/ipfs/QmaM994hn7RC2gT8qd3ubxqrTiURzsUrhYCwu2JJc68ERN?3.png) -->

![](https://i.postimg.cc/D0m3YyN6/2018-05-13-161016.png)

The physical network card and the virtual network card would then be in the same section, and the virtual switch would be in a real network. So the IP addresses of both cards are set to the same segment.

Physical net card IP address

<!-- ![](https://ipfs.io/ipfs/QmTksR6g9wBZptxJzXcVspXtzUppUFfSj9d5W2k74iGWv8?3.png) -->

![](https://i.postimg.cc/zBccvwdw/2018-05-13-161401.png)

Virtual network adapter IP address

<!-- ![](https://ipfs.io/ipfs/QmemKU954PgTQaBQ4jg3Wa8A7tk74wAAHf4XLEpMiqg1ZW?4.png) -->

![](https://i.postimg.cc/ZRHyxVk3/2018-05-13-161708.png)

We see that the IP addresses of the physical and virtual cards are in the same section, with the same parameters as subnet masks, gateways, DNS, etc. The two are relatively independent in the top-up structure.

Ping Results

<!-- ![](https://ipfs.io/ipfs/QmcwWPpLZXN7yU5KmPgA9pJNV3gPefNH3ot87GjDQxZUUp?3.png) -->

![](https://i.postimg.cc/Gpr2gGxj/2018-05-13-161826.png)

On the 192.168.15.1111 page 192.168.15.96, the results show that two network adapters are capable of communicating with each other. If there is a DHCP server in the network, the virtual card can also access the IP address from the DHCP server. So the bridge network model is the simplest direct model in VMware. This is the default option when a virtual machine is installed.

## NAT mode

In the NAT network, VMware Network Virtual VMnet 8 cards are used, and VMware Network Network VMnet 8 virtual cards are connected directly to VMnet8 virtual switches to communicate with virtual network cards.

NAT Network Mode Poptop

<!-- ![](https://ipfs.io/ipfs/QmT4kUS8cMC7g9VoZMmro4rf3vjRc84f6MagkYuZQcmY3u?2.png) -->

![](https://i.postimg.cc/zvjZBHgq/2018-05-13-162012.png)

VMware Network Imper VMnet8 Virtual Netcard is limited to communicating with VMnet8 and does not provide routeing to VMnet8 so the Virtual Machine virtualizes a NAT server so that the Virtual Netcard can be connected to the Internet. In this case, we can use the port map to map requests for access to the host ' s 80 ports to the virtual machine ' s 80 ports.

The IP address of the VMware Network Virtual VMnet 8 card was created by the system when VMware was installed. We do not change this value, otherwise the mainframe and virtual machine will not be able to communicate.

Virtual Net Net IP address

<!-- ![](https://ipfs.io/ipfs/Qmd2KUrSiviXCv34mUha2dfV7MzSbGi9foPm5yiKK7ATF1?4.png) -->

![](https://i.postimg.cc/63JDffV9/2018-05-13-162216.png)

Physical net card IP address

<!-- ![](https://ipfs.io/ipfs/QmXWg73AiRBuE5i2auxwPicmfYUwsnFd4GhbH1qGuhhDxi?3.png) -->

![](https://i.postimg.cc/sXLGL1XD/2018-05-13-162302.png)

The virtual segment is the same as that of the NAT Model Virtual Net card, which is 192.168.111.X and includes the IP address of the NAT server. The installation of VMware will also result in the creation of a virtual DHCP server to assign IP addresses to the NAT server.

When the mainframe and the virtual machine communicate, they call VMware Network Virtual VMnet8 because they are all in one section, so communication is not a problem.

In fact, VMware Network Virtual Webcard VMnet8 serves to provide an interface for the communications of the mainframe and the virtual machine, which can still be connected to the Internet even if the physical network card of the host is closed, but there is no exchange between the host and the virtual machine.

## Host mode only

In the Host-Only model, the virtual network is a completely closed network with only access to the mainframe. In fact, the Host-Only network is very similar to the NAT network, and the different place is that the Host-Only network does not have NAT services, so the virtual network cannot be connected to the Internet. Communications between the mainframe and the virtual machine are made through VMware Network Action VMnet1.

Post-only mode scale

<!-- ![](https://ipfs.io/ipfs/QmdsKse5xP3BRDMy7dGQPWmGNcCrFF9RVYtgyYzPVPqoE9?1.png) -->

![](https://i.postimg.cc/0yvnnXFX/2018-05-13-162359.png)

Like NAT, the IP address of the VMware Network Virtual VMnet1 card is designated by the VMware system, while the IP address of the generated virtual DHCP server and virtual card is located in the same section, but the IP address of the physical card is not in the same section.

 Host-Only Virtual Web Card IP Address

<!-- ![](https://ipfs.io/ipfs/QmeBhyZXNcraRFGp2evnAK74NRSYNpgKgeo2g5M26mG63g?2.png) -->

![](https://i.postimg.cc/8zwRHphs/2018-05-13-162504.png)

Physical net card IP address

<!-- ![](https://ipfs.io/ipfs/QmUn6ZwscVPmigSNfxABezVX8A3Qeekqt7Ss4pDGYKGrR7?0.png) -->

![](https://i.postimg.cc/LXjhxDrv/2018-05-13-162617.png)

Host-Only ' s purpose is to create an in-house network in isolation to improve the safety of the Intranet. This function may not be of much use to ordinary users, but it is often used by large service chambers. If you want to provide a router for the VMnet1 segment, you need to use RRAS, not XP or ICS 2000, because the ICS will change the IP address of the Intranet to 192.168.0.1, but the virtual machine will not assign this address to VMnet1 virtual network cards, so there will be no communication between the host and the virtual machine.

## Overview

NAT is the simplest of the 3-in-3 network mode in VMware and does not need to manually configure parameters such as IP addresses. As for the bridge mode, additional IP addresses are required, and if it is easy in an intranet environment, if it is more troubleful if it is ADSL broadband, ISPs generally do not provide more extensive public IPs.

