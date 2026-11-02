# Reqrypt

!>At present, reqrypt is no longer necessary in the country because of the inability of the software architecture to cope with the large-scale treatment mechanism; however, in other areas where web censorship is less stringent than in China, it is often used in conjunction with DNSCrypt for wall-piercing.

> Original language:[basil00/reqrypt](https://github.com/basil00/reqrypt) 

ReQrypt is a tunnel and encryption tool for Web browser requests, which can hide them from local (e.g. router level or ISP level) pilfering and intercepting. ReQrypt can be used to bypass the ISP level URL review/filtration/ log log recording system.

ReQrypt works in a different way than other sideways. ReQrypt is based on a technique called “triangular route”. In short, ReQrypt works like this:

```text
(1) Tunneled request      +----------------+      (2) Forwarded request
           +------------->| ReQrypt server |-------------+
           |              +----------------+             |
           |                                             |
           |                                             V
   +----------------+                             +----------------+
   | PC web browser |<----------------------------|   Web server   |
   +----------------+                             +----------------+
                        (3) Web-page response
```

Essentially:

1. Your Web Browser sent a HTTP request to the Web server, which was encrypted and forwarded to the ReQrypt service Device
2. ReQrypt server decrypt tunnel data package and forward it to network server
3. Web server responded to HTTP requests as if it came directly from your computer and the web page was sent back by normal route.

Usually, HTTP requests to send directly to Web server unencrypted; this means that it may be read or intercepted by an ISP, workplace or shared home router. However, when ReQrypt is used, the incoming HTTP requests are encrypted and transmitted through the tunnel, preventing them from being read by any local bug.

ReQrypt is valid for attacking only the HTTP request and neglecting the HTTP response system. Such systems are very common in ISP-level review and log recording systems, as it is much easier to process URL traffic (HTTP requests) than to handle web-based responses.

Finally, unlike VPN or proxies, Tor and others, ReQrypt is not an anonymous tool. It does not change the IP address of the tunnel package. This could be a good thing: it means Web responds directly to your PC, which means ReQrypt is usually faster than other systems.

> Chart Source:[Reqrypt Network](https://reqrypt.org/reqrypt.html)

| Filter/Proxy | ReQrypt? | Explanation |
| --- | --- | --- |
| DNS poisoning | ✗ | ReQrypt is overkill for DNS poisoning. Instead reconfigure your system to use a different DNS server, such as [Google Public DNS](https://developers.google.com/speed/public-dns/). |
| DNS blocking | ✓ | This occurs when your provider blocks access to alternative DNS servers. In this case reconfigure your system to use a different DNS server then run ReQrypt with Hiding modeset to "Off" and "DNS Hiding" enabled. |
| IP address blocking | ✓ | Provider blocks certain IP addresses. Use ReQrypt with "Active-Highest" mode enabled. |
| Proxy-ing | ✓ | Provider forces all HTTP traffic through proxy servers. In some cases ReQrypt can completely bypass the proxy servers with "Active-Highest" mode enabled. |
| Hybrid proxy-ing | ✓ | Provider forces some HTTP traffic through proxy servers based on IP address. As above use ReQrypt with "Active-Highest" mode enabled. |
| Hybrid filtering | ✓ | Provider blocks access to certain URLs at the Network level using Deep Packet Inspection \(DPI\). For Network-level filtering only the URLs need to be hidden. Use ReQrypt with "Passive", "Active-Low" or "Active-Medium" modes enabled. |
| Mirror filtering | ✓ | This is similar to hybrid filtering except the provider copies \(mirrors\) rather than selectively redirects packets. As above, use ReQrypt with "Passive", "Active-Low" or "Active-Medium" modes enabled. |
| URL sniffing | ✓ | Provider is sniffing packets to extract URLs for logging or data-retention purposes. User ReQrypt with "Active-Medium" mode enabled. |
| Strong filtering | ✗ | The various strong filtering methods used in countries like China or Iran. ReQrypt is generally ineffective against such systems since they typically block or severely restrict inbound traffic. |

> Original language:[issues#15](https://github.com/basil00/reqrypt/issues/15#issuecomment-363946075) 

ReQrypt is a special technology (one-way tunnel technology) and this technology (mostly) is ineffective for powerful filter systems (such as those deployed in China and Iran) to detect entry flows.

In most other regions, for reasons of different policies, it is not common at the ISP level to check entry points, i.e., to track the costs of the TCP state, to have a high Web response flow, to have no URL in the Web response flow, and to have large-scale over-blocking based on a stupid IP approach. But in places such as China and Iran, they are willing to pay the price.

I have also heard rumours that ReQrypt did work on some of China's ISPs and that Iran did some extra tricks. In addition to the review of HTTP, it was reported that non-HTTP traffic would be restricted to deter circumvention tools. Yeah.[BarbaTunnel](https://github.com/BarbaTunnelCoder/BarbaTunnel/)Such projects are transmitted through the HTTP tunnel to obtain full speed.

To enforce all traffic through a two-way tunnel would be a different project for ReQrypt. It's more like...[Tallow](https://github.com/basil00/TorWall)What was done was a tool to enforce all traffic through Tor. Tallow may apply to other types of tunnels, especially anything supporting Socks 5.

> Original language:[issues#27](https://github.com/basil00/reqrypt/issues/27#issuecomment-394153872)

Yes, see.[#15](https://github.com/basil00/reqrypt/issues/15)I don't know. ReQrypt was never designed to circumvent a “strict” ISP-class filter by actively monitoring entry and exit traffic. ReQrypt is used mainly for the widespread use of lighter-scale URL-based blacklist filters in many countries, including Western countries such as the United Kingdom; because they do not want to reduce the performance of the Internet, it is usually a taboo to double-direction heavy-weight filters.

For users in China and Iran, it was suggested to find stronger circumventive techniques based on two-way tunnel technology and to protect anonymity.

<!-- 
!>At present, reqrypt is no longer necessary in the country because of the inability of the software architecture to cope with the large-scale treatment mechanism; however, in other areas where web censorship is less stringent than in China, it is often used in conjunction with DNSCrypt for wall-piercing.<br><br>
As for the barbaTunnel, which has not been updated for many years, and the fact that the VPN server may have problems of its own makes the software less useful; I tested it and was not very satisfied that the connection to OpenVPN was unsuccessful.<br><br>
So it's just a matter of knowing about some of the science-related aspects of these software.
 -->