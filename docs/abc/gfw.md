# GFW principles and containment techniques

> Original language:[GFW principles and containment techniques](https://xuranus.github.io/2017/10/09/GFW%E5%8E%9F%E7%90%86%E5%92%8C%E5%B0%81%E9%94%81%E6%8A%80%E6%9C%AF)&emsp; by:[XUranus](https://xuranus.github.io/)

GFW is the acronym of Great Fire Wall, the Great Wall. The project consists of several components, with different functions. The Great Wall is primarily a software and hardware system for the monitoring and filtering of Internet content by TTG, consisting of equipment such as servers and routers, plus associated applications.

First, it needs to be emphasized that, given the extensive censorship of China's networks and the fact that websites with “unsuitable” content in China are subject to direct administrative interference by the Government and are required to self-censor, self-regulating or even shut down, the main role of the GFW is to analyse and filter information from networks both inside and outside China. The filtering and analysis of web content by the GFW is two-way, and the GFW not only interferes with domestic readers' access to websites outside China, but also with foreign readers' access to websites hosted in mainland China.

## Keyword Filter Block

Keyword filtering system. The system collects analytical information from the export gateway, filters and sniffs specified keywords. Default port primarily for HTTP: 80 ports, because HTTP disseminated content is explicit and not encrypted, while GFW is an IDS\(Intrusion description system\). If an ordinary keyword appears in the head of HTTP's request \ (e.g. “Host: www.youtube.com”\) it will be disguised as a computer that connects the two ends in the opposite direction sending RST packages\(reset\) to interfere with both normal TCP connections, thus preventing the content of the request from continuing to be viewed. If the GFW finds a special inner keyword in the data stream \ (e.g. wheel, Darey, etc. \), it will also attempt to interrupt the current connection, and there will sometimes be cases where a part of the web page is opened and suddenly stopped.

## 2 IP address blocked.

The IP address blockage, controlled by the GFW through routers, added a false route code to the last gateway to foreign countries, resulting in the non-attendance of all IP data packages to certain blocked sites. The normal mode of work of routers is to learn the routing rules of other routers, to meet data packages that meet the known IP forward rules, to send as already done and to forward to the upper level I gateway when data from unknown rule IP is encountered.

And the GFW will use independent IP-blocking technology for the XX site outside the country. However, the use of some XX sites is a multi-domain name, single(s) IP hosting service provided by a virtual host service provider, which results in the blocking of an IP address and the co-optation of all other users of the same IP address server using the service provider ' s service, even if it is a normal site. The content may not be inappropriate, but it cannot be visited regularly in mainland China. It is now common for the GFW to add URLs to a keyword filtration system for websites or web pages containing XX information and to prevent people from accessing it through regular overseas HTTP proxy servers.

## III Specific ports blocked

The GFW will discard all the data packages at a specific port on a given IP address, thus making part of the server's functionality on that IP address (e.g. SSH 22, VPN 1723 or SSL 443) unserviceable in mainland China.

All PPTP-type VPNs are blocked in the mobile China, China Connect, etc.

Since March 2011, the GFW has been automatically blocking IP addresses on some Google servers. Some ports, on time, impose automatic closures on www.google.com\ (this domain is encrypted when users log in to all Google services) and 443 ports at dozens of IP addresses of mail.google.com, which are connected every 10 or 15 minutes, followed by disconnection after 10 or 15 minutes, and then cut off again, in such a circular way that links between users in mainland China and Google hosts are intermittently disrupted, causing problems in their services. The GFW method of closures is very clear, because Gmail is not completely blocked, which seems to be from Google itself. That is why you think Google is ventilating.

## Four SSL connections blocked
The GFW will block the SSL encryption connection to a specific website by sending RST packages\(RESET\) to a computer that is disguised as a two-way connection, thereby disrupting the normal TCP connection between the two, thereby interrupting the SSL\(HTTPS, 443 port\) handshake with a given IP address (SSL encrypted connection\ (e.g. Gmail, Google file, Google online forum, etc.), thereby causing the SSL connection to fail.

Of course, because of the characteristics of SSL itself, this does not mean that the content transmitted to the website can be deciphered.

## DNS hijacking and contamination

The GFW mainly uses DNS hijacking and pollution technology, using the IDS system provided by Cisco to hijack domain names and prevent access to filtered websites, which reached 100 degrees during Google ' s blockade in 2002. Some ISPs in China will also insert advertising through this technology.

For domain names with multiple IP addresses or frequent changes to IP addresses to escape the blockade, the GFW usually uses this method to block. The specific method is that DNS returns a false (or does not resolve) IP address when the user submits a domain name request to the DNS server.

There are 13 global root name servers (Root Server\), and currently on mainland China there are F, I, and DNS mirrors, but they have been disconnected from the Internet because of multiple DNS contamination of foreign networks.

DNS hijacking and pollution are the most serious disruptions to some websites.

There are two ways to interfere:

One is to defraud DNS through a DNS server provided by a web-based service provider (Internet Service) that, when people visit a website, they need to convert the domain name to an IP address, the DNS server is responsible for converting the domain name to an IP address, and the ISP in mainland China is instructed by the Communications Administration to block the website by adding false records of certain specific domain names to the DNS server. When the network users using this DNS server visit this particular site, the DNS service gives a false IP address, leading to the failure of accessing the site or even returning to the error and advertising pages provided by the ISP operator.

The other is when GFW filters the 53-port of the UDP used for DNS queries on the blacklist and returns a false IP address when it encounters a DNS request to use the UDP-53 port for queries abroad.


