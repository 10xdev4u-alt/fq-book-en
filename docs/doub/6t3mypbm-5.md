# Talk about HTTP hijacking, the impact of DNS pollution and solutions

> Original language:[Brief talk about HTTP hijacking, the impact of DNS contamination and solutions (personal understanding only)](https://doubibackup.com/6t3mypbm-5.html)Author:[comma](https://dbgjd.com/toyo.html)

First of all, let's say, "The Wall: The Fire Great Wall," it's made up of Internet scientists (e.g. Fan Chai-Hing, staff, 50 cents, distributed supercomputers, three major operators.

As we can see, the wall is not an independent, stand-alone organization, but consists of important Internet structures in various areas of the country.

!> `Internet scientists:`Specializing in cost-effective and more effective filtering.<br>
`Staff:`Some non-mechanical replacements such as manual audits.<br>
`Fifty cents.`Fifty cents.<br>
`Distributive supercomputers:`The flow of every second through international exports from the continent is very large and requires a lot of supercomputers for computing filtration.<br>
`Three main operators:`This is the most important component, and without the support of the operator, the wall is nothing. International exports on the continent are established and controlled by the three main operators, and if they do not nod, how does the wall set up “filter check posts” at the “Big Gate” (International Broadband Export Office)?

So the wall is equivalent to a filtering and auditing checkpoint that has been set up at various international broadband exports in the continent. **

And I found an interesting thing, and many people thought that ** only China and North Korea existed walls, which was ignorant. **

If you use the country of Google, Facebook, YouTube, Twitter as the wall of this country, I have nothing to say.

** The wall, or the Great Firewall of the Internet, is a necessary component of any sovereign nation with the Internet. **

If your country has no walls and no information filters, the regime could be overthrown at any time. It is not a lie that the presidents or prime ministers of several countries are not paying attention to this issue, leading to not only the lower but also prison terms.

America is a country that claims to be the freest, so does he have no walls? No, they also shield pirated websites, child pornography sites, etc.

Also in Korea, one of the most developed countries in the Internet is also a major clean-up of the sex industry. Even in Viet Nam, Myanmar and Thailand, the wall still exists in countries where the Internet is relatively underdeveloped.

The wall is inevitable, and you can't stop it from being there, but our wall is a little higher, and I'm not excusing anything for the Great Wall of Central Defense, and I'm just expounding the fact that the wall must exist.

The reason why we feel our walls are higher is because we live within the walls of this country, which we often touch; and because we belong to the strictest category of countries.

** At the same time, the Wall is a disguised form of protection for the development of the domestic Internet industry, otherwise microblogging is not so easy to develop. **

** Because some of the words are too sensitive to be so forthright, otherwise the water tables will have to be removed, and if they cannot be understood, they will be considered from the point of view of the leaders. **

## HTTP hijacking

As you know, my dou-bi.com domain name was contaminated by HTTP and DNS during the G20 period, and I studied them briefly.

HTTP hijackings are easy to understand, because HTTP transmission protocols are explicit, and my website server is overseas, and to access my website, it is through China ' s international broadband exports, to go out and connect to my website.

But the HTTP keyword review was strengthened during the G20 period because of the state of siege, and my website was scanned by “** checkpoint: wall**” and cut off the TCP link for the reasons that the keyword passed through the exit.

As a result, users were exposed to: ** The link has been reset, the site has been permanently moved to another address, etc. **

## Solutions

HTTP hijackings are easy to solve, i.e. ** with SSL certificates, web links are encrypted** so that “checkpoints: walls” cannot decrypt the key to data analysis.

But that's not an absolute solution. If your website is just a hit or a hit, it's fine, and if it's a big one, it's special.

HTTPS needs a handshake to create an encrypted connection, i.e. a link agreement to create an encrypted connection, but this handshake is clear (the creation of an encrypted link is, first of all, the trust of the two parties to the link, for example, that the SSL certificate of the website is signed by themselves, or that the SSL certificate is expired or forged, and the browser is prompting when accessing the site to indicate that the site is not safe.

The handshake is explicit, which means that if your domain name is focused,** even if you add SSL certificates, it will be matched by keywords and the link will be cut off when you first shake hands. **

** There is also a way to file domain names and use domestic servers. ** Users like this don't have to go through the wall when they visit your website, and naturally no stop.

## DNS pollution

** DNS pollution, also known as domain name server cache pollution** (DNS cache Pollup) or ** domain name server snapshot violation** (DNS cache Poisoning).

**DNS contamination** refers to a group of domain name servers that were deliberately or inadvertently manufactured, pointing domain names to incorrect IP addresses.

In general, the website has a trusted domain name server on the Internet, but in order to relieve traffic on the network, the common domain name will temporarily save the data of the external domain name server, which can be provided immediately when another machine requests the deciphering of the domain name. Once the cache of the LAN server with the relevant domain is contaminated, the computer within the domain is directed to the wrong server or server site.

## Understanding

We assume that **A is your computer equipment, B is a DNS server, and C is a network device (routers, switches, gateways, etc.) for a node of A to B links**.

And then we simulated a contaminated DNS request process.

A visits a website, for example.`google.com`, and then A sends a query request to B via UDP, for example.`A google.com`This database goes through several nodes of network equipment such as C on its way to B and continues to go to DNS Server B.

However, during this transfer, C conducts a characterization of this package, (DNS port 53, a specific port surveillance scan, and a characterization and keyword matching analysis of the DNS query explicitly transmitted by UDP, such as “google.com” is a keyword, or “A record”), thus immediately returning an error resolution (e.g. returning)`A 233.233.233.233`I'm not sure.

It is well known that, as a node of the chain,** network device C must have returned faster than the real DNS server B to the user computer A**, while the current DNS resolution mechanism strategy has an important principle, which is ** to be the first **. So the result of the query returned by node network device C was used as the final result of the user computer A, and the user computer A was unable to access it properly because it acquired the wrong IP.`google.com `I don't know.

Verification of contamination
My doub.srshare.usm main domain name, though decontaminated in most areas, did not have two SS station domain names, so I tried to test my SS sub-domain.

```bash
C:\Users\Administrator>nslookup ss.dou-bi.com 8.8.8.8
Server: Google-public-dns-a.google.com
Address: 8.8.8.8
 
Non-authority responses:
Name: ss.dou-bi.com
Addresses: 200:2:9f6a:794b::
8.7.198.45
```

I'm using Google's 8.8.8.8 DNS, but I got an IP record of 8.7.198.45, which is obviously not my IP, and if you look at other DNS-contaminated domain names, you'll find this one.

So obviously, my ss.dou-bi.com domain name was contaminated with DNS.

## Solutions

** Use encryption proxies**, such as Shadowsocks, for remote DNS analysis in encryption proxies, or use VPN on the Internet.

** Changes hosts files**, HOSts files have higher privileges than DNS servers on the operating system, which, when accessing a domain name, detects the HOSTS file before querying the DNS server. DNS contamination and DNS hijacking can be addressed by adding contaminated DNS addresses to hosts.

** Through some software programming **, the return result is directly ignored as a false IP address data package, which directly addresses the problem of DNS contamination.

If you're a Firefox user and only use Firefox, and you're lazy enough to open Firefox's remote DNS resolution. Enter in the address bar:`about:config`Found it.`network.proxy.socks_remote_dns`One to True.

** With DNSCrypt**, this software is directly linked to the use of OpenDNS to build relatively safe TCP and encrypt requests for data so that they are not contaminated.
The most effective way for a DNS contaminated site director is to change a domain name or an IP.

The most effective method for DNS-contaminated site directors is to change domain names or IP**.

## Pollution attacks.

!>In March 2010, when users in the United States and Chile tried to access popular social networking sites, Likehttp://facebook.comandhttp://youtube.comAnd...http://twitter.comAs a result of the blocking of these sites in China, users received the wrong DNS resolution information, which means that the DNS domain name pollution hijacking in the Firewall has affected the international Internet.<br><br>
On 8 April 2010, the wrong route for a small ISP in mainland China, through the secondary transmission of Chinese telecommunications, spread to the entire international Internet, reaching large ISPs in several countries, including AT&T, Level3, Deutsche Telekom, Qwest Communications and Telefonica.<br><br>
From 3:30 p.m. on 9 November 2012, the Firewall's wide-area name for Googlehttp://google.comIt's contaminated a lot.http://google.comThe end domain names are contaminated and error of resolution cannot be properly accessed, including even non-existent domain names, while Google customizes domain names for countries to be contaminated to varying degrees (because Google balances access through the use of CNAME records, most of which are also CNAME records)http://google.com) but other domain names owned by Google are:http://googleusercontent.comThat is not affected. Some netizens speculated that this was perhaps the largest pollution event since the Great Firewall was created, while Google was prevented from connecting because it was 18 years old.<br>
— Excerpt from: known

Of course, the major DNS pollution incidents will certainly not be the only ones, but this is an indication of the power and harm of DNS pollution.

## ip blacklist

Even without DNS contamination, or you get the right IP, will you be able to access these blocked websites?

No, the wall now has an IP blacklist, and sites such as Google are no longer common DNS contamination, as there is always a way to access websites contaminated by DNS (e.g. designating Hosts).

Then why don't you just take all the Google IP black? Even if you get the right Google IP, when you go to visit the IP, the wall finds it in the blacklist, and then you block it, and the browser warns: www.google.com's response time is too long, etc.

Of course Google has a lot of IPs, and many are hidden.

Google IPs are used to access Google sites like Google, XX-NET, Hosts, or other blocked sites, and when a lot of Google IPs are hacked, these three methods will fail.

Now these three methods are still scanning the hidden Google IPs, but Google IPs are not endless, and sooner or later they will be consumed and eaten by the mountains. It's time to die.

When ordinary users scan, what about the staff and supercomputers in the Wall? It's the end of this type of Google IP approach that I see, so there's still no one on my website with a curriculum or an article about these ways.

The above-mentioned statements are understood by individuals only for the purpose of sharing in order to facilitate discussion and communication, and how the facts are explored on their own.


