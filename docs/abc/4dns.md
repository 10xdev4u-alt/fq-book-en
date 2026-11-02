# Domain name hijacking and pollution

## DNS

The domain name is the name of a computer or group of computers on the Internet and is used to identify the electronic location of the computer at the time of data transmission, sometimes also by geographical location. The domain name consists of a list of names separated by points, usually containing the name of the organization and always containing a two to three letter suffix to indicate the type of organization or the country or area in which the domain is located.

DNS is the abbreviation of a computer domain name system (Domain Name System or Domain Name Service\), which consists of a domain name solver and a domain name server. Domain name servers are servers that maintain domain names and corresponding IP addresses for all hosts in the network and have the capability to convert domain names to IP addresses. They must have an IP address, an IP address may have multiple domain names, while an IP address may not necessarily have an IP name. The domain name system uses a hierarchy similar to that of the catalogue tree.

Domain name servers, usually the server side of the client/server model, take two main forms:

* Main and forward servers
* The process of mapping domain names to IP addresses is known as "domain name resolution"

## DNS hijacking

By hijacking the DNS server, taking control of the resolution record of a domain name by certain means, and then modifying the resolution of the domain name, the result of which is the transfer of access to the domain name from the original IP address to the modified designated IP, the result of which is a false site that cannot be accessed or accessed on a particular site, thus achieving the purpose of stealing information or undermining the normal service. DNS hijacking was achieved by tampering with data on the DNS server and returning to the user with an incorrect query;[Please refer to this search link for details](https://www.google.com/search?newwindow=1&ei=dljzWqzhDNCYsAfUwKewAQ&q=%E5%8A%9F%E5%A4%AB%E7%BD%91%E5%8E%9F%E7%90%86%E4%B8%8D%E9%9D%A0%E8%B0%B1%E7%9A%84DNS&oq=%E5%8A%9F%E5%A4%AB%E7%BD%91%E5%8E%9F%E7%90%86%E4%B8%8D%E9%9D%A0%E8%B0%B1%E7%9A%84DNS&gs_l=psy-ab.3...76416.76416.0.76712.1.1.0.0.0.0.0.0..0.0....0...1c.1.64.psy-ab..1.0.0....0.vXslcuUhfQQ)I don't know.

In the light of the above, manual changes to the DNS can therefore achieve the prevention of domain-name hijacking.

## DNS pollution

The usual DNS query does not have any authentication mechanism, and the DNS query is usually based on a non-connected and unreliable UDP protocol, which is easily tampered with, and an intrusion detection of the DNS query on the UDP port 53 is carried out, and the GFW finds a request for matching keywords immediately disguised as the target domain name's decoding server returning false results to the queryer. So also known as DNS fraud or poison. This DDoS attack was prevented by some websites blocking the Chinese IP because the huge number of IP requests were directed at different IPs, respectively, resulting in the rapid depletion of their resources, which prevented regular users from accessing them. A manual change of the DNS is also not useful, except for the following.

Typically, both DNS services set up in mainland China and DNS services set up in foreign countries are contaminated by the GFW because the results of the analysis need to pass through the GFW. However, there are still small DNSs in mainland China that use technology such as dnsmasq+stunnel+sniproxy to avoid pollution from the GFW or seal IP and provide normal results.

[Rationale source](http://www.cnblogs.com/yanxinjiang/p/7486314.html)

<!-- ![](https://ipfs.io/ipfs/Qmdf4EHCYHXm9mQVZVwqknR9Apbw8jNLrtgQmQmte5Ncjf?1.png) -->

![](https://i.postimg.cc/cLTznNCB/95001.png)

## Host

Hosts are documents that map the host name to the appropriate IP address and are usually used to supplement or replace DNS functions in the network; unlike DNS, users of computers can directly control the IP access to the hosts file.

The Hosts document was intended to improve the efficiency of resolution. Before a DNS request is made, the system will check whether this address map is available in its own Posts file or, if so, call this IP address map, if no further domain resolution is submitted to the known DNS server. This means that Hosts has a higher level of request than DNS. When you have an IP in your Hosts file, it's going to access the IP instead of going through DNS.

So when we put a site IP in a Posts file like the SS share, we can skip the DNS resolution and the IP access won't be disturbed by the GFW's DNS, but it won't work; if it is, it's not.[CDN](https://baike.baidu.com/item/CDN)If the IP is sealed, the station chief is required to provide the main IP address or the real IP is added to the posts.