# The host's proxy using VM


!>Virtual machine uses a host proxy, without setting up additional VMware forwards, just adding the proxy address and port<br>
Cell phones can also use their own machine proxy server, which does not require a live host-specific VMware forwarding<br>
With the exception of the default configuration only host mode, the use of the host will affect the global network, and virtual machines will have direct access to the interconnectivity Network<br>
Virtual machines use independent networks that are not comprehensive, and therefore using VPN on virtual machines does not allow host access to connections. Network

In the NAT model, virtual machines access the Internet (currently within the wall) through the public network where the host machine is located, vm use proxy software to relay port access to any address, and host hosts are equipped with local area network IPs and ports within the same public network to complete network interconnection. The following are specific examples:

IP addresses are fully consistent without considering VPN or proxy in NAT mode

<!-- ![](https://ipfs.io/ipfs/QmPgX1CEGGAkCGiG6eD5ujWysQ9iBhV2iTqn8hNmZV4upT?2.png) -->

![](https://i.postimg.cc/y6nWLsnS/2018-05-13-005931.png)

Open v2ray and configure pivoxy parameters in vm`0.0.0.0:8118`The wiretap is open at any address.`8118`Port, forward all http traffic back to the proxy

<!-- ![](https://ipfs.io/ipfs/QmVvZ3tL2jX5NizhrctG7FFFBDYJVDu3pbgB8JGDrrduvj?2.png) -->

![](https://i.postimg.cc/2SnDXxmX/2018-05-12-065612.png)

Set up the proxy's home address at vm and a listening point for the privoxy proxy mouth

<!-- ![](https://ipfs.io/ipfs/QmZHt9U6eiYkSrjiU3npR7pCuTi8HVTcEFGy26p5uY9JU7?1.png) -->

![](https://i.postimg.cc/rFrXK9dF/2018-05-13-013525.png)

View vm LAN addresses

<!-- ![](https://ipfs.io/ipfs/QmPPBiFHzDh7crMrLCfvDc9f6B5v13P4zygPhdDhBxg2Wj?0.png) -->

![](https://i.postimg.cc/wBT9ym8f/2018-05-13-014622.png)

VMware Set Port Map

<!-- ![](https://ipfs.io/ipfs/QmZhNJ9bMbuSp9DSPpZHyzmkbBD3DAZNLKqdAYNLhh4814?1.png) -->

![](https://i.postimg.cc/fy44K3ph/2018-05-13-0153pxcx.png)

Set proxy in host to enter vm IP address and port

<!-- ![](https://ipfs.io/ipfs/QmTJ8f5AAMX3ak1u78sBXPzYyBUTVoxwSYfsy4ixfcdnKT?2.png) -->

![](https://i.postimg.cc/P57SZg0g/2018-05-13-02xsdf.png)

Test

<!-- ![](https://ipfs.io/ipfs/QmaREa4sCZgTLZ7xqdUh45TuSieGbtyvHp6P9JXGRkqv9Q?2.png) -->

![](https://i.postimg.cc/bJ906WFN/2018-05-13-021830.png)




