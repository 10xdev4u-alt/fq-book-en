# Comprehensive analysis of GitHub RST and Git SSL ERR SYSCALL

* Elimination of subjective emotional factors
* Multiple consideration of causes (multiple possibilities)
* Find and establish linkages (common points)

Subjective emotionalization loses its ability to make objective analyses, the correct rate is almost negligible, and it must be eliminated before analysis!

### RST

Network blockup reset, hosts IP-DNS map point question

### SSL_ERR_SYSCALL 

Call the transfer layer's self-seted proxy. There may be proxy configurations or web site problems, and web site problems relate to hosts mapping settings.

### A small episode.

A ping test of GitHub found that, although it did not work, it was accessible. Given the safety of the network, it should be that the ICMP response was disabled or ICMP filtered.

References[kunlunmountain - Why are some websites PING not available but accessible?](https://www.cnblogs.com/kunlunmountain/p/5945756.html)

This shifted from ping to curl testing, as the tool also provides intuitive information.

![](https://i.postimg.cc/brH28KhX/010.png)

### Summary

RST shares a problem with SSL ERR SYSCALL: hosts IP-DNS map

The application layer Hosts is mapped through IP-DNS, and the web site is analyzed to a specific IP address. The proxy simply transmits the client's specific pointer to the IP request and does not convert the IP. If Hosts map IP and DNS does not exist on either side, this will result in the inability to carry out visits even if the proxy is deployed across the wall. So the proxy is also called[Apply gateway](https://baike.baidu.com/item/%E5%BA%94%E7%94%A8%E7%BD%91%E5%85%B3/6324513)And for a reason.

![](https://i.postimg.cc/SKjbkkk8/008.png)

Because of the higher priority given to Hosts than remote DNS, host access to the DNS map first, remote DNS server queries only when this access map is not found in the posts, and while a dedicated tunnel is set up for external server access for the VPN, the DNS map from the host to the external server is still incorrect, so the host remains inaccessible and inaccessible.

![](https://i.postimg.cc/fT1p9pnn/009.png)

Sometimes, even with a re-direction set by Host, regular access can take place in a short time. This is related to keep-live, browser and system DNS caches.[Brother Beard - Why didn't the changes take effect? The DNS cache?](https://www.cnblogs.com/hustskyking/p/hosts-modify.html)
