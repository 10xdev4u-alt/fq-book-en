# proxy access testing experiment

Scenario: According to the default installation of proxy software, login account number connection nodes reveal errors in the software and suggest that the software logs are difficult to find and cause actual searching... The first idea is that the software character coding and compatibility issues are not valid for the win7 and win10 tests, even if the UTF-8 is coded, which is still the case; from previous experience, of course, it is also a fog at this time.

![image-20201203111157414.png](https://i.loli.net/2020/12/03/ZotBXik1OMqbNrG.png)

At this point in time, the customer service was contacted and the login network learned that a directory that does not contain special characters and spaces is common:

```cmd
C:\Program Files
C:\Program Files (x86)
```

...O-O " , according to the software network, the installation and log-in of the connection server were successful.

![image-20201203112702148.png](https://i.loli.net/2020/12/03/GuPk7C3WbDyam4M.png)

Although the connection was successful, access to Google was blocked by some anomalies, contacts were made to the vendor's customer service, and they also indicated that they had no problems with the servers, and the blanks on the pages below remain as is the case for the use of ss-links in order to temporarily connect colleagues to the Internet. (This diagram is a process reset)

![Catch_12-03-11-39-37_.jpg](https://i.loli.net/2020/12/03/o81uC4zR6LipQYd.jpg)

But it's okay with the mainframe. What's going on?

![image-20201203114350647.png](https://i.loli.net/2020/12/03/QtNTdDCWUV4BAMO.png)

** Preliminarily understood that ** was a question of access to the Internet account, and that access to the website by the administrator was unlimited; the question arises as to why a student who was experimenting with proxy tools did not have access to Google-type search pages.

It is also possible that the firewall is related to the protocol identification mechanism for proxies, VPN procedures, and that new types of proxies are used by VPN for age reasons, and that the use of new types of agreements makes it impossible to identify the relevant proxy tools.

![2020-12-03_120742.png](https://i.loli.net/2020/12/03/K5FiSZtICswgycp.png)

** By in-depth discovery**->WAN and develop port-wide access to limit agency, VPN over the wall.

![2020-12-03_121845.png](https://i.loli.net/2020/12/03/1PbhsDdxj3nKwQE.png)

The following information is available for the user of the experiment within the port set by the system, which is not included in the above chart.

![089EF.png](https://i.loli.net/2020/12/05/KI65dAZFyeWDaOm.png)

This is why the visit was unusual; in general terms, there are more than 100 students in schools and more than a dozen or so in different professional classes, and different rules of access are needed. Combining Internet access rules into a strategy to apply a set of Internet-based behaviour norms to the strategy greatly facilitates the management of Internet-based behaviour among school students.

** Enabled port doubt on browser page**

Convinced of the open port restrictions on access to the devices, are the different sites open by the browser? So we'll refer.[Know-Does the browser use different port numbers for each page?](https://www.zhihu.com/question/401686199)Two answers concluded:

The web server port at each site will not change and the default setup of 443, 80, plus port numbers, will be additional; the client, our browser, is essentially enabled to open multiple pages to which it has access, with the corresponding process and multiple ports. It is not that the ports of access to the web sites differ.

## Agent Internet Logic Network

People don't understand my students and my organization, so let's take a socio-human look at graduation. Network

![image-20201203142709439.png](https://i.loli.net/2020/12/03/4kM5mL2Dyv9IWhQ.png)


Connectivity between users and proxies also requires mutual trust certification, and without confidence-building certification anyone can establish a connection is in disarray. As a result, the client and the server completed the account login and password validation process. After building a trust relationship, the proxy, like the client's subordinate assistant, takes over the user's will to perform a series of acts.

The proxy thawing process is as follows:

![image-20201203162752377.png](https://i.loli.net/2020/12/03/TjZLyhg1vBxuAVs.png)


### Appendix: Web-based agency rationale

The web-based proxy server, also known as an online proxy or an online proxy, is a web-based proxy program that, without any settings, has the advantage of entering a web site to select a proxy server, which is now the most popular proxy access. Web proxy is a common proxy procedure. Web-based proxies provide clients with high-speed caches of pages and documents on remote websites, allowing them to view remote websites more quickly and safely. Some web-page proxy websites are kept up to date to ensure speed.

When the browser client submits the web site, the proxy begins to search for a cache of pages and websites on a remote site on the current server and to find the target site, the proxy returns the site data to the user ' s browser client; if the current server does not have the remote server cache, the proxy automatically reads the remote website and submits the information from the remote site to the client, while providing the cache to the next browser needs.

The proxy automatically removes the cache according to the time, size and extraction record of the cache. There are two ways to delete, one by deleting the information that has been kept for the longest time and the other by deleting the cache from which the minimum withdrawal is obtained. Both approaches could also be used in combination.

<!-- ![](https://ipfs.io/ipfs/QmdE2aVy9Wc7kHTYtsS7cDSPGM1DnZ1SDfAi2d7YJjiqsK?3.png) -->

![](https://i.postimg.cc/SxPDbLKc/2018-05-10-192753.png)


