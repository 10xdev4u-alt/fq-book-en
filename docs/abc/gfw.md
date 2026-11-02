# GFW principles and containment techniques

> Original language:[GFW principles and containment techniques](https://xuranus.github.io/2017/10/09/GFW%E5%8E%9F%E7%90%86%E5%92%8C%E5%B0%81%E9%94%81%E6%8A%80%E6%9C%AF)&emsp; by:[XUranus](https://xuranus.github.io/)

GFW is the acronym of Great Fire Wall, the Great Wall. The project consists of several components, with different functions. The Great Wall is primarily a software and hardware system for the monitoring and filtering of Internet content by TTG, consisting of equipment such as servers and routers, plus associated applications.

First, it needs to be emphasized that, given the extensive censorship of China's networks and the fact that websites with “unsuitable” content in China are subject to direct administrative interference by the Government and are required to self-censor, self-regulating or even shut down, the main role of the GFW is to analyse and filter information from networks both inside and outside China. The filtering and analysis of web content by the GFW is two-way, and the GFW not only interferes with domestic readers' access to websites outside China, but also with foreign readers' access to websites hosted in mainland China.

## Keyword Filter Block

Keyword filtering system. The system collects analytical information from the export gateway, filters and sniffs specified keywords. Default port primarily for HTTP: 80 port because HTTP disseminated content is explicit and is not encrypted, and GFW is an IDS (Intrusion description system). If the normal keyword appears at the head of the HTTP request(s) Like`Host: www.youtube.com`) is immediately disguised as a computer with a two-way connection sending RST packages (reset) to interfere with the two normal TCP connections, thus preventing the requested content from continuing to view. If the GFW finds a special inline keyword in the data stream (e.g. wheel, Darrah, etc.), it also tries to interrupt the current connection, which sometimes stops suddenly after a part of the web page has been opened. The content of the same IP address cannot be viewed at the same port at the IP address within the next 90 seconds after any disruption occurs.

## 2 IP address blocked.

The IP address blockage, controlled by the GFW through routers, added a false route code to the last gateway to foreign countries, resulting in the non-attendance of all IP data packages to certain blocked sites. The normal mode of work of routers is to learn the routing rules of other routers, to meet data packages that meet the known IP forward rules, to send as already done and to forward to the upper level I gateway when data from unknown rule IP is encountered.

However, the GFW is using independent IP-blocking technology for XX sites outside China (outside mainland China). However, the use of some XX sites is a multi-domain name, single (same) IP hosting service provided by a virtual host service provider, which leads to the blocking of an IP address and to the co-incuration of all other users of the same IP address server using the service provider ' s services, even if they are normal websites. The content may not be inappropriate, but it cannot be visited regularly in mainland China. It is now common for the GFW to add URLs to a keyword filtration system for websites or web pages containing XX information and to prevent people from accessing it through regular overseas HTTP proxy servers.

## III Specific ports blocked

The GFW will discard all the data packages at a specific port on a given IP address, thus rendering part of the functions of the server on that IP address (e.g. SSH 22, VPN 1723 or SSL 443, etc.) out of normal use in mainland China.

All PPTP-type VPNs are blocked in the mobile China, China Connect, etc.

Starting in March 2011, the GFW began to automatically block the IP addresses of some Google servers. Some ports by time.`www.google.com`(This domain is encrypted when users log in to all Google services) and`mail.google.com`The automatic closure of the 443 ports at dozens of IP addresses, which are connected every 10 or 15 minutes, are then disconnected, 10 or 15 minutes later, and are then disconnected, thus cycling, leading to intermittent disruptions in the connection between mainland Chinese users and Google hosts and problems in their services. The method of blockade, such as the GFW, is very clear, because Gmail is not completely blocked, which makes it look like the problem is from Google itself. That's why you think Google's twitching.

## Four SSL connections blocked
The GFW will block the SSL encryption connection to a given website by sending RST packages (RESET) to a computer that is disguised as a two-way connection, thereby interfering with the normal TCP connection between the two, thereby interrupting the SSL (HTTPS, 443 port) handshake with a given IP address (e.g. Gmail, Google file, Google online forum, etc.) and thus causing the SSL connection to fail.

Of course, because of the characteristics of SSL itself, this does not mean that the content transmitted to the website can be deciphered.

## DNS hijacking and contamination

The GFW mainly uses DNS hijacking and pollution technology, using the IDS system provided by Cisco to hijack domain names and prevent access to filtered websites, which reached 100 degrees during Google ' s blockade in 2002. Some ISPs in China will also insert advertising through this technology.

For domain names with multiple IP addresses or frequent changes to IP addresses to escape the blockade, the GFW usually uses this method to block. The specific method is that DNS returns a false (or does not resolve) IP address when the user submits a domain name request to the DNS server.

There are 13 global root name servers (Root Server\), and currently on mainland China there are F, I, and DNS mirrors, but they have been disconnected from the Internet because of multiple DNS contamination of foreign networks.

DNS hijacking and pollution are the most serious disruptions to some websites.

There are two ways to interfere:

One is to defraud DNS through a DNS server provided by a network service provider (Internet Service) that, when people visit a website, they need to convert a domain name to an IP address, the DNS server is responsible for converting a domain name to an IP address, and the ISP in mainland China has been instructed by the Communications Administration to block the website by adding false records of certain specific domain names to the DNS server. When a network user using this DNS server visits this particular site, the DNS service gives a false IP address, leading to a failure to access the site or even to return to the wrong and advertising pages provided by the ISP operator.

The other is when GFW filters the 53-port of the UDP used for DNS queries on the blacklist and returns a false IP address when it encounters a DNS request to use the UDP-53 port for queries abroad.


