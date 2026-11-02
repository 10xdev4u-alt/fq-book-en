# A smooth, reverse, transparent proxy.

> Original language:[Assumptions to proxies, reverse proxies, transparent proxies](https://www.logcg.com/archives/929.html)&emsp; by:[R0UTER](https://www.logcg.com/archives/author/admin)

We're usually on the Internet, we're on the line, we need a dial-up. But the environment in which a network is applied in a business can be much more complex, which is beyond the reach of a general family network. So, the proxy function came into being.

Here's the definition on Wikipedia:

> The proxy (English: Proxy), also known as network proxy, is a special network service that allows one network terminal (usually client) to connect indirectly with another network terminal (usually server) through this service. Network devices such as gateways, routers and so forth have network proxy functions.

> Agent services are generally considered to be conducive to the privacy or security of network terminals and to the prevention of attacks.


Among proxies, there are three types of proxies, namely, positive proxies, reverse proxies and transparent proxies. Next, we'll follow the 818 proxies.

## I'm working on it.

It's the most accessible model of agency that we have, and, generally speaking, many companies (and now a few) have not been able to allow their employees to access the offline, some of which are partial. If you want or need access to the offline resources, you probably want to build a proxy server in your own home. At this point, you find that the proxy is usually in a C/S structure, which, through the client, packs your request for access to a station and sends it to the proxy server, which is responsible for sending your request to the target station. — In this way, the firewall can be bypassed.

In addition, if you want to visit a station quietly, and do not want others to know, you can also use a proxy, using highly anonymous proxy access, so that your trail is completely hidden and others will only find access information from the proxy server and not you, thus fulfilling the purpose of hiding traces.

Because of the differences in demand, it is certain that a number of proxies have emerged for different purposes, such as our most common HTTP proxies, FTP proxies, SSL proxies, etc.

Oh, by the way, there's a lower-level socks proxy, which is a special one, which doesn't care about what kind of agreement you're dealing with, and it takes away your IP package, but our usual shadows, though using sock5 proxies, are not very well supported by UDP.

** On behalf of the proxy, again, based on high anonymity:**

* Highly anonymous proxy

    Such a server would forward your package in its original form, as if it were its own; so for the target station, it would assume that the proxy server was accessing it and not you;

* Regular anonymous proxy

    As opposed to highly anonymous proxies, such servers will be recognized by the target station as proxy servers, so it is likely that they will also track your real IP.

* Transparent Agent

    This cannot really be paralleled with a positive, reverse proxy, because it's one of the proxies; it doesn't encrypt your information, it tells the target station that you were interviewed through the proxy! The advantage, of course, is to allow the cache, and some rules to make your access safer — typically the transparent proxy on the inner-net hardware firewall.
    
    However, what we often say about transparency proxies is a different definition, the former indicating that they are transparent relative to computer access and the latter that they are transparent relative to target sites.

## Reverse Agent

After talking about positive proxies, we have 818 opposite reverse proxies, which are more technical than positive proxies, and are more widely applied, from an early age to your proxy's website, to the internal load balance of the site.

Actually, the most typical application of this technology is at the back end of the service. For example, when a large web server has one, then the back-end server that calculates has N, the real server is on the N-server, which synchronizes content through certain mechanisms, and the front-end server is responsible only for receiving and sending data, then the front-end receives a request and decides to whom to request the reverse proxy according to the spare resources of a back-office server, thus achieving a balanced load.

![](https://i.postimg.cc/rFXTMWDX/imagesppx.png)

> For example, before the poaching of the treasures, it was usually the speed with which the load-equilibrium system was updated, a process that was required for reverse proxies. This proxy process was cut in half, i.e. when one of the N servers above received a request from the front side, it did not return the data to the front end, but rather directly fed back to the user. (This case is a concrete forget, two years ago a friend told me to ask for an axe.

In short, the reverse proxy was destroyed by people, from building a cache server to fishing attacks, to the ladders we often use...

It's characterised by the absolute protection of what's behind the proxy, the access of the user to the proxy server, and what's behind the proxy server will never be known to you, so it becomes dangerous, and it's definitely a black box. There's nothing wrong with, for example, fishing, swipe your access links. So, if you're going to use the ladder of the reverse proxy, you have to look for the services of someone who's absolutely trusted — or you're going to build one just for the next person.

That's all the reverse proxy says, it's usually used in the development environment, and the greatest feature of the inverse is a station with a domain name, such as the cross-border opposites of Google, which are common to us. And the fact that you're talking about treasure-hunting, Kyoto, is an inverse website, but they're using more technology, and they're only turning to their own stations.

## Transparent Agent

As mentioned earlier, transparency proxies should be a hierarchical branch of the right proxy, but why should they be left alone? As stated above, this transparent proxy is not a transparent proxy!

The transparent proxies that we are talking about here, specifically the various proxies that are installed in our home's small router, achieves the effect of normal computer access but actually being represented — that is, that the proxies are transparent vis-à-vis computers.

> In this way, VPN would be included, saying that VPN is not actually an proxy, but simply that they were developed for different purposes, so that your home, firewall, and company, although both the proxy and the VPN used the means to go through the wall, the purpose of the proxy was to leave the company and the VPN was to go from home to the company.

> So the proxy will only transmit some of the corresponding data packages, and the VPN will logically get you "cross" to your destination and get you online there.

However, it is not important for our “transparent proxies” to use transparent proxies on routers, usually socks5 proxies or vpn, which are made available through specially designed routers, so that the data packages you send online are “automated” by routers.

Look at your computer, your phone, your iPad. Is this proxy "transparent"?

