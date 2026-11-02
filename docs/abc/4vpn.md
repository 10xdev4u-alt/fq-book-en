# VPN Tunnel Agreement

> Original language:[VPN Tunnel Agreement](https://blog.csdn.net/cymm_liu/article/details/16889457)&emsp; by:[Long-eyed slowly.](https://blog.csdn.net/cymm_liu)

** From the web:**

The development of the VPN (VPN) is no longer a simple encrypted access tunnel. It has integrated access control, transmission management, encryption, route selection, usability management and plays an important role in the global information security system. Also on the Internet, where the advantages and disadvantages of the various VPN protocols are compared to those of the benevolent, the wise and the wise, many technicians are having a trade-off between the advantages and the disadvantages of using them for various purposes, including access control, security and user simplicity, and flexible expansion; especially in the voice environment of the VOIP, network security is of particular importance and, as a result, there is a growing number of Internet telephones and voice-net shut-downs.

There are now more common VPN Tunnel protocols.[PPTP VPN](http://web.xieshenglin.com/tag/pptp-vpn/)I don't know.[L2TP  VPN](http://web.xieshenglin.com/tag/l2tp-vpn/)I don't know.[OpenVPN](http://web.xieshenglin.com/tag/openvpn/)I don't know.[SSH Agent](http://web.xieshenglin.com/tag/ssh/)A variety of options for agreements can be used in different platforms and environments. Each agreement has unique functions and advantages. In choosing which agreement to use, it is necessary to consider what kind of agreement your equipment supports, the trade-off between security and speed, and whether there is an agreement blocked by your network.

Comparison of advantages and disadvantages of three Tunnel Agreements: PPTP, L2TP, OpenVPN: (SSH does not include comparisons):

* Accessibility:
    * PPTP &gt; L2TP &gt; OpenVPN

* Speed:
    * PPTP &gt; OpenVPN UDP &gt; L2TP &gt; OpenVPN TCP

* Security:
    * OpenVPN &gt; L2TP &gt; PPTP

* Stability:
    * OpenVPN &gt; L2TP &gt; PPTP

* Network applicability:
    * OpenVPN &gt; PPTP &gt; L2TP

The following is a brief description of the features of the PPTP, L2TP, OpenVPN and SSH protocols:

1. PPTP VPN Protocol

    The PPTP agreement is a point-to-point tunnel agreement that separates the TCP control package from the data package and is suitable for use in a network without wall restrictions.

2. L2TP VPN protocol

    L2TP is an international standard tunnel agreement that combines the benefits of the PPTP agreement and the L2F agreement on the second floor with a tunnel to enable the PPP package to be relayed through various network agreements, including ATM, SONET and frame. L2TP does not, however, have any encryption measures, more so as to provide tunnel certification in conjunction with the IPSec agreement.

    The devices that support PPTP are basically L2TP-supported, set up in a slightly more complex way, need to select L2TP/IPSec PSK and set pre-shared PSK

    L2TP uses the UDP protocol, which generally penetrates the firewall and is suitable for use by LAN users with firewall restrictions, such as companies, cybercafes, schools, etc.; PPTP and L2TP connection types do not differ significantly in performance, and replace with L2TP if PPTP is not normal.

3. OpenVPN Tunnel Agreement

    OpenVPN is a pure application layer VPN protocol based on SSL encryption and is one of SSL VPN that supports both the UDP and TCP approaches. UDP and TCP are two communication agreements, where UDP is usually more efficient and faster. So try to use the UDP connection and then use the TCP connection when the UDP is not available.

    The fact that the PPTP and L2TP are not supported behind certain NAT devices because they operate on a pure application level avoids the possibility of bypassing some network closures (in general, OpenVPN is available where the Internet is basically available).

    OpenVPN client software can easily match the route chart to achieve the choice of route for different lines (i.e., domestic and foreign) and to achieve some IP-VPN and others-net.

    It's been detected and severely sealed by technology such as traffic characterization. Kill!

4. SSH Tunnel Agreement

    SSH was originally used for remote login and management of UNIX-type systems. Since SSH can be encrypted locally through client software as a SOCS proxy, it is also used as a network proxy.

    Some prefer SSH proxies, with browser plugins (e.g. AutoProx in Firefox, Switchy in Chhome) and automatic lists, to achieve selective representation of different sites.