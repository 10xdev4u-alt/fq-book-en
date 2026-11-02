# A short talk about poison software.

!>As stated in the foreword, the fact that any VPN, proxy-related software is presented to each other is not possible, and is really unnecessary;** I can only try to write ideas and provide readers with a reference, which is the real point. **

As in Perera, other types of software providers (and not just soft-killing) have added VPNs to promote more users, for example, panda, avast, etc., and sell VPNs in the name of xx accelerators, for example, “to improve the network and speed of games”.

It's like that: No, I can't, I can't imagine...

![](https://i.postimg.cc/NjpHZTTV/QQ-20190612093300.jpg)

Fluffy is a smart way of doing it. Advertising it when it comes to the market is in the form of a browser's first page, not a lock on it;[Marketing](/append/guochan-sharuan?id=some-extraterrestrials---can-read-but-not)It's like, if you're interested, you can search for the cause of the fire on the question and answer website, and it's not too much to dwell on; anyway, all the moves are behind the old market, where you can take a place and share a piece of it; there's one place where the big market is already occupied, so why use yours? Instead, it would be better to create a clean flow of “minorists and computer masters” to bring people to the fore, as a good reputation.

## Malicious prohibition of Internet access

Pre-restriction of Internet services is a common method of domestic killing, as well as for businesses or Internet cafes, which they usually use.[Registration form](https://baike.baidu.com/item/%E6%B3%A8%E5%86%8C%E8%A1%A8)In the form of a code into a strategy group, here's a reference link:[Bat Enable Disable Browser Agent - By Modifying Registration Table Values](https://cuityang.iteye.com/blog/2438902)It is also very early to look at official documents and related blogs, and to learn and run a registration form; to put the focus back on how to change it back.

First of all,`windows + r`Enter`gpedit.msc`Yes.`User Configure-> Manage Templates ->Windows Component ->Internet Explorer`Found it.`Stop changes in proxy settings`, the configuration is sufficient.

![](https://i.postimg.cc/fR6Ht6qD/Snipaste-2019-06-12-11-06-32.png)

If it's VPN, it could be disabled many times.`Remote Access Connection Manager`with`DHCP Client`Services

!>Note the description of the fluorescent pen tag section below.

`win + r -> cmd -> services.msc  -> Remote Access Connection Manager`

![](https://i.postimg.cc/XNpDqPNx/Snipaste-2019-06-30-00-22-10.png)

`win + r -> cmd -> services.msc -> DHCP Client`

![](https://i.postimg.cc/C16PJG7j/2019-06-30-002835.png)

As long as the client ' s state is an automatic access to the IP address, when DHCP is activated, the server will assign IP to the client dynamically. If the client is manually configured IP, then it will not go to the server to apply for IP addresses; when it closes DHCP, the client automatically obtains IP addresses without a server response, which naturally cannot be distributed remotely.

That's why VPN can't go online, not to mention Google. Two articles by Annely on DHCP:

* [Literacy: DHCP distribution](http://server.51cto.com/sCollege-147540.htm)
* [Should dhcp open or close dhcp off?](http://www.elecfans.com/baike/wangluo/luyouqi/20180307644000.html)

?>If you don't feel enough, cmd type`ipconfig /flushdns`;`netsh winsock reset`This command also has a strange effect on any software that cannot be opened outside the operating system: -Oxium (o) use!

![](https://i.postimg.cc/sXfNPbS8/Snipaste-2019-06-12-11-28-17.png)

ps: This is all about setting up network-related service configurations, and it's not sure where it's going to be.

![](https://i.postimg.cc/xCT9kxdj/Snipaste-2019-06-12-11-39-47.png)

Fortunately, now that it's already in place, Win10 has a more reliable reduction in the setup! Or open the original system with a compressed file.`setup`We can also find it! Of course, it's better to take out the national product.

