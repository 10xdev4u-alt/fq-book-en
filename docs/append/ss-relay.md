# SS Level 2 (pre) proxy settings

> Original language:[SS Level 2 (pre) proxy set-up to accelerate the viewing of BBC iPlayer](https://www.itengli.com/ss-relay/)Author:[Summer](https://www.itengli.com)

There are times when our shadowsocks proxy is slow. For example, we want to use British proxies to watch BBC iPlayer, and if we connect the British nodes directly with shadowsocks, the speed is not ideal under many networks. At this point, if we have other nodes that are very fast, such as Hong Kong nodes (Ariyun), Vienna nodes, etc., we can use these fast-paced proxies as transits to speed up the connectivity of our target proxies. Here, we use the Vienna node as a forward proxy, and the British node as a target proxy to illustrate how the shadowsocks can be used to make the transition. The rationale is as follows:

![](https://i.loli.net/2019/06/06/5cf8d8e90b7b017028.png)

After understanding the principles, the next set is simple.
First, because you need two proxies, you need to open two shadowsocks at the same time, so you need a copy. To avoid conflict, please place two client files in two separate folders.
Second, open a client to connect to the Vienna node. (System proxy mode chooses not to change system (IE) proxy)
Thirdly, open another client at a time when you are reminded that the port is occupied, click to make sure that you connect to the London node. The reason for port occupancy is that shadowsocks defaults that local ports are 1080, and both openings will inevitably conflict. So you need to modify the local port of this client to 1081 (the port can be chosen at will, as long as the same port is not occupied by other programs). Also fill in the secondary (pre) proxy information. Set this part of the parameter to: Right-click small aircraft options. Please refer to the figure below:

![](https://i.loli.net/2019/06/06/5cf8d9178597669922.png)

Fourth, just get this London node client proxy started.
Openhttps://www.bbc.co.uk/iplayerTest:

![](https://i.loli.net/2019/06/06/5cf8d983a308d69299.png)