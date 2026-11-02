# Technical principles for the Meek Bridge

> From[Network](https://www.google.com/search?q=meek%E6%B5%81%E9%87%8F%E6%B7%B7%E6%B7%86&oq=meek%E6%B5%81%E9%87%8F%E6%B7%B7%E6%B7%86&aqs=chrome..69i57.7285j0j9&sourceid=chrome&ie=UTF-8)and modified accordingly

First of all, tort's transmission from the user's own machine to the exit node is imposed, and no one can peek at your real network traffic. Unless there's a serious security breach in the Tortor software itself or the exit node that's involved.[Honey can.](https://baike.baidu.com/item/%E8%9C%9C%E7%BD%90%E6%8A%80%E6%9C%AF/9165942?fromtitle=%E8%9C%9C%E7%BD%90&fromid=5390254)I don't know.

While it is impossible to peep at your real online content, if ISPs and GFW monitor your traffic, you can judge that you're using the tort, and that the type of traffic is not the declassified content; and the confusion of traffic makes the tort flow look like other traffic, so the monitor doesn't see you using the tort.

For reasons of software architecture, the mixed flow function is not in the core software of Tor, but is provided by a plugin. Because of the variety of ways in which the flow is confused, the extension by a plugin does not require frequent changes in the code of the core module.

Prior to Meek, tor open-source communities had several mixed-flow plugins. For example:

<!-- ![](https://ipfs.io/ipfs/QmWbJAtptajEo98PHticEVyGDQewFyEYuq7hv6w9AbE8uh?3.png) -->

![](https://i.postimg.cc/bv8fkjQ6/2018-05-10-164713.png)

Tor clit and roxy clit are on your machine, they need to connect to roxy server if they want to work properly. Although the GFW cannot distinguish between the flows mixed up by roxy, because the global number of roxy servicers is limited, the GFW can add all roxy servicers to the IP blacklist. That's enough to invalidate Roxy.
  
You know, meek clent is also with the clit.

Run together on your own. Here is a map of Meek:

<!-- ![](https://ipfs.io/ipfs/QmRD4PGd2W2PotzuukKbMnbU5gHAijrnXzTxpCbUQT5fGq?1.png) -->

![](https://i.postimg.cc/XJJhkNXg/2018-05-10-171318.png)

As can be seen, the main difference between Meek and roxy is that Meekserver is not directly exposed. In other words, you don't need a direct connection to Meek server, but a direct connection to the cloud computing platform. So, even if GFW knew about Meekserver's IPs, it wouldn't make sense to block them.

Only because the aws and azure cloud computing platform binds companies in the country more, the GFW is afraid to block them easily. That's the key to a Meek plugin that can break the GFW. Please search for more tort principles:[Tor's frequently asked questions](https://www.google.com/search?q=TOR+%E7%9A%84%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E7%AD%94&oq=TOR+%E7%9A%84%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E7%AD%94&aqs=chrome..69i57j69i60.535j0j7&sourceid=chrome&ie=UTF-8)

