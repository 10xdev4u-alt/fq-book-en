# Conjecture about the current form of blockage of the GFW TCP blockade

> Original language:[Conjecture about the current form of blockage of the GFW TCP blockade](https://doubibackup.com/wkcjzpyd-2.html)Author:[comma](https://dbgjd.com/toyo.html)

This is a really bad year for going over the wall. From the SSR at the beginning of the year to stop and delete items, to the subsequent large-scale blocking of proxy servers, which has now become routine (GFW 2.0), almost daily proxy servers are walled and frequently heard from groups. Hey! Well, get to the point.

## Brief description

Since the beginning of the year, the wall has been blocked in a way that has changed from a total agreed blockade** to a TCP blockade**, the main features of which are:

**Ping IP connections are normal (ICMP agreements), while TCPing IP connections are not responsive over time (TCP agreements). **

!>Brain holes: It's good, because it's now more accurate to judge that the server is walled than the network, the server problem. Zenium<br>You used to find the proxy account unconnected, you went to Ping, then you found Ping out, and then you doubted whether it was a network problem, a server problem, etc., and then you found out half a day later that it was walled. Zenium<br>
And now, you just need Ping IP, TCPing IP, and it's definitely walled out. Zenium

Basically you tested your server IP for this situation, 99% of the chance is against the wall. The remaining 1% is the configuration of the firewall without an open port.

## TCP blockage.

When your overseas server IP is blocked (blocked) by TCP, you can still send data** to an overseas proxy,** (customer-to-client connection service), but the proxy service on an overseas proxy server must have passed through the wall when it returns to you**, and the wall finds the sender IP (proxy server) on the blacklist,** to block, intercept**, so that your ** client will not receive the return data from the service ** (SSR shows: time or space connection)**.

The current proxy software is basically transmitted using TCP protocols, while TCP protocols for data transmission involve handshakes, and handshakes naturally have to come and go, so when **walls block the return of overseas proxy servers to TCP **, ** the proxy client and the service end cannot complete handshakes ** and the proxy is naturally not used.

## I think the GFW's cover theory is probably:

The wall is a means of analysing traffic characteristics and judging the possibility of the link as a proxy by means of various methods and evidence, and when the possibility reaches a different level, it is treated differently. ** Assumptions:**

| First of all, | The wall is now being scanned in real time, and the probability of a link being a proxy is less than 10 per cent, which is ignored. |
|:---|:---|
| Second | When a link is detected that ** is more than 10 per cent **, the relevant information about IP (and the evidence collected, features, etc.) is recorded in the database, and when the link is next found, continue to gather evidence to determine whether the proxy is or is not,** the probability of the proxy being reduced is ignored and the probability of the proxy being increased. ** |
| Finally. | When a link is detected that the probability of ** proxy is more than 50 per cent**, consideration may be given to ** a single port** (proxy port) at a time when if you continue to represent at a different port, then all ports will often be blocked very soon, because the wall, judging by the odds of your IP link being linked to the previous one, believes that your IP link is an proxy, for example 80 per cent, so all TCP ports will be blocked. |

In fact, the reason why the GFW has closed a single port is probably because if you can't eat the proxy or not, if you change the port to continue acting, then the GFW thinks that there's a big chance that it's an proxy, so it can be blocked.

## How?

And the current, non-combust-to-combustion approach opens up brain holes such as:

|ICMP| TCP protocol data are converted to ICMP protocol data transfer, which is useful,** but the deficiencies are clear and are too slow** because the protocol limits mean speed. |
|:-:|:-:|
|UDP| Someone thought that the TCP protocol was blocked, so I could use the UDP, so someone tried to convert the TCP protocol to UDP protocol transfer, and now these software are more mature, often used to speed up or optimize the game, and now it's just right!<br>However, many domestic operators tend to limit the speed of ** UDP QOS**, while to resolve the UDP QOS speed limit, it would be necessary to disguise **UDP as TCP**, but this is another ** dead cycle** and the TCP agreement is blocked. |

The software to convert TCP to UDP is:[KCPTun](https://github.com/xtaci/kcptun)I don't know.[Dragonite](https://github.com/dragonite-network/dragonite-java)V2ray (with KCP agreement).

** And apart from the two deficiencies described above, is there a server that can revive the wall? **

Some, for example: Goflyway's WS+CDN model and **8V2ray's WS+CDN model. ** Both approaches rely on the CDN, and to get the CDN to transit proxies, we need WebSocket technology, and Goflyway V2ray supports WebSocket; but having WebSocket+CDN alone is only a reactivating wall, which does not guarantee the security of the CDN IP, so we need **HTTTP, HTTPS. **

Thus, the Goflyway is used in combination with HTTP disguises, while V2ray is used in combination with HTTP HTTPS. Here HTTP HTTPS is not a fake HTTP HTTPS disguise in SS SSR, but a real website (or a reverse proxy).

This means that your browser opens the domain name (which must be the domain name)** and will see a normal web page**, while proxy client access creates proxy links.

?> `Note:`CDNs, especially CDNs for free packages, tend to be unsatisfied with the speed of domestic links, if you don't care, or when the backup can be built.

## How?

** Some will ask if the IP is permanent?

Of course, the number of IPs is limited, one is missing, and if you don't, ** it's not? ** Besides, think about it, assuming you bought a month-old overseas server to build an proxy, for what reason, and then when it's due, ** will you continue to wait for the wall to be unsealed? Of course not, half-yearly, annual payment. **

Since you're not going to pay to wait for the IP to be unsealed, when the server expires, people don't have to build an proxy when they're buying it, he's probably a regular website or something.

The wall takes into account ** the experience and emotions of a large number of IDCs abroad and the normal users of domestic purchases of overseas servers** and will have to be periodically unsealed.

I didn't know how to unblock the wall when it was banned, but this year, when the TCP blockade was blocked, an experiment and feedback from a large number of netizens made it possible to guess.

For each overseas server that is represented by the wall, the wall sets a time period for its release (which may vary depending on the circumstances)**.

If the overseas server IP does not send data to the country or attempts to establish a proxy connection during the time of the release, the wall will unseal the IP**. Of course, the removal of the IP does not mean that the proxy can continue, and according to experiments and a large number of feedbacks from netizens,** the removed overseas server IP will be used for the proxy ' s use for a short period of time and will often soon be blocked** (not 100 per cent, with the longer the interval, the lower the probability that the theory will again ban).

So, you know what?

** If your overseas server IP is blocked (blocked) by TCP, then please close or delete the proxy software on the server (the wall may also be actively detected on a regular basis from the server that is subject to the wall IP, so the proxy software must be shut down) and then ignore the server for a while, it should be unsealed (not 100 per cent, and the duration of each IP ban may be different). **

** At this point, another question was asked: I've been eaten by the wall's overseas servers for two months. ****

Except for the question of the odds and the time for the unsealing. * In addition, there's another reason why this is possible:** Do you have time to try the proxy account? Or something, TCPing. Have you checked to unseal? **

This unintentional act could lead to the wall being reset or extended by the wall's overseas server IP**. **

!> `That means:`When the wall discovers that you are being sent to the country by the wall's overseas server IP or attempts to establish a proxy connection, it may reset or extend the release time.<br>
`In addition:`The wall may also be actively detected on a regular basis by the server that is subject to the wall IP to see if the proxy software is still in operation, so the proxy software must be shut down.<br><br>
`Note:`After being unsealed by the wall IP, try not to be represented again, or it is still easy to be subjected to the wall IP. If there is still a proxy, then it is recommended to replace the proxy software and not use the one that had previously led to the IP being placed on the wall. After all, it will be possible to test the ban once, and then for another time, not to mention the fact that you, the IP, has a history of being subjected to the wall in a short time, which will increase the chances of being subjected to the wall. If you don't want to change your habits, you'll have at least a proxy port, at least a few more days.

## How to avoid being walled

There is currently no proxy software to ensure that the proxy server IP will not be covered by the wall (other than WS+CDN+), at most reducing the likelihood of being subjected to the wall. The previously popular SSR, which has been suspended for more than six months, has not been updated, which means that it cannot resist the wall's testing, and is no longer recommended. ** Agent software such as V2ray, Brook, Goflyway is recommended. **

** If you're used to SSR and you don't want to change,** **

First of all, the SRs are still available for normal use, although in hot spots (Japan, United States, etc.) the chances of being walled are higher.

Many are default HTTP HTTPS confusion plugins, or client writing a confusion parameter, but this is a false confusion **, merely disguised as HTTP HTTPS traffic, without an entity website, and can be actively detected.

As a result, SSR proxies in hot spots (Japan, United States, etc.) have been proposed either to make a real website with the service-side **reddirect** parameters, or simply to mix the plugin with the original version**.

After all, for the false confusion that can be actively detected, rather than being confused, it is less likely that the wall will be used to reduce the flow characteristics, less likely to be exposed to the wall.

In addition to the choice of proxy software, server areas also have a significant impact on the likelihood of being walled. As a result of experiments and a large number of feedback from netizens, the hotspots ** Japan and the United States** are currently in a disaster-prone area,** are at a much higher risk of being walled than servers in other colder areas**, so whatever the server you currently use, if the server in the area is frequently walled, you should consider using ** servers in other regions** to continue to build the agency.

And, without anyone else, the United States will always be the most frequent walled-up server I've had for six months, either on my own or on my website.

And four of my free-of-charge accounts in Canada are all **SSR accounts (auth sha1 v4 + tls1.2 ticket auth compatible, nothing mixed with parameters or anything), used 24 hours a day, real-time links 30-80 independent IP, real-time speed 1MB/s~3MB/s, so it's not walled. ** And the U.S. Free Account, except the Goflyway is the CDN mode, the rest is in days.

** In short:**

Either a real web site is made with the server **reddirect** parameters, or the original version of the plugin is confused with plain**.
It is recommended to avoid hot spots such as Japan, the United States**.

In addition,** please do not or minimize the use of national websites (or servers) as proxy** as this would increase the likelihood of being walled. If you think about it, if you're A, the proxy's B, the national website you're going to visit is C, then:

**A visited C through B, so A sends data to B, B sends data to C, then C returns data to B, B returns data to A.**

It's actually a very short-duration process,** which seems to the wall to be quite a match for the use of agency. **

Finally, all you need to focus on is:

* **Software such as Goflyway and V2ray can be revived by walls.**
* ** The concept of time for unsealed by wall IP. **
* ** On wall IP server, please turn off proxy software and ignore the server for a period of time, with a few chances of unsealing IP.**
* ** After being unsealed by the wall IP, replace the proxy software if you want to do so, otherwise the wall may be used in a short time. **
* ** The wall may periodically proactively detect the proxy on the server that is subject to the wall IP, so the proxy software must be shut down. **
* ** Japan, with a higher rate of walling of hot area servers such as the United States, suggests avoiding Japan, the United States. **
* ** The above are personal guesses (specifications + experiments), which do not guarantee accuracy for reference purposes only. If found to be inaccurate, contact the relevant GFW department. **

This article is based on a comma of data from a strategic partner, the GFW.

